﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Login.aspx.cs" Inherits="UI.Pantallas.Principal.wfrm_Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link href="../../css/Login/MainLogin.css" rel="stylesheet" />
</head>
<body>
    <form id="Login" runat="server" aria-expanded="true" star="0 0">
        <div id="main">
            <%--***********************************************************Encabezado****************************************************************--%>
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
                                <h1>Ingrese su usuario <br />
                                y contraseña</h1>
                    </section>
                    <section id="salir">
                        <ul>
                            <li id="salir1">
                                 <a id="a_salir" href="wfrm_Login.aspx"></a>
                            </li>
                        </ul>
                    </section>
                </div>
            </header>
            <%--***********************************************************Principal******************************************************************--%>
            <main>
                <div class="text">
                        <p id="usuario">
                            <asp:Label ID="lbl_Usuario" runat="server" Text="Usuario: "></asp:Label>
                            <asp:TextBox ID="txt_Usuario" runat="server" Height="25px"></asp:TextBox>
                        </p>
                        <p id="pass">
                            <asp:Label ID="lbl_Pass" runat="server" Text="Contraseña: "></asp:Label>
                            <asp:TextBox ID="txt_Pass" runat="server" TextMode="Password" Height="25px"></asp:TextBox>
                        </p>
                        <p id="boton">
                            <asp:Button ID="btn_ingresar" runat="server" Text="Ingresar" Font-Bold="True" Font-Size="Larger" Width="190px" ForeColor="White" OnClick="btn_ingresar_Click1"/>
                        </p>
                        <p id="ResetPass">
                            <a href="wfrm_ResetPass.aspx">¿Olvido su contraseña?</a>
                        </p>
                </div>
            </main>
            <div class="img">
                <p>
                    <img src="../../Img/Photo_1645204532393.png" width="450"/>
                </p>
                </div>
            <%--***********************************************************Pie de página****************************************************************--%>
            <footer id="PiePag">
                <p>©Aarke Soluciones  - 2022 </p>
            </footer>
        </div>
    </form>
</body>
</html>