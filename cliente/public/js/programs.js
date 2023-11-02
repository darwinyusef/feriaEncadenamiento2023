
let objUser = JSON.parse(localStorage.getItem('user'));

getQuery('/programs').then((result) => {
  console.log(result);
  result.data.map((r) => {
    document.getElementById('card_sena').insertAdjacentHTML("afterbegin", `
        <div class="sena-card col-4">
            <div class="card mb-3">
              <div class="row g-0">
                <div class="col-md-4">
                  <img
                    src="${r.image}"
                    class="img-fluid rounded-start"
                    alt="..."
                  />
                </div>
                <div class="col-md-8">
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

  });
});


document.getElementById("btn-send-programs").addEventListener("click", sendPrograms);

function sendPrograms(e) {
  e.preventDefault();

  let totalCheckedItems = document.querySelectorAll('input[type="checkbox"]:checked').length;
  let listCheckedCheckbox = document.querySelectorAll('input[type="checkbox"]:checked');


  let totalCheckboxSelected = [];
  if (totalCheckedItems > 2) {
    for (let i = 0; i < listCheckedCheckbox.length; i++) {
      document.getElementById(listCheckedCheckbox[i].getAttribute('id')).checked = false;
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

    let sendObjFinal = {
      "programs_a": totalCheckboxSelected[0],
      "programs_b": totalCheckboxSelected[1]
    }

    insertAxios(objUser.uuid, sendObjFinal);
  }
}

async function insertAxios(selectId, sendObjFinal) {
  await postQuery(`/selection/${selectId}`, sendObjFinal).then(function (response) {
    if (response.data.type == 'ok') {
      console.log(response.data);
      localStorage.setItem('ms', 'registro-true');
      // localStorage.removeItem('user');
      window.location.href = '/report-select';
    }
  }).catch(function (error) {
    localStorage.setItem('ms', 'registro-error');
    window.location.href = '/selects';
  });
}

