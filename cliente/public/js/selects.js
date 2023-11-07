const statusArraySelects = ['INITIAL', 'REGISTERED', 'CONNECTED', 'SELECTION', 'ALL_DOCUMENT'];
let userData = JSON.parse(localStorage.getItem('user'));
// document.getElementById("card-button-registro").addEventListener("click", RegistroModal);



if (Object.keys(userData).length > 0) {
    document.getElementById("allname-selects").innerHTML = userData.allname;
    stat = statusArraySelects.indexOf(userData.register);
    console.log(stat);
    if (stat == 0) {
        document.getElementById("card-button-asistencia").addEventListener("click", AsistenciaModal);
        document.getElementById("card-asistencia").classList.remove("disabled-card");
        document.getElementById("card-button-asistencia").disabled = false;
    } else if (stat == 1 || stat <= 3) {
        document.getElementById("card-button-seleccion").addEventListener("click", SeleccionModal);
        document.getElementById("card-seleccion").classList.remove("disabled-card");
        document.getElementById("card-button-seleccion").disabled = false;
        document.getElementById("card-p-asistencia").innerHTML = 'Registro de Asistencia Realizado';
    }

    // } else if (stat == 1) {
    //     document.getElementById("card-button-registro").addEventListener("click", RegistroModal);
    //     document.getElementById("card-registro").classList.remove("disabled-card");
    //     document.getElementById("card-button-registro").disabled = false;
    //     document.getElementById("card-p-asistencia").innerHTML = 'Registro de Asistencia Realizado';
    // } 

}


function AsistenciaModal(e) {
    e.preventDefault();
    let myModal = new bootstrap.Modal(document.getElementById("AsistenciaModal"), {
        backdrop: false,
        keyboard: false
    });
    myModal.show();
}


function RegistroModal(e) {
    e.preventDefault();
    window.location.href = '/insert';
}

function SeleccionModal(e) {
    e.preventDefault();
    window.location.href = '/programs';
}