function myFunction() {
  var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

document.getElementById("msg-cedula").style.display = "none";
document.getElementById("msg-cedula2").style.display = "none";
document.getElementById("msg-nombre").style.display = "none";
document.getElementById("msg-nombre2").style.display = "none";
document.getElementById("msg-email").style.display = "none";
document.getElementById("msg-email2").style.display = "none";
document.getElementById("msg-pass").style.display = "none";

function validar() {

var cedula = document.getElementById("cedula").value;
var nombre = document.getElementById("nombre").value;
var email = document.getElementById("email").value;
var pass_coor = document.getElementById("pass_coor").value;
var expresion = /^[a-z][\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;
var nombrec = /[A-Z]{1}[a-z]{1,10}/;


if (cedula.length == 0) {
document.getElementById("msg-cedula").style.display = "block";
return false;
}else {
  document.getElementById("msg-cedula").style.display = "none";
  document.getElementById("msg-cedula2").style.display = "none";
}


if (isNaN(cedula)) {
document.getElementById("msg-cedula2").style.display = "block";
return false;
}else {
  document.getElementById("msg-cedula").style.display = "none";
  document.getElementById("msg-cedula2").style.display = "none";
}

if (nombre.length == 0) {
document.getElementById("msg-nombre").style.display = "block";
return false;
}else {
  document.getElementById("msg-nombre").style.display = "none";
  document.getElementById("msg-nombre2").style.display = "none";
}

if (!nombrec.test(nombre)){
document.getElementById("msg-nombre2").style.display = "block";
  return false;
}else {
  document.getElementById("msg-nombre").style.display = "none";
  document.getElementById("msg-nombre2").style.display = "none";
}

if (email.length == 0) {
document.getElementById("msg-email").style.display = "block";
return false;
}else {
  document.getElementById("msg-email").style.display = "none";
  document.getElementById("msg-email2").style.display = "none";
}

if (!expresion.test(email)){
document.getElementById("msg-email2").style.display = "block";
  return false;
}else {
  document.getElementById("msg-email").style.display = "none";
  document.getElementById("msg-email2").style.display = "none";
}

if (pass_coor.length == 0) {
document.getElementById("msg-pass").style.display = "block";
return false;
}else {
  document.getElementById("msg-pass").style.display = "none";
}

return true;
}
