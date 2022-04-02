<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_ManCreditos.aspx.cs" Inherits="UI.Pantallas.Mantenimientos.wfrm_ManCreditos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mantenimiento - Créditos</title>
    <link href="../../css/mantenimientos.css" rel="stylesheet" />

    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
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
                        <a href="../Generales/wfrm_Principal.aspx">
                            <img src="../../imagenes/logo.png" width="200" /></a>
                    </div>
                    <div class="titulo">
                        <h1>Mantenimiento de Créditos</h1>
                    </div>
                    <div class="salir">
                        <a id="a_salir" href="../Generales/wfrm_Principal.aspx">Atrás</a>
                    </div>
                </div>
                <asp:Menu ID="menu_header" runat="server" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" ItemWrap="True" Orientation="Horizontal" StaticSubMenuIndent="10px">
                    <Items>
                        <asp:MenuItem Text="Información Personal" Value="Información Personal">
                            <asp:MenuItem NavigateUrl="~/Pantallas/Asociados/wfrm_Perfil.aspx" Text="Perfil del usuario" Value="Perfil del usuario"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Asociados/wfrm_EstCuenta.aspx" Text="Estado de cuenta" Value="Estado de cuenta"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Asociados/wfrm_Movimientos.aspx" Text="Movimientos" Value="Movimientos"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Ahorros" Value="Ahorros">
                            <asp:MenuItem NavigateUrl="~/Pantallas/Ahorros/wfrm_MisAhorros.aspx" Text="Mis Ahorros" Value="Mis Ahorros"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Ahorros/wfrm_MatAhorros.aspx" Text="Matricular ahorro" Value="Matricular ahorro"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Ahorros/wfrm_RetAhorros.aspx" Text="Retirar Ahorros" Value="Retirar Ahorros"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Créditos" Value="Créditos">
                            <asp:MenuItem NavigateUrl="~/Pantallas/Creditos/wfrm_MisCreditos.aspx" Text="Mis Créditos" Value="Mis Créditos"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Creditos/wfrm_SolicitudCred.aspx" Text="Solicitar crédito" Value="Solicitar crédito"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Creditos/wfrm_PagoExt.aspx" Text="Pago extraordinario" Value="Pago extraordinario"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Mantenimiento" Value="Mantenimiento">
                            <asp:MenuItem NavigateUrl="~/Pantallas/Mantenimientos/wfrm_ManAsociados.aspx" Text="Mantenimiento Asociados" Value="Mantenimiento Asociados"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Mantenimientos/wfrm_ManAhorros.aspx" Text="Mantenimiento Ahorros" Value="Mantenimiento Ahorros"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Mantenimientos/wfrm_ManCreditos.aspx" Text="Mantenimiento Créditos" Value="Mantenimiento Créditos"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Seguridad" Value="Seguridad">
                            <asp:MenuItem NavigateUrl="~/Pantallas/Seguridad/wfrm_SegUsuarios.aspx" Text="Control de usuarios" Value="Control de usuarios"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Seguridad/wfrm_SegAccesos.aspx" Text="Control de accesos" Value="Control de accesos"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Seguridad/wfrm_SegPlanilla.aspx" Text="Control de planilla" Value="Control de planilla"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Aprobaciones" Value="Aprobaciones">
                            <asp:MenuItem NavigateUrl="~/Pantallas/Aprobaciones/wfrm_AproAhorros.aspx" Text="Aprobacion de ahorros" Value="Aprobacion de ahorros"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Pantallas/Aprobaciones/wfrm_AproCreditos.aspx" Text="Aprobación de créditos" Value="Aprobación de créditos"></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
            </header>
            <%--***********************************************************Principal******************************************************************--%>
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
                                    <asp:Button class="btn_Gen" ID="btn_InsertCred" runat="server" Text="Crear" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White" />
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
                                    <asp:Button class="btn_Gen" ID="Button1" runat="server" Text="Consultar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White" />
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
                                    <asp:Button class="btn_Gen" ID="Button2" runat="server" Text="Modificar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White" />
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
                                    <asp:Button class="btn_Gen" ID="Button3" runat="server" Text="Eliminar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White" />
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
                                    <asp:Button CssClass="btn_Gen" ID="Button4" runat="server" Text="Enviar" Font-Bold="true" Font-Size="Larger" Width="190px" ForeColor="White" />
                                </p>
                            </div>
                        </div>
                    </div>
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
