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