document.getElementById("search-button").addEventListener("click", searchEstudents, false);

// document.getElementById("openModal").addEventListener("click", openModal, false);


const urlParams = new URLSearchParams(window.location.search);
const urlFinal = "https://aquicreamos.com/services-feria"

localStorage.removeItem('ms');
localStorage.removeItem('user');
localStorage.removeItem('unique');
async function searchEstudents(e) {
  e.preventDefault();
  let inSearch = document.getElementById('input-search').value;
  let valInSearch = validator.isNumeric(inSearch, { no_symbols: true });

  

  if (valInSearch) {
    const response = await fetch(`${urlFinal}/api/search/${inSearch}`);
    const students = await response.json();
    if (students.type == 'error') {
      var myModal = new bootstrap.Modal(
        document.getElementById("exampleModal")
      );
      myModal.show();
      document.getElementById("openModal").addEventListener("click", openModal);
    } else if (students.type == 'ok') {
      localStorage.setItem('user', JSON.stringify(students.data));
      window.location.href = 'https://aquicreamos.com/feria-encadenamiento-2023/selects';
    }
  }

}






function openModal() {
  var myModal = new bootstrap.Modal(
    document.getElementById("exampleModal")
  );
  myModal.show();
}