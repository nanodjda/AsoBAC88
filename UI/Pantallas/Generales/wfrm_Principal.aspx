<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Principal.aspx.cs" Inherits="UI.Pantallas.Generales.wfrm_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home - ASOBAC</title>
    <link href="../../css/principal.css" rel="stylesheet" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css" />
    <link rel="stylesheet" href="/resources/demos/style.css" />
    <script src="../../jquery-ui-1.13.1/jquery-3.6.0.js"></script>
    <script src="../../jquery-ui-1.13.1/jquery-ui.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <%--*************************************************************Encabezado******************************************************--%>
            <header>
                <div id="encabezado">
                    <div class="logo">
                        <a href="wfrm_Principal.aspx">
                            <img src="../../imagenes/logo.png" width="200" /></a>
                    </div>
                    <div class="titulo">
                        <h1>Bienvenido</h1>
                        <h2>Seleccione una opción</h2>
                    </div>
                    <div class="salir">
                        <a id="a_salir" href="../Seguridad/wfrm_SegLogin.aspx">Salir</a>
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
            <%--*************************************************************Principal********************************************************--%>
            <main>
                <div id="menu">
                    <div id="tabs">
                        <ul>
                            <li><a href="#tabs-1">Información personal</a></li>
                            <li><a href="#tabs-2">Ahorros</a></li>
                            <li><a href="#tabs-3">Gestión de Créditos</a></li>
                            <li><a href="#tabs-4">Mantenimiento de la página</a></li>
                            <li><a href="#tabs-5">Seguridad</a></li>
                            <li><a href="#tabs-6">Aprobaciones</a></li>
                        </ul>

                        <%--********************************************************Tab 1*********************************************************************--%>
                        <div id="tabs-1" class="tab">
                            <div class="principal">
                                <p>
                                    <img id="img1" src="../../imagenes/manos_familia.png" width="450" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button ID="btn_Perfil" class="btn_Gen" runat="server" Text="Perfil de Usuario" ForeColor="White" OnClick="btn_Perfil_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_EstCuent" class="btn_Gen" runat="server" Text="Estado de cuenta" ForeColor="White" OnClick="btn_EstCuent_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_Movimientos" class="btn_Gen" runat="server" Text="Movimientos" ForeColor="White" OnClick="btn_Movimientos_Click" />
                                </p>
                            </div>
                        </div>

                        <%--********************************************************Tab 2*********************************************************************--%>
                        <div id="tabs-2" class="tab">
                            <div class="principal">
                                <p>
                                    <img src="../../imagenes/fortaleza-asociacion-solidarista.jpg" width="450" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button ID="btn_MisAhorros" class="btn_Gen" runat="server" Text="Mis Ahorros" ForeColor="White" OnClick="btn_MisAhorros_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_MatAhorro" class="btn_Gen" runat="server" Text="Matricula de Ahorros" ForeColor="White" OnClick="btn_MatAhorro_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_RetAhorro" class="btn_Gen" runat="server" Text="Retiro de ahorros" ForeColor="White" OnClick="btn_RetAhorro_Click" />
                                </p>
                            </div>
                        </div>

                        <%--********************************************************Tab 3*********************************************************************--%>
                        <div id="tabs-3" class="tab">
                            <div class="principal">
                                <p>
                                    <img src="../../imagenes/creditos.jpg" width="450" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button ID="btn_MisCreditos" class="btn_Gen" runat="server" Text="Mis Créditos" ForeColor="White" OnClick="btn_MisCreditos_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_SolicCred" class="btn_Gen" runat="server" Text="Solicitar créditos" ForeColor="White" OnClick="btn_SolicCred_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_PagoExt" class="btn_Gen" runat="server" Text="Pago Extraordinario" ForeColor="White" />
                                </p>
                            </div>
                        </div>

                        <%--********************************************************Tab 4*********************************************************************--%>
                        <div id="tabs-4" class="tab">
                            <div class="principal">
                                <p>
                                    <img src="../../imagenes/Mantenimiento-industrial.png" width="350" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button ID="btn_RegAsoc" class="btn_Gen" runat="server" Text="Registro de Asociados" ForeColor="White" OnClick="btn_RegAsociado_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="MantAhorro" class="btn_Gen" runat="server" Text="Lineas de ahorro" ForeColor="White" OnClick="btn_ManAhorros_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_MantCred" class="btn_Gen" runat="server" Text="Líneas de crédito" ForeColor="White" OnClick="btn_ManCreditos_Click" />
                                </p>
                            </div>
                        </div>

                        <%--********************************************************Tab 5*********************************************************************--%>
                        <div id="tabs-5" class="tab">
                            <div class="principal">
                                <p>
                                    <img src="../../imagenes/Seguridad.jpg" width="450" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button ID="btn_SegUsuarios" class="btn_Gen" runat="server" Text="Manejo de Usuarios" ForeColor="White" OnClick="btn_ManUsuarios_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_SegAccesos" class="btn_Gen" runat="server" Text="Control de Accesos" ForeColor="White" OnClick="btn_SegAccesos_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_SegIngresos" class="btn_Gen" runat="server" Text="Registro de Ingresos" ForeColor="White" OnClick="btn_SegIngresos_Click" />
                                </p>
                            </div>
                        </div>

                        <%--********************************************************Tab 6*********************************************************************--%>
                        <div id="tabs-6" class="tab">
                            <div class="principal">
                                <p>
                                    <img src="../../imagenes/Aprobaciones.png" width="350" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button ID="btn_AproAhorros" class="btn_Gen" runat="server" Text="Aprobación de Ahorros" ForeColor="White" OnClick="btn_AproAhorros_Click" />
                                </p>
                                <p>
                                    <asp:Button ID="btn_AproCreditos" class="btn_Gen" runat="server" Text="Aprobación de Créditos" ForeColor="White" OnClick="btn_AproCreditos_Click" />
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
