$(function () {
    $("#tabs").tabs();
});

$(function () {
    $(".accordion").accordion();
});

function SoloNumeros(evt) {

    var codigo = (evt.which) ? evt.which : evt.keyCode;
    if (codigo >= 48 && codigo <= 57) {
        return true;
    } else {
        return false;
    }
}

function SoloLetras(evt) {

    var codigo = (evt.which) ? evt.which : evt.keyCode;
    if ((codigo >= 65 && codigo <= 90) || (codigo >= 97 && codigo <= 122) || (codigo = 32) || (codigo = 8)) {
        return true;
    } else {
        return false;
    }
}

function Fecha() {
    date = new Date();
    year = date.getFullYear();
    month = date.getMonth() + 1;
    day = date.getDate();
    document.getElementById("#current_date").innerHTML = "Fecha del sistema: " + day + "/" + month + "/" + year;
}

function showTime() {
    myDate = new Date();
    hours = myDate.getHours();
    minutes = myDate.getMinutes();
    seconds = myDate.getSeconds();
    if (hours < 10) hours = 0 + hours;
    if (minutes < 10) minutes = "0" + minutes;
    if (seconds < 10) seconds = "0" + seconds;
    $("#HoraActual").text(hours + ":" + minutes + ":" + seconds);
    setTimeout("showTime()", 1000);

}