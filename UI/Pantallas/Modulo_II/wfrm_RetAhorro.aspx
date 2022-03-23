<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_RetAhorro.aspx.cs" Inherits="UI.Pantallas.Modulo_II.wfrm_RetAhorro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Retiro de Ahorro</title>
    <link href="../../css/Retiro%20Ahorro/MainRetAhoro.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
<%--****************************************************************Encabezado***********************************************************--%>
             <header>
                <section id="encab">
                    <div id="logo">
                        <ul>
                            <li id="logo1">
                                <img src="../../Img/20220220_132111.png" width="200"/>
                            </li>
                        </ul>
                    </div>
                    <div id="titulo">
                        <h1>Bienvenido</h1>
                        <h2>Seleccione una opción</h2>
                    </div>
                    <div id="salir">
                        <ul>
                            <li id="salir1">
                                 <a id="a_salir" href="../Principal/wfrm_Principal.aspx">Salir</a>
                            </li>
                        </ul>
                    </div>
                </section>
            </header>
<%--******************************************************************Principal*************************************************************--%>
            <section id ="contenedor">
                <div id  ="Title">
                    <h1>
                        Retiro de ahorro
                    </h1>
                </div>
                <div id="contenedor_1">
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="Cuenta Bancaria: "></asp:Label><br />
                        <br />
                        <asp:DropDownList CssClass="txt_Gen" ID="DropDownList1" runat="server">
                            <asp:ListItem>Crédito de Estudio</asp:ListItem>
                            <asp:ListItem>Crédito Personal</asp:ListItem>
                            <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                    <p>
                        <asp:Label ID="Label2" runat="server" Text="Institución Bancaria: "></asp:Label><br />
                        <br />
                        <asp:TextBox Class="txt_Gen" ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="Label3" runat="server" Text="Tipo de cuenta: "></asp:Label><br />
                        <br />
                        <asp:TextBox CssClass="txt_Gen" ID="TextBox2" runat="server" ReadOnly="true"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="Label4" runat="server" Text="Moneda: "></asp:Label><br />
                        <br />
                        <asp:TextBox CssClass="txt_Gen" ID="TextBox3" runat="server" ReadOnly="true"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="Label5" runat="server" Text="Seleccione ahorro a retirar "></asp:Label><br />
                        <br />
                            <asp:DropDownList CssClass="txt_Gen" ID="DropDownList2" runat="server">
                                <asp:ListItem>Crédito de Estudio</asp:ListItem>
                                <asp:ListItem>Crédito Personal</asp:ListItem>
                                <asp:ListItem>Crédito Fiduciario</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
