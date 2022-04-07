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
                        </ul>
                        <%--****************************************************************Tab 1******************************************************************--%>
                        <div id="tabs-1" class="tab">
                            <div class="contenedor">
                                <h2>Crear un nuevo tipo de crédito</h2>
                                <br />
                                <section class="formulario">
                                    <asp:Label ID="lblNomCredNuevo" runat="server" Text="Nombre para el crédito."></asp:Label>
                                    <asp:TextBox ID="txtNomCredNuevo" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblTasa" runat="server" Text="Elija la tasa de interés"></asp:Label>
                                    <asp:TextBox ID="txtTasaNuevo" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblPlazoMin" runat="server" Text="Plazo Minimo"></asp:Label>
                                    <asp:TextBox ID="txtPlazoMinNuevo" runat="server"></asp:TextBox>
                                    <asp:Label ID="lblPlazoMax" runat="server" Text="Plazo Máximo"></asp:Label>
                                    <asp:TextBox ID="txtPlazoMaxNuevo" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnInsertCredNuevo" runat="server" Text="Crear" CssClass="formulario-btn" OnClick="btnInsertCred_Click"/>
                                </section>
                            </div>
                        </div>
                        <%--****************************************************************Tab 2******************************************************************--%>
                        <div id="tabs-2" class="tab">
                            <div class="contenedor">
                                <h2>Crédito a consultar: </h2>
                                <section class="formulario">
                                    <asp:DropDownList CssClass="combo" ID="cmbCreditosC" runat="server"></asp:DropDownList>
                                    <asp:Button CssClass="formulario-btn consulta" ID="btnConsultarC" runat="server" Text="Consultar Crédito" OnClick="btnConsultarC_Click"/>
                                </section>
                            </div>
                            <div class="contenedor">
                                <section class="formulario">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre del crédito."></asp:Label>
                                    <asp:TextBox ID="txtNombreCredito" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label2" runat="server" Text="Tasa de interés"></asp:Label>
                                    <asp:TextBox ID="txtTasaInteres" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label3" runat="server" Text="Plazo Minimo"></asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label10" runat="server" Text="Plazo Máximo"></asp:Label>
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </section>
                            </div>
                        </div>
                        <%--****************************************************************Tab 3******************************************************************--%>
                        <div id="tabs-3" class="tab">
                            <div class="contenedor">
                                <h2>Crédito a modificar: </h2>
                                <section class="formulario">
                                    <asp:DropDownList CssClass="combo" ID="cmbCreditosM" runat="server"></asp:DropDownList>
                                    <asp:Button CssClass="formulario-btn consulta" ID="btnConsultarM" runat="server" Text="Consultar Crédito"/>
                                </section>
                            </div>
                            <div class="contenedor">
                                <section class="formulario">
                                    <asp:Label ID="Label4" runat="server" Text="Nombre para el crédito."></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label5" runat="server" Text="Elija la tasa de interés"></asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label6" runat="server" Text="Plazo Minimo"></asp:Label>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label12" runat="server" Text="Plazo Máximo"></asp:Label>
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Modificar" />
                                </section>
                            </div>
                        </div>
                        <%--****************************************************************Tab 4******************************************************************--%>
                        <div id="tabs-4" class="tab">
                            <div class="contenedor">
                                <h2>Crédito a eliminar: </h2>
                                <section class="formulario">
                                    <asp:DropDownList CssClass="combo" ID="cmbCreditosE" runat="server"></asp:DropDownList>
                                    <asp:Button CssClass="formulario-btn consulta" ID="btnConsultarE" runat="server" Text="Consultar Crédito"/>
                                </section>
                            </div>
                            <div class="contenedor">
                                <section class="formulario">
                                    <asp:Label ID="Label7" runat="server" Text="Nombre del crédito."></asp:Label>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label8" runat="server" Text="Tasa de interés"></asp:Label>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label9" runat="server" Text="Plazo Minimo"></asp:Label>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label11" runat="server" Text="Plazo Máximo"></asp:Label>
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button5" runat="server" Text="Eliminar" />
                                </section>
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
