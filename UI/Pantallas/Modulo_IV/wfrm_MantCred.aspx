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
                            <li><a href="#tabs-5">Aprobaciones</a></li>
                        </ul>
<%--****************************************************************Tab 1******************************************************************--%>
                        <div id="tabs-1" class="tab">
                            <div id="principal">
                                <p class="p">
                                     Crear un nuevo crédito
                                 </p>
                                <p>
                                    <asp:Label ID="lbl_NomCred" runat="server" Text="Nombre para el crédito."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="txt_NomCred" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="lbl_Tasa" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="txt_Tasa" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="lbl_Plazo" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="txt_Plaza" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="btn_Gen" ID="btn_InsertCred" runat="server" Text="Crear" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
<%--****************************************************************Tab 2******************************************************************--%>
                        <div id="tabs-2" class="tab">
                            <div class="principal1">
                                    <p class="p">
                                        Cédula del asociado
                                    </p>
                                <p>
                                    <asp:TextBox class="txt_Gen" ID="TextBox10" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Button class="btn_Gen" ID="Button1" runat="server" Text="Consultar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label ID="Label2" runat="server" Text="Elija la línea de crédito"></asp:Label><br />
                                    <br />
                                    <asp:DropDownList class="txt_Gen" ID="DropDownList1" runat="server">
                                        <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                        <asp:ListItem>Crédito Personal</asp:ListItem>
                                        <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                                <p>
                                    <asp:Label ID="Label1" runat="server" Text="Nombre del asociado."></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label3" runat="server" Text="Tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox3" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label10" runat="server" Text="Plazo del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox11" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label11" runat="server" Text="Monto inicial"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox12" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label12" runat="server" Text="Cuota"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox13" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                                <p></p>
                                <p>
                                    <asp:Label ID="Label13" runat="server" Text="Saldo actual"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox14" runat="server" ReadOnly="True"></asp:TextBox>
                                </p>
                            </div>
                        </div>
<%--****************************************************************Tab 3******************************************************************--%>
                        <div id="tabs-3" class="tab">
                            <div class="principal1">
                                <p class="p">
                                        Seleccione una opción
                                </p>
                                <p></p>
                                <p>
                                    <asp:DropDownList class="txt_Gen" ID="DropDownList3" runat="server">
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
                                    <asp:TextBox class="txt_Gen" ID="TextBox4" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label5" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox5" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label6" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox6" runat="server"></asp:TextBox>
                                </p>
                                <p></p>
                                <p>
                                    <asp:Button class="btn_Gen" ID="Button2" runat="server" Text="Modificar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
<%--****************************************************************Tab 4******************************************************************--%>
                        <div id="tabs-4" class="tab">
                            <div class="principal1">
                                <p class="p">
                                        Seleccione una opción
                                </p>
                                <p></p>
                                <p>
                                    <asp:DropDownList class="txt_Gen" ID="DropDownList4" runat="server">
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
                                    <asp:TextBox class="txt_Gen" ID="TextBox7" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label8" runat="server" Text="Elija la tasa de interés"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox8" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label9" runat="server" Text="Elija los plazos del crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox class="txt_Gen" ID="TextBox9" runat="server"></asp:TextBox>
                                </p>
                                <p></p>
                                <p>
                                    <asp:Button class="btn_Gen" ID="Button3" runat="server" Text="Eliminar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
<%--****************************************************************Tab 5******************************************************************--%>
                        <div id="tabs-5" class="tab">
                            <div class="principal1">
                                <p class="p">
                                    ID de solicitudes
                                </p>
                                <p></p>
                                <p>
                                    <asp:DropDownList class="txt_Gen" ID="DropDownList5" runat="server">
                                        <asp:ListItem>123456789</asp:ListItem>
                                        <asp:ListItem>111111111</asp:ListItem>
                                        <asp:ListItem>222222222</asp:ListItem>
                                    </asp:DropDownList>
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Label ID="Label22" runat="server" Text="Tipo de Crédito"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox21" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label14" runat="server" Text="Nombre del asociado"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox2" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label15" runat="server" Text="Cédula del asociado"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox15" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label16" runat="server" Text="Tiempo de asociado"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox16" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label17" runat="server" Text="Estado de la asociacion"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox17" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label18" runat="server" Text="Monto definido por el asociado"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox18" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label19" runat="server" Text="Plazo definido por el asociado"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox19" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label20" runat="server" Text="Monto disponible del asociado"></asp:Label><br />
                                    <br />
                                    <asp:TextBox ID="TextBox20" CssClass="txt_Gen" runat="server" ReadOnly="true"></asp:TextBox>
                                </p>
                                <p>
                                    <asp:Label ID="Label21" runat="server" Text="Enviar a revisión" Font-Bold="true" Font-Size="Large"></asp:Label><br />
                                    <br />
                                    <asp:Button CssClass="btn_Gen" ID="Button4" runat="server" Text="Enviar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White"/>
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
        </div>                                                          <%--div Main--%>
    </form>
    <script src="../../js/MainJs.js"></script>
</body>
</html>