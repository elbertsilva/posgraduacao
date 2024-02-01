//Variavel global que busca  elemento do "visor" - input readyonly do HTML
let inputResultado = document.getElementById("inputCalculadora");

//Objeto que registra os valores e funções  do calculo
let calculo = {
  valorSalvo: null,
  funcaoParaCalcular: null,
};

//Ao carregar a página, atribui eventos aos botões por meio dos  seus indentificadores (ids)
window.addEventListener("load", function () {
  atribuirEventos();
});

function atribuirEventos() {
  //Atribui eventos aos números
  document.getElementById("btnValor0").addEventListener("click", inserirNumero);
  document.getElementById("btnValor1").addEventListener("click", inserirNumero);
  document.getElementById("btnValor2").addEventListener("click", inserirNumero);
  document.getElementById("btnValor3").addEventListener("click", inserirNumero);
  document.getElementById("btnValor4").addEventListener("click", inserirNumero);
  document.getElementById("btnValor5").addEventListener("click", inserirNumero);
  document.getElementById("btnValor6").addEventListener("click", inserirNumero);
  document.getElementById("btnValor7").addEventListener("click", inserirNumero);
  document.getElementById("btnValor8").addEventListener("click", inserirNumero);
  document.getElementById("btnValor9").addEventListener("click", inserirNumero);
}
//Atribui eventos aos botões de operadores, ponto e resultado
document.getElementById("btnPonto").addEventListener("click", inserirNumero);
document.getElementById("btnSoma").addEventListener("click", clicarOperador);
document.getElementById("btnDividir").addEventListener("click", clicarOperador);
document
  .getElementById("btnMultiplicar")
  .addEventListener("click", clicarOperador);
document
  .getElementById("btnSubtrair")
  .addEventListener("click", clicarOperador);
document.getElementById("btnSoma").addEventListener("click", clicarOperador);
document.getElementById("btnDividir").addEventListener("click", clicarOperador);
document.getElementById("btnLimpar").addEventListener("click", limparDados);
document
  .getElementById("btnResultado")
  .addEventListener("click", clicarResultado);
//adiciona o numero no visor
function inserirNumero() {
  //Se o valor não for numero, substitui pelo valor do conteudo do botão
  if (isNaN(inputResultado.value)) {
    inputResultado.value = event.target.textContent;
    //senao adiciona o numero aos digitos no visor
  } else {
    inputResultado.value += event.target.textContent;
  }
}

//operacao de soma
function somar(valor1, valor2) {
  return valor1 + valor2;
}
//operacao de subtracao
function subtrair(valor1, valor2) {
  return valor1 - valor2;
}
//operacao de multiplicacao
function multiplicar(valor1, valor2) {
  return valor1 * valor2;
}
//operacao de divisao
function dividir(valor1, valor2) {
  if (valor2 === 0) {
    return "Erro, não é possível dividir um número por zero!";
  } else {
    return valor1 / valor2;
  }
}
//limpar o visor e os dados do calculo
function limparDados() {
  inputResultado.value = "";
  calculo.valorSalvo = null;
  calculo.funcaoParaCalcular = null;
}
//insere o ponto para casasdecimais
function inserirPonto() {
  if (inputResultado.value === "" || isNaN(inputResultado.value)) {
    inputResultado.value = "0.";
  } else if (!inputResultado.value.includes(".")) {
    inputResultado.value = inputResultado.value + ".";
  }
}
//atribui a funcao de acordo com o tipo de operador clicado
function atribuirOperador(operador) {
  if (operador === "+") {
    calculo.funcaoParaCalcular = somar;
  } else if (operador === "-") {
    calculo.funcaoParaCalcular = subtrair;
  } else if (operador === "*") {
    calculo.funcaoParaCalcular = multiplicar;
  } else if (operador === "/") {
    calculo.funcaoParaCalcular = dividir;
  }
}
//Atualiza valores de calculo
function clicarOperador() {
  if (isNaN(inputResultado.value)) {
    if (calculo.valorSalvo == null) {
      calculo.valorSalvo = Number(inputResultado.value);
    } else if (calculo.funcaoParaCalcular != null) {
      calculo.valorSalvo = calculo.funcaoParaCalcular(
        calculo.valorSalvo,
        Number(inputResultado.value)
      );
    }
  }
  let operador = event.target.textContent;
  atribuirOperacao(operador);
  inputResultado.value = operador;
}
//Exibe resultado no visor
function clicarResultado() {
  if (isNaN(inputResultado.value) && calculo.funcaoParaCalcular != null) {
    let resultado = calculo.funcaoParaCalcular(
      calculo.valorSalvo,
      Number(inputResultado.value)
    );
    inputResultado.value = resultado;
    calculo.valorSalvo = resultado;
    calculo.funcaoParaCalcular = null;
  }
}
