//Fonction apparution
window.onload = ini;
//Initialisation de la lampe
function ini() {
    document.getElementById("eteindre").style.display = "none";
    document.getElementById("allumer").style.display = "none";
}

//Fonction qui éteint la lampe
function off() {
    document.getElementById("allumer").style.display = "block";
    document.getElementById("eteindre").style.display = "none";
}

//Fonction qui allume la lampe
function on() {
    document.getElementById("allumer").style.display = "none";
    document.getElementById("eteindre").style.display = "block";
}