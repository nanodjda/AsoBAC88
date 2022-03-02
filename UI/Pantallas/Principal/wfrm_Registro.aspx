<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Registro.aspx.cs" Inherits="UI.Pantallas.Principal.wfrm_Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Registro</title>
    <link href="../../css/Registro/MainReg.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
<%--*****************************************************Encabezado********************************************************************--%>
            <header>
                <div id="encab">
                    <ul>
                        <li id="logo">
                            <asp:ImageButton ID="ImageButton1" runat="server" Width="200" ImageUrl="~/Img/20220220_132111.png"/>
                        </li>
                        <li id="titulo">
                                <h1>
                                Por favor ingrese sus datos para el registro
                                </h1>
                        </li>
                        <li id="salir">
                            <a href="wfrm_Login.aspx">Salir</a>
                        </li>
                    </ul>
                </div>
            </header>
<%--**************************************************Principal************************************************************************--%>
            <main>
                <div id="contenido">
                    <div class="img1">
                        &nbsp;<img src="../../Img/Photo_1645204532393.png" width="350"/>
                    </div>
                    <div class="text">
                        <p>
                            <asp:Label ID="lbl_nombre" runat="server" Text="Nombre: "></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lbl_ced" runat="server" Text="Cédula: "></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" Height="25px" Width="250px" CausesValidation="true"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lbl_tel" runat="server" Text="Teléfono: "></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" Height="25px" Width="250px" TextMode="Phone"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lbl_correo" runat="server" Text="Correo: "></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" Height="25px" TextMode="Email" Width="250px"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lbl_direc" runat="server" Text="Dirección: "></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" Height="25px" Width="250px"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lbl_pass" runat="server" Text="Contraseña: "></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" TextMode="Password" Height="25px" Width="250px"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Label ID="lbl_pass2" runat="server" Text="Confirmar Contraseña"></asp:Label><br /><br />
                            <asp:TextBox class="textbox" runat="server" TextMode="Password" Height="25px" Width="250px"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Button ID="btn_cont" runat="server" Text="Continuar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                        </p>
                    </div>
                    <div id="img2">
                        <img src="../../Img/eficiencia.png" style="width: 350px"/>
                    </div>
                </div>
            </main>
<%--**************************************************Pie de Página****************************************************************************--%>
            <footer id="PiePag">
                <p>©Aarke Soluciones  - 2022 </p>
            </footer>
        </div>
    </form>
</body>
</html>
