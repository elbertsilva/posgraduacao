var express = require("express");
var app = express();
//vamos criar um servidor para receber

app.get("/", function (req, res) {
  res.send("ola mundo");
});

var server = app.listen(8081, function () {
  var host = server.address().address;
  var porta = server.address().port;
  console.log("exemplo de aplicativo no endereco: %s %s", host, porta);
});
