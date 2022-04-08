<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_ManAhorros.aspx.cs" Inherits="UI.Pantallas.Mantenimientos.wfrm_ManAhorros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mantenimiento - Ahorros</title>
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
                        <h1>Mantenimiento de Ahorros</h1>
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
                            <li><a href="#tabs-1">Crear Nuevo Tipo de Ahorro</a></li>
                            <li><a href="#tabs-2">Consultar Ahorro</a></li>
                            <li><a href="#tabs-3">Modificar Ahorro</a></li>
                            <li><a href="#tabs-4">Inactivar Ahorro</a></li>
                        </ul>
                        <%--****************************************************************Tab 1******************************************************************--%>
                        <div id="tabs-1" class="tab">
                            <div class="contenedor">
                                <h2>Crear un nuevo tipo de ahorro</h2>
                                <br />
                                <section class="formulario">
                                    <asp:Label runat="server" Text="Nombre para el ahorro:"></asp:Label>
                                    <asp:TextBox ID="txtNomAhorroNuevo" runat="server"></asp:TextBox>
                                    <asp:Label runat="server" Text="Seleccione:"></asp:Label>
                                    <asp:CheckBoxList ID="chkDatos" runat="server">
                                        <asp:ListItem>Porcentaje o Monto</asp:ListItem>
                                        <asp:ListItem>Retiro Extra</asp:ListItem>
                                        <asp:ListItem>Penalización</asp:ListItem>
                                    </asp:CheckBoxList>
                                    <asp:Label runat="server" Text="Plazo"></asp:Label>
                                    <asp:TextBox ID="txtPlazoAhorroNuevo" runat="server"></asp:TextBox>
                                    <asp:Label runat="server" Text="Porcentaje ahorro"></asp:Label>
                                    <asp:TextBox ID="txtPorAhorroNuevo" runat="server"></asp:TextBox>
                                    <asp:Button ID="btnInsertCredNuevo" runat="server" Text="Crear" CssClass="formulario-btn" OnClick="btnInsertCred_Click" />
                                </section>
                            </div>
                        </div>
                        <%--****************************************************************Tab 2******************************************************************--%>
                        <div id="tabs-2" class="tab">
                            <div class="contenedor">
                                <h2>Ahorro a consultar: </h2>
                                <section class="formulario">
                                    <asp:DropDownList CssClass="combo" ID="cmbAhorroC" runat="server"></asp:DropDownList>
                                    <asp:Button CssClass="formulario-btn consulta" ID="btnConsultarC" runat="server" Text="Consultar" OnClick="btnConsultarC_Click" />
                                </section>
                            </div>
                            <div class="contenedor">
                                <section class="formulario">
                                    <asp:Label runat="server" Text="Nombre del ahorro:"></asp:Label>
                                    <asp:TextBox ID="txtNomAhorroC" runat="server"></asp:TextBox>
                                    <asp:Label runat="server" Text="Seleccione:"></asp:Label>
                                    <asp:CheckBoxList ID="chkDatosC" runat="server">
                                        <asp:ListItem>Porcentaje o Monto</asp:ListItem>
                                        <asp:ListItem>Retiro Extra</asp:ListItem>
                                        <asp:ListItem>Penalización</asp:ListItem>
                                    </asp:CheckBoxList>
                                    <asp:Label runat="server" Text="Plazo"></asp:Label>
                                    <asp:TextBox ID="txtPlazoAhorroC" runat="server"></asp:TextBox>
                                    <asp:Label runat="server" Text="Porcentaje ahorro"></asp:Label>
                                    <asp:TextBox ID="txtPorAhorroC" runat="server"></asp:TextBox>
                                </section>
                            </div>
                        </div>
                        <%--****************************************************************Tab 3******************************************************************--%>
                        <div id="tabs-3" class="tab">
                            <div class="contenedor">
                                <h2>Ahorro a modificar: </h2>
                                <section class="formulario">
                                    <asp:DropDownList CssClass="combo" ID="cmbAhorroM" runat="server"></asp:DropDownList>
                                    <asp:Button CssClass="formulario-btn consulta" ID="btnConsultarM" runat="server" Text="Consultar" />
                                </section>
                            </div>
                            <div class="contenedor">
                                <section class="formulario">
                                    <%--<asp:Label ID="Label4" runat="server" Text="Nombre para el crédito."></asp:Label>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label5" runat="server" Text="Elija la tasa de interés"></asp:Label>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label6" runat="server" Text="Plazo Minimo"></asp:Label>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label12" runat="server" Text="Plazo Máximo"></asp:Label>
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="Modificar" />--%>
                                </section>
                            </div>
                        </div>
                        <%--****************************************************************Tab 4******************************************************************--%>
                        <div id="tabs-4" class="tab">
                            <div class="contenedor">
                                <h2>Ahorro a inactivar: </h2>
                                <section class="formulario">
                                    <asp:DropDownList CssClass="combo" ID="cmbAhorroE" runat="server"></asp:DropDownList>
                                    <asp:Button CssClass="formulario-btn consulta" ID="btnConsultarE" runat="server" Text="Consultar" />
                                </section>
                            </div>
                            <div class="contenedor">
                                <section class="formulario">
                                    <%--<asp:Label ID="Label7" runat="server" Text="Nombre del crédito."></asp:Label>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label8" runat="server" Text="Tasa de interés"></asp:Label>
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label9" runat="server" Text="Plazo Minimo"></asp:Label>
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                    <asp:Label ID="Label11" runat="server" Text="Plazo Máximo"></asp:Label>
                                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                                    <asp:Button ID="Button5" runat="server" Text="Eliminar" />--%>
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
