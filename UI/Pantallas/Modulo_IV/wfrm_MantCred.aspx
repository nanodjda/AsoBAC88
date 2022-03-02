<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_MantCred.aspx.cs" Inherits="UI.Pantallas.Modulo_IV.wfrm_MantCred" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mantenimientos Créditos</title>
    <link href="../../css/Mantenimiento%20Créditos/MainMantCred.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <script src="../../jquery-ui-1.13.1/jquery-3.6.0.js"></script>
    <script src="../../jquery-ui-1.13.1/jquery-ui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
<%--*************************************************************Encabezado******************************************************--%>
            <header>
                <div id="encab">
                    <ul>
                        <li id="logo">
                            <img src="../../Img/20220220_132111.png" width="200"/>
                        </li>
                        <li id="titulo">
                                <h1>
                                Bienvenido
                                </h1>
                            <h2>Seleccione una opción</h2>
                        </li>
                        <li id="salir">
                            <a href="../Principal/wfrm_Login.aspx">Salir</a>
                        </li>
                    </ul>
                </div>
            </header>
<%--*************************************************************Principal********************************************************--%>
            <main>
                <div id="menu">
                    <div id="tabs">
                        <ul>
                            <li><a href="#tabs-1">Crear Nuevo Crédito</a></li>
                            <li><a href="#tabs-2">Consultar Crédito</a></li>
                            <li><a href="#tabs-3">Modificar Crédito</a></li>
                            <li><a href="#tabs-4">Eliminar crédito</a></li>
                        </ul>
                        <div id="tabs-1">
                            <div id="principal">
                                <h2>
                                    <p>
                                        Crear un nuevo crédito
                                    </p>
                                </h2>
                                <p>
                                    <asp:Label ID="lbl_NomCred" runat="server" Text="Nombre para el crédito."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="txt_NomCred" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="lbl_Tasa" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="txt_Tasa" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="lbl_Plazo" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="txt_Plaza" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="boton" ID="btn_InsertCred" runat="server" Text="Crear" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
                        <div id="tabs-2">
                            <div class="principal">
                                <h2>
                                    <p>
                                        Seleccione una opción
                                    </p>
                                </h2>
                                <p>
                                    <asp:DropDownList ID="DropDownList2" runat="server">
                                        <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                        <asp:ListItem>Crédito Personal</asp:ListItem>
                                        <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text="Nombre para el crédito."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox1" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label2" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox2" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox3" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="boton" ID="Button1" runat="server" Text="Consultar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                            </div>
                        <div id="tabs-3">
                            <div class="principal">
                                <h2>
                                    <p>
                                        Seleccione una opción
                                    </p>
                                </h2>
                                <p>
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                        <asp:ListItem>Crédito Personal</asp:ListItem>
                                        <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label ID="Label4" runat="server" Text="Nombre para el crédito."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox4" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label5" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox5" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label6" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox6" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="boton" ID="Button2" runat="server" Text="Modificar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
                        <div id="tabs-4">
                            <div class="principal">
                                <h2>
                                    <p>
                                        Seleccione una opción
                                    </p>
                                </h2>
                                <p>
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                        <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                        <asp:ListItem>Crédito Personal</asp:ListItem>
                                        <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label ID="Label7" runat="server" Text="Nombre para el crédito."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox7" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label8" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox8" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox9" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="boton" ID="Button3" runat="server" Text="Eliminar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
<%--****************************************************Pie de página***********************************************************--%>
            <footer id="PiePag">
                <p>©Aarke Soluciones  - 2022 </p>
            </footer>
        </div>
    </form>
    <script src="../../js/MainJs.js"></script>
</body>
</html>