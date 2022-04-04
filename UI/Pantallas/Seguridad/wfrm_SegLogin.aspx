<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_SegLogin.aspx.cs" Inherits="UI.Pantallas.Seguridad.wfrm_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Log In</title>
    <link href="../../css/login.css" rel="stylesheet" />
    <script src="../../jquery-ui-1.13.1/jquery-3.6.0.js"></script>
    <script src="../../jquery-ui-1.13.1/jquery-ui.js"></script>
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
                        <h1>Ingrese su usuario y contraseña</h1>
                    </div>
                </div>
            </header>
            <%--***********************************************************Principal******************************************************************--%>
            <main>
                <div class="contenido-central">
                    <p id="usuario">
                        <asp:Label ID="lbl_Usuario" runat="server" Text="Usuario: "></asp:Label>
                        <asp:TextBox ID="txt_Usuario" runat="server" Height="25px"></asp:TextBox>
                    </p>
                    <p id="pass">
                        <asp:Label ID="lbl_Pass" runat="server" Text="Contraseña: "></asp:Label>
                        <asp:TextBox ID="txt_Pass" runat="server" TextMode="Password" Height="25px"></asp:TextBox>
                    </p>
                    <p id="boton">
                        <asp:Button ID="btn_ingresar" CssClass="btn_Gen" runat="server" Text="Ingresar" Font-Bold="True" Font-Size="Larger" Width="190px" ForeColor="White" OnClick="btn_ingresar_Click1" />
                    </p>
                    <asp:Label ID="lbl_ErrorPass" runat="server" Text="El usuario y/o contraseñas son incorrectos." Font-Size="Small" ForeColor="#CC3300" Visible="False"></asp:Label>
                    <p id="ResetPass">
                        <a href="wfrm_SegRecuperarPass.aspx">¿Olvido su contraseña?</a>
                    </p>
                </div>
                <div class="img">
                    <p>
                        <img src="../../imagenes/reunion_aso_sinfondo.png" width="450" />
                    </p>
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
