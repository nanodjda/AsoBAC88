<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_MatAhorro.aspx.cs" Inherits="UI.Pantallas.Modulo_II.wfrm_MatAhorro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../css/Matricula%20Ahorro/MainMatAhorro.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
<%--**********************************************************Encabezado**********************************************************************--%>
            <header>
                <div id="encab">
                    <ul>
                        <li id="logo">
                            <asp:ImageButton ID="ImageButton1" runat="server" Width="200" ImageUrl="~/Img/20220220_132111.png"/>
                        </li>
                        <li id="titulo">
                                <h1>
                                Por favor ingrese la información solicitada
                                </h1>
                            <p>Hora del sistema</p>
                            <div id="current_date">
                                <script>
                                    var meses = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
                                    var diasSemana = new Array("Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado");
                                    var f = new Date();
                                    document.write(diasSemana[f.getDay()] + ", " + f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
                                </script>
                            </div>
                        </li>
                            <li id="salir">
                                <a href="../Principal/wfrm_Login.aspx">Salir</a>
                            </li>
                    </ul>
                </div>
            </header>
<%--***********************************************************Principal***********************************************************************--%>
            <main>
                <%--<div id="current_date">
                    <script>
                        date = new Date();
                        year = date.getFullYear();
                        month = date.getMonth() + 1;
                        day = date.getDate();
                        hour = date.getHours();
                        minutes = date.getMinutes();
                        document.getElementById("current_date").innerHTML = hour + ":"
                        + minutes + "    -    " + month + "/" + day + "/" + year;
                    </script>
                </div>--%>
            </main>
        </div>
    </form>
</body>
</html>
