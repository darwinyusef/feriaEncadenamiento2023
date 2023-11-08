
let objUser = JSON.parse(localStorage.getItem('user'));

getQuery('/programs').then((result) => {
  result.data.map((r) => {



    document.getElementById('card_sena').insertAdjacentHTML("afterbegin", `
        <div class="sena-card col-lg-4 col-md-6">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="tarjet-card-img col-lg-4 col-md-12">
                  <div class="total-image" style="background: url('${r.image}')"></div>                  
                </div>
                <div class="col-lg-8 col-md-12">
                  <div class="card-body">
                    <div class="card-content">
                      <h5 class="card-title">
                        ${r.name}
                      </h5>
                      <p class="card-text">
                        ${r.description}.
                      </p>
                    </div>
                    <div class="content-finaly">
                      <span id="select-${r.id}"></span>
                      <div class="form-check form-switch">
                        <input
                          class="form-check-input"
                          type="checkbox"
                          role="switch"
                          id="program-${r.id}"
                        />
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        `);
    document.getElementById(`program-${r.id}`).addEventListener("click", selectFirstPrograms);
  });
});


document.getElementById("btn-send-programs").addEventListener("click", sendPrograms);
let actualSelection = 0;
function sendPrograms(e) {
  e.preventDefault();

  let totalCheckedItems = document.querySelectorAll('input[type="checkbox"]:checked').length;
  let listCheckedCheckbox = document.querySelectorAll('input[type="checkbox"]:checked');


  let totalCheckboxSelected = [];
  if (totalCheckedItems > 2) {
    for (let i = 0; i < listCheckedCheckbox.length; i++) {
      clearPrograms();
    }
  } else {
    for (let i = 0; i < listCheckedCheckbox.length; i++) {
      let state = document.getElementById(listCheckedCheckbox[i].getAttribute('id')).checked;
      if (state == true) {
        totalCheckboxSelected.push(Number(listCheckedCheckbox[i].getAttribute('id').replace('program-', '')));
      }
    }
  }

  if (totalCheckboxSelected.length > 0) {

    if (localStorage.getItem('unique') != null) {
      let sendObjFinal = {
        "programs_a": totalCheckboxSelected[0],
        "programs_b": totalCheckboxSelected[1],
        "fist_option": Number(localStorage.getItem('unique'))
      }
      insertAxios(objUser.uuid, sendObjFinal);
    } else {
      alert('Error en la selección del unique')
    }
  }
}

async function insertAxios(selectId, sendObjFinal) {
  await postQuery(`/selection/${selectId}`, sendObjFinal).then(function (response) {
    if (response.data.type == 'ok') {
      localStorage.setItem('ms', 'registro-true');
      // localStorage.removeItem('user');
      window.location.href = 'https://aquicreamos.com/feria-encadenamiento-2023/report-select';
    }
  }).catch(function (error) {
    localStorage.setItem('ms', 'registro-error');
    window.location.href = 'https://aquicreamos.com/feria-encadenamiento-2023/selects';
  });
}


function selectFirstPrograms(e) {
  let listCheckedCheckbox = document.querySelectorAll('input[type="checkbox"]:checked');

  if (localStorage.getItem('unique') == null) {
    item = listCheckedCheckbox[0].getAttribute('id');
    selectItem = item.replace('program-', 'select-');
    finalSelection = parseInt(item.replace('program-', ''));
    localStorage.setItem('unique', finalSelection);
    document.getElementById(selectItem).innerHTML = '(*)';
  }
}


document.getElementById("btn-clean-programs").addEventListener("click", clearPrograms);

function clearPrograms(e) {
  if (e != undefined) {
    e.preventDefault();
  }
  let listCheckedCheckbox = document.querySelectorAll('input[type="checkbox"]:checked');
  for (let i = 0; i < listCheckedCheckbox.length; i++) {
    document.getElementById(listCheckedCheckbox[i].getAttribute('id')).checked = false;
    document.getElementById(`select-${localStorage.getItem('unique')}`).innerHTML = '';
    localStorage.removeItem('unique');
  }

}