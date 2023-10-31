
const status = ['INITIAL', 'CONNECTED', 'SELECTION', 'REGISTERED', 'ALL_DOCUMENT'];

let objUser = JSON.parse(localStorage.getItem('user'));

// Elimina el titulo si hay un registro de 0
if (objUser == null) {
    document.getElementById("hiddenTitle").classList.add("hidden");
} else {
    // Oculta inputs y asigna un nombre si existe un usuario ya registrado
    if (Object.keys(objUser).length > 0) {
        document.getElementById("hidden1").remove();
        document.getElementById("hidden2").remove();
        document.getElementById("hidden3").remove();
        document.getElementById("all-name").innerText = `${objUser.allname}`;

        if (objUser['register'] == status[3]) {
            document.getElementById("email").value = objUser['email'];
            document.getElementById("phone").value = objUser['phone'];
            document.getElementById("phone_attendant").value = objUser['phone_attendant'];
            debugger;

            if (objUser['personal_data'] != null) {
                document.getElementById("accept1").checked = true;
            }
        }
    }
}

// esta funcion actualiza o inserta un usuario
document.getElementById("loginForm").addEventListener("submit", async (e) => {
    e.preventDefault();
    let allname = null;
    let omeDocument = null;
    let typedocument = null;
    let ie = null;

    if (objUser['register'] != status[3]) {
        allname = document.getElementById("allname").value;
        omeDocument = document.getElementById("omeDocument").value;
        typedocument = (document.getElementById("typedocument")).value;
        ie = document.getElementById("ie").value;
    }
    let phone = document.getElementById("phone").value;
    let phone_attendant = document.getElementById("phone_attendant").value;
    let email = document.getElementById("email").value;
    let accept = document.querySelector(".checkbox").checked;

    if (objUser != null) {
        // Si User existe no es necesario modificar datos
        allname = objUser['allname'];
        omeDocument = objUser['document'];
        typedocument = objUser['typedocument'];
        ie = objUser['ie'];
    }

    let final = {
        allname,
        phone,
        phone_attendant,
        email,
        omeDocument,
        typedocument,
        ie,
    };

    let listValidations = [];
    Object.keys(final).forEach((el, index) => {
        Object.values(final).forEach((val, idx) => {
            if (index == idx) {
                if (validations(val, el) != null) {
                    document.getElementById(`error-${el}`).innerText = validations(val, el)[0];
                    if (validations(val, el)[1]) {
                        listValidations.push(true);
                    }
                }
            }
        });
    });

    if (checkedVal(accept) == false) {
        listValidations.push(true);
    }
    
    let sendObjFinal = {};
    let sendFinal = 'none';
    if (objUser != null) {
        if (listValidations.length == 0) {
            sendFinal = 'update';
            if (objUser.register == status[3] &&
                objUser.document != null) {
                sendObjFinal = {
                    allname,
                    phone,
                    phone_attendant,
                    email,
                    document: omeDocument,
                    typedocument,
                    ie,
                    accept,
                    created_at: String(finalDate),
                    update_at: String(finalDate),
                    register: status[1]
                }


                if (Object.keys(objUser).length == 0) {
                    sendObjFinal.allname = final.allname;
                    sendObjFinal.document = final.omeDocument;
                    sendObjFinal.typedocument = final.typedocument;
                    sendObjFinal.register = status[1];


                }
                if (Object.keys(objUser).length > 0) {
                    sendObjFinal.actual_status = status[1];
                    sendObjFinal.register = true;
                }

            }
        }
    } else {
        console.log(listValidations, '----> insert');
        if (listValidations.length == 0) {
            sendObjFinal = {
                allname,
                phone,
                phone_attendant,
                email,
                document: omeDocument,
                typedocument,
                ie,
                accept,
                created_at: String(finalDate),
                update_at: String(finalDate),
                register: true
            }
            sendObjFinal.actual_status = status[3];
            sendFinal = 'insert';
        }
    }

    // se envial al fetch / axios
    if (sendObjFinal != {}) {
        console.log(sendObjFinal, sendFinal, 'final send');
        if (sendFinal == 'insert') {
            insertAxios(sendObjFinal);
        }

        if (sendFinal == 'update') {
            updatetAxios(sendObjFinal, objUser['uuid']);
        }
    }
});


async function insertAxios(sendObjFinal) {
    await postQuery("/students", sendObjFinal).then(function (response) {
        if (response.data.type == 'ok') {
            console.log(response.data);
            localStorage.setItem('ms', 'registro-true');
            localStorage.removeItem('user');
            window.location.href = '/';
        }
    }).catch(function (error) {
        localStorage.setItem('ms', 'registro-error');
        window.location.href = '/insert';
    });
}

async function updatetAxios(sendObjFinal, idStudent) {
    await putQuery(`/students/${idStudent}/edit`, sendObjFinal).then(function (response) {
        if (response.data.type == 'ok') {
            localStorage.setItem('user', JSON.stringify(response.data.data));
            localStorage.setItem('ms', 'registro-true');
            window.location.href = '/selects';
        }
    }).catch(function (error) {
        console.log(error);
    });
}






function validations(data, el) {
    if (data == null) {
        return ['Este campo es requerido', true];
    }

    if (data == '') {
        return ['Este campo es requerido', true];
    }

    if (el == 'email') {
        if (!validator.isEmail(data)) {
            return ['El campo no se reconoce correctamente como un Email', true]
        }
    }

    const vals = ['allname'];
    if (vals.includes(el)) {
        if (!validator.isAlpha(data, 'es-ES', { 'ignore': " " })) {
            return ['El campo no se reconoce correctamente como un Texto A-Z', true]
        }
    }

    const nums = ['phone', 'phone_attendant'];
    if (nums.includes(el)) {
        if (!validator.isInt(data, { min: 3000000000, max: 9999999999 })) {
            return ['El campo no se reconoce correctamente como un Número Celular', true]
        }
    }
    return null;

}

function checkedVal(accept) {
    document.getElementById(`error-accept`).innerText = '';
    if (accept == false) {
        document.getElementById(`error-accept`).innerText = 'Este campo debe ser Aceptado';
        return false;
    } else {
        return null;
    }
}


async function insertSupabase(sendObjFinal) {
    let { students, error } = await supabase.from('students')
        .insert(sendObjFinal)
        .select()

    if (await error != null) {
        return await error;
    }

    return await students
}

async function updateSupabase() {
    let { students, error } = await supabase.from('students')
        .update(sendObjFinal)
        .eq('document', final.omeDocument)
        .select()

    if (await error != null) {
        return await error;
    }

    return await students
}