document.getElementById("paragrafo").innerHTML = "Hello world! estou testando";

var obj1 = document.getElementById("paragrafo2");
var n1 = 10;

//minhaFuncao poderia usar funcaoSoma, para ficar mais facil para entender
function minhaFuncao(num1) {
  var x = num1 + 3;
  return x;
}

obj1.innerHTML = minhaFuncao(n1);
