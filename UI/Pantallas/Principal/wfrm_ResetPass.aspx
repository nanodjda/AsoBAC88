<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_ResetPass.aspx.cs" Inherits="UI.Pantallas.Principal.wfrm_ResetPass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Reestablecer contraseña</title>
    <link href="../../css/ResetPass/MainResetPass.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <%--***********************************************************Encabezado***********************************************************************************************--%>
           <header>
                <div id="encab">
                    <section id="logo">
                        <ul>
                            <li id="logo1">
                                <img src="../../Img/20220220_132111.png" width="200"/>
                            </li>
                        </ul>
                    </section>
                    <section id="titulo">
                                <h1>Reestablecer contraseña</h1>
                    </section>
                    <section id="salir">
                        <ul>
                            <li id="salir1">
                                 <a id="a_salir" href="wfrm_Login.aspx">Salir</a>
                            </li>
                        </ul>
                    </section>
                </div>
            </header>
            <%--*********************************************************Principal****************************************************************************************************--%>
            <main>
                <div id="contenido">
                    <div class="text">
                        <h2>Ingrese su correo electrónico registrado <br /> para enviarle una contraseña temporal.</h2>
                            <p id="correo">
                                <asp:TextBox ID="txt_Usuario" runat="server" Height="25px" TextMode="Email"></asp:TextBox>
                            </p>
                        <p id="boton">
                            <asp:Button ID="btn_ingresar" CssClass="btn_Gen" runat="server" Text="Ingresar" Font-Bold="True" Font-Size="Larger" Width="190px" ForeColor="White" OnClick="btn_ingresar_Click"/>
                        </p>
                    </div>
                    <div id="img">
                        <img src="../../Img/Life-insurance.png" width="700" />
                    </div>
                </div>
            </main>
            <%--*****************************************************Pie de Página*****************************************************************************************************--%>
            <footer id="PiePag">
                <p>©Aarke Soluciones  - 2022 </p>
            </footer>
        </div>
    </form>
</body>
</html>
