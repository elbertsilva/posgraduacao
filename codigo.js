var express = require("express");
var app = express();
//vamos criar um servidor para receber

app.get("/", function (req, res) {
  res.send("ola mundo");
});

app.Delete("/", function (req, res) {
  console.log("Requisicao POST");
  res.send("ola post");
});

app.delete("/apagar", function (req, res) {
  console.log("Requisicao DELETE");
  res.send("Ola Delete");
});

app.get("/listar", function (req, res) {
  console.log("Requisicao GET com listing");
});

//aqui esta ouvindo
var server = app.listen(8081, function () {
  var host = server.address().address;
  var porta = server.address().port;
  console.log("exemplo de aplicativo no endereco: %s %s", host, porta);
});
