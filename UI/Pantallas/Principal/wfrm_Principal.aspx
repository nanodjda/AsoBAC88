﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Principal.aspx.cs" Inherits="UI.Pantallas.Principal.wfrm_Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Home</title>
    <link href="../../css/Principal/MainPrincipal.css" rel="stylesheet" />
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
                            <a href="wfrm_Login.aspx">Salir</a>
                        </li>
                    </ul>
                </div>
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
                        </ul>
                        <div id="tabs-1">
                            <div class="principal">
                                <p>
                                    <img id="img1" src="../../Img/Life-insurance.png" width="450" />
                                </p>
                            </div>
                            <div class="principal">
                                <p>
                                    <asp:Button id="btn_Info" class="btn_accion" runat="server" Text="Perfil de Usuario" ForeColor="White"/>
                                </p>
                                <p>
                                    <asp:Button id="btn_EstCuent" Class ="btn_accion" runat="server" Text="Estado de cuenta" ForeColor="White"/>
                                </p>
                                <p>
                                    <asp:Button id="btn_HistTransc" class="btn_accion" runat="server" Text="Movimientos" ForeColor="White"/>
                                </p>
                            </div>
                        </div>
                        <div id="tabs-2">
                            <div class="principal">
                                <p>
                                    <img src="../../Img/fortaleza-asociacion-solidarista.jpg" width="450"/>
                                </p>
                            </div>
                                <div class="principal">
                                        <p>
                                            <asp:Button id="btn_MisAhorros" class="btn_accion" runat="server" Text="Mis Ahorros" ForeColor="White"/>
                                        </p>
                                        <p>
                                            <asp:Button id="btn_MatAhorro" class="btn_accion" runat="server" Text="Matricula de Ahorros" ForeColor="White"/>
                                        </p>
                                        <p>
                                            <asp:Button id="btn_RetAhorro" class="btn_accion" runat="server" Text="Retiro de ahorros" ForeColor="White"/>
                                        </p>
                                </div>
                            </div>
                        <div id="tabs-3">
                            <div class="principal">
                                <p>
                                    <img src="../../Img/_2OpwRD5%20CREDITOS.jpg" width="450"/>
                                </p>
                            </div>
                            <div class="principal">
                                    <p>
                                        <asp:Button id="btn_MisCreditos" class="btn_accion" runat="server" Text="Mis Créditos" ForeColor="White"/>
                                    </p>
                                    <p>
                                        <asp:Button id="btn_SolicCred" class="btn_accion" runat="server" Text="Solicitar créditos" ForeColor="White"/>
                                    </p>
                                    <p>
                                        <asp:Button id="btn_PagoExt" class="btn_accion" runat="server" Text="Pago Extraordinario" ForeColor="White"/>
                                    </p>
                            </div>
                        </div>
                        <div id="tabs-4">
                            <div class="principal">
                                <p>
                                    <img src="../../Img/Mantenimiento-industrial.png" width="350"/>
                                </p>
                            </div>
                                <div class="principal">
                                    <p>
                                        <asp:Button id="btn_InfoAsoc" class="btn_accion" runat="server" Text="Información del Asosiado" ForeColor="White"/>
                                    </p>
                                    <p>
                                        <asp:Button id="MantAhorro" class="btn_accion" runat="server" Text="Ahorros" ForeColor="White"/>
                                    </p>
                                    <p>
                                        <asp:Button id="btn_MantCred" class="btn_accion" runat="server" Text="Créditos" ForeColor="White" OnClick="btn_MantCred_Click"/>
                                    </p>
                                </div>
                        </div>
                        <div id="tabs-5">
                            <div class="principal">
                                <p>
                                    <img src="../../Img/Seguridad.jpg" width="450"/>
                                </p>
                            </div>
                            <div class="principal">
                                    <p>
                                        <asp:Button id="btn_UserManage" class="btn_accion" runat="server" Text="Manejo de Usuarios" ForeColor="White" OnClick="btn_UserManage_Click"/>
                                    </p>
                                    <p>
                                        <asp:Button id="btn_Access" class="btn_accion" runat="server" Text="Control de Accesos" ForeColor="White"/>
                                    </p>
                                    <p>
                                        <asp:Button id="btn_RegIng" class="btn_accion" runat="server" Text="Registro de Ingresos" ForeColor="White"/>
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
<!--  Comentario de ejemplo  -->