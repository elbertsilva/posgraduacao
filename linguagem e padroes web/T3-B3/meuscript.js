document.getElementById("paragrafo").innerHTML = "Hello world! estou testando";

var obj1 = document.getElementById("paragrafo2");
var n1 = 10;

//minhaFuncao poderia usar funcaoSoma, para ficar mais facil para entender
function minhaFuncao(num1) {
  var x = num1 + 3;
  return x;
}

//obj1.innerHTML = minhaFuncao(n1);

function funcaoAddTitulo() {
  console.log("antes do IF da funcao Titulo");
  if (obj1.innerHTML === "<h1> Titulo criado pelo JavaScript</h1>") {
    return (obj1.innerHTML = "<h1> Apaguei o titulo</h1>");
  } else {
    obj1.innerHTML = "<h1> Titulo criado pelo JavaScript</h1>";
  }
}
