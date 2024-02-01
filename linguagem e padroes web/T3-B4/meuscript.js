//var objuser = document.getElementsByName("name");
//var objuser = document.getElementsByName("usuario");

function validaLogin() {
  alert("oi");
  var user = "admin";
  var pass = "1234";
  if (
    user === document.forms["validalogin"]["usuario"].value &&
    pass === document.forms["validalogin"]["senha"].value
  ) {
    alert("Login Válido!");
    return true;
  } else {
    alert("Login inválido");
    return false;
  }
}
