
let item = document.getElementsByClassName('hidden').length > 0;
let msStorage = localStorage.getItem('ms');

let msArray = ['asistencia-true', 'registro-true', 'registro-error', 'update-true', 'update-error'];

setTimeout(() => {
    if (Boolean(item)) {
        localStorage.removeItem('ms')
        document.getElementById('to-alert').classList.add('hidden');
    }
}, 8000);

function acInItem(msStorage, paramName) {
    if (Boolean(item)) {
        let urlParams = new URLSearchParams(window.location.search);
        listToAlertMs(msStorage)
        urlParams.delete(paramName);
        localStorage.removeItem('ms')
        document.getElementById('to-alert').classList.remove('hidden');
    }
}



// Aqui se añadiría en geral cualquier tipo de item 
if (msStorage != null) {
    acInItem(msStorage, 'ms');
}

document.getElementById('btn-alert').addEventListener('click', (e) => {
    let item = document.getElementsByClassName('hidden').length > 0;
    e.preventDefault();
    if (item) {
        document.getElementById('to-alert').classList.remove('hidden');
    } else {
        window.location.href = 'https://aquicreamos.com/feria-encadenamiento-2023/';
    }
});

function listToAlertMs(msStorage) {
    if (msStorage == msArray[0]) {
        document.getElementById('to-alert-text').innerHTML = 'Se ha registrado su asistencia';
        document.getElementById('to-alert-color').classList.add('alert-success');
    }

    if (msStorage == msArray[1]) {
        document.getElementById('to-alert-text').innerHTML = 'Se ha registrado correctamente';
        document.getElementById('to-alert-color').classList.add('alert-success');
    }

    if (msStorage == msArray[2]) {
        document.getElementById('to-alert-text').innerHTML = 'Se ha presentado un error en el registro';
        document.getElementById('to-alert-color').classList.add('alert-danger');
    }

    if (msStorage == msArray[3]) {
        document.getElementById('to-alert-text').innerHTML = 'Datos actualizados correctamente';
        document.getElementById('to-alert-color').classList.add('alert-success');
    }

    if (msStorage == msArray[4]) {
        document.getElementById('to-alert-text').innerHTML = 'Se ha presentado un error en la actualización';
        document.getElementById('to-alert-color').classList.add('alert-danger');
    }
}

