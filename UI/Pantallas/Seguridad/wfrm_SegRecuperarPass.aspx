<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_SegRecuperarPass.aspx.cs" Inherits="UI.Pantallas.Seguridad.wfrm_SegRecuperarPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Seguridad - Recuperar contraseña</title>
    <link href="../../css/seguridad.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <%--***********************************************************Encabezado****************************************************************--%>
           <header>
                <div id="encabezado">
                    <div class="logo">
                        <a href="wfrm_SegLogin.aspx"><img src="../../imagenes/logo.png" width="200" /></a>
                    </div>
                    <div class="titulo">
                        <h1>Crear contraseña nueva</h1>
                    </div>
                    <div class="salir">
                        <a id="a_salir" href="wfrm_SegLogin.aspx">Atrás</a>
                    </div>
                </div>
            </header>
            <%--***********************************************************Principal******************************************************************--%>
            <main>
                <div class="contenedor">
                    <h2>Recuperar contraseña...</h2>
                    <br />
                    <section class="formulario">
                        <asp:Label runat="server" Text="Correo electrónico para enviar contraseña temporal..."></asp:Label>
                        <asp:TextBox ID="txtCorreoPass" runat="server"></asp:TextBox>
                        <asp:Button ID="btn_RecuperarPass" runat="server" Text="Enviar correo" CssClass="formulario-btn" OnClick="btn_RecuperarPass_Click" />
                    </section>
                </div>
            </main>
            <%--***********************************************************Pie de página****************************************************************--%>
            <footer id="PiePag">
                <p>©Aarke Soluciones  - 2022 </p>
            </footer>
        </div>
    </form>
    <script src="../../js/MainJs.js"></script>
</body>
</html>
