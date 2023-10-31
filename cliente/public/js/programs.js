
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

    document.getElementById('card_sena').insertAdjacentHTML("beforebegin", `
    <style>
    .card-body {
        height: 320px;
        max-height: 320px;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        padding-bottom: 0px;
      }

    .form-check-input,
    .form-check-input:checked {
      background-color: #5cb65c;
      border: 0px;
    }
  
    .form-check-input {
      height: 40px !important;
      width: 75px !important;
    }
    .form-check-input:checked,
    .form-check-input,
    .form-check-input:focus {
      border-color: transparent !important;
      outline: 0;
      box-shadow: none !important;
    }
    </style>
    `);
});


document.getElementById("btn-send-programs").addEventListener("click", sendPrograms);

function sendPrograms(e) {
    e.preventDefault();

    let totalCheckbox = document.querySelectorAll('.sena-card').length;
    let totalCheckedItems = document.querySelectorAll('input[type="checkbox"]:checked').length;

    let totalCheckboxSelected = [];
    if (totalCheckedItems > 2) {
        for (let i = 0; i < totalCheckbox; i++) {
            document.getElementById(`program-${i + 1}`).checked = false;
        }
    } else {
        for (let i = 0; i < totalCheckbox; i++) {
            let state = document.getElementById(`program-${i + 1}`).checked;
            if (state == true) {
                totalCheckboxSelected.push(i + 1);
            }
        }
    }

    console.log(totalCheckboxSelected);
}

