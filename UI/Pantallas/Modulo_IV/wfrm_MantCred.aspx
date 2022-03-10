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
                    <section id="logo">
                        <ul>
                            <li id="logo1">
                                <img src="../../Img/20220220_132111.png" width="200"/>
                            </li>
                        </ul>
                    </section>
                    <section id="titulo">
                        <h1>Bienvenido</h1>
                        <h2>Seleccione una opción</h2>
                    </section>
                    <section id="salir">
                        <ul>
                            <li id="salir1">
                                 <a id="a_salir" href="../Principal/wfrm_Principal.aspx">Salir</a>
                            </li>
                        </ul>
                    </section>
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
                            <li><a href="#tabs-5">Aprovaciones</a></li>
                        </ul>
                        <div id="tabs-1">
                            <div id="principal">
                                <p class="p">
                                     Crear un nuevo crédito
                                 </p>
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
                                    <p class="p">
                                        Ingrese el número de <br />
                                        cédula del asociado
                                    </p>
                                <p>
                                    <asp:TextBox class="Textbox" ID="TextBox10" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="boton" ID="Button1" runat="server" Text="Consultar"              Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text="Nombre del asociado."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label2" runat="server" Text="Elija la línea de crédito"></asp:Label><br />
                                    <br />
                                    <asp:DropDownList class="Textbox" ID="DropDownList1" runat="server">
                                        <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                        <asp:ListItem>Crédito Personal</asp:ListItem>
                                        <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text="Tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label10" runat="server" Text="Plazo del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox11" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label11" runat="server" Text="Monto inicial"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox12" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label12" runat="server" Text="Cuota"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox13" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label13" runat="server" Text="Saldo actual"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox14" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                            </div>
                        </div>
                        <div id="tabs-3">
                            <div class="principal">
                                <h2>
                                        Seleccione una opción
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
                                        Seleccione una opción
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
                        <div id="tabs-5">
                            <div class="principal">
                                <p class="p">
                                        Seleccione una opción
                                </p>
                                <p>
                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                        <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                        <asp:ListItem>Crédito Personal</asp:ListItem>
                                        <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label Text="Nombre del asociado" runat="server" /><br />
                                    <br />
                                    <asp:TextBox Class="Textbox" ID="TextBox15" ReadOnly="true" text="Nombre y apellidos" ForeColor="LightGray" runat="server" />
                                </p>
                                <p>
                                    <asp:Label Text="Fecha de asociación" runat="server" /><br />
                                    <br />
                                    <asp:TextBox Class="Textbox" ID="TextBox16" ReadOnly="false" Text="Tipo fecha" ForeColor="LightGray" runat="server" />
                                </p>
                                <p>
                                    <asp:Label Text="Puesto" runat="server" /><br />
                                    <br />
                                    <asp:TextBox class="Textbox" ID="TextBox17" ReadOnly="true" ForeColor="LightGray" Text="Interino o Propiedad" runat="server" />
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