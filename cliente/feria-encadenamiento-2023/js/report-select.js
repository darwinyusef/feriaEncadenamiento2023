let objUser = JSON.parse(localStorage.getItem('user'));
getReportAxios(objUser.uuid);
moment.locale('es');

async function getReportAxios(selectId) {
  await getQuery(`/reporte/${selectId}`).then(function (response) {

    if (response.data.type == 'ok') {
      response.data.data.map((res, index) => {
        if (res != null) {
          let final = res.programs_a;

          let letter = index == 0 ? 'a' : 'b'
          if (letter == 'b') {
            final = res.programs_b;
          }

          let marke = res.fist_option == final ? true : false;

          document.getElementById('sena-report').insertAdjacentHTML("afterbegin", `
             <div class="col" style="${marke ? 'order: 0;': 'order: 1;'}">
            <div class="program-card one">
              <div class="top ${marke ? 'marke' : ''}" style="background: url('${res.image}'); background-repeat: no-repeat; background-size: 100% 100%;">
                <div class="champion ${marke ? '' : 'hidden'} animate__fadeIn animate__animated animate__infinite">
                  <img src="https://aquicreamos.com/feria-encadenamiento-2023/champion.svg" />
                </div>
                <div class="wrapper">
                  <div class="mynav">
                    <a href="https://aquicreamos.com/feria-encadenamiento-2023/"
                      ><span class="lnr lnr-chevron-left"></span></a
                    >
                    <a href="https://aquicreamos.com/feria-encadenamiento-2023/selects">
                      <aside>Volver a la selección</aside>
                      <span class="lnr lnr-cog"></span>
                    </a>
                  </div>
                  <h1 class="heading">
                    ${res.name}
                  </h1>
                  <h3 class="location">Se ha inscrito</h3>
                </div>
              </div>
              <div class="bottom">
                <div class="wrapper">
                  <ul class="forecast">
                    <li><span>Fecha Registro:</span></li>
                    <li>
                      <span class="lnr lnr-calendar-full condition">
                        <span class="temp">${moment(res.created_at).format("DD-MM-YYYY")}</span>
                      </span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          `);
        }
      });

      localStorage.setItem('ms', 'registro-true');
      // localStorage.removeItem('user');
      // window.location.href = 'https://aquicreamos.com/feria-encadenamiento-2023/report-select';
    }
  }).catch(function (error) {
    localStorage.setItem('ms', 'registro-error');
    //  window.location.href = 'https://aquicreamos.com/feria-encadenamiento-2023/selects';
  });
}