using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Pantallas.Generales
{
    public partial class wfrm_Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // ASOCIADO
        protected void btn_Perfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Asociados/wfrm_Perfil.aspx");
        }

        protected void btn_EstCuent_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Asociados/wfrm_EstCuenta.aspx");
        }

        protected void btn_Movimientos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Asociados/wfrm_Movimientos.aspx");
        }

        // AHORROS

        protected void btn_MisAhorros_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Ahorros/wfrm_MisAhorros.aspx");
        }

        protected void btn_MatAhorro_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Ahorros/wfrm_MatAhorros.aspx");
        }
        protected void btn_RetAhorro_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Ahorros/wfrm_RetAhorros.aspx");
        }

        // CREDITOS

        protected void btn_MisCreditos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Creditos/wfrm_MisCreditos.aspx");
        }

        protected void btn_SolicCred_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Creditos/wfrm_SolicitudCred.aspx");
        }

        protected void btn_PagoExt_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Creditos/wfrm_PagoExt.aspx");
        }

        // MANTENIMIENTOS

        protected void btn_RegAsociado_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Mantenimientos/wfrm_ManAsociados.aspx");
        }

        protected void btn_ManAhorros_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Mantenimientos/wfrm_ManAhorros.aspx");
        }

        protected void btn_ManCreditos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Mantenimientos/wfrm_ManCreditos.aspx");
        }

        // SEGURIDAD

        protected void btn_ManUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Seguridad/wfrm_SegUsuarios.aspx");
        }
        protected void btn_SegAccesos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Seguridad/wfrm_SegAccesos.aspx");
        }
        protected void btn_SegIngresos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Seguridad/wfrm_SegPlanilla.aspx");
        }

        //Aprobaciones

        protected void btn_AproAhorros_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Aprobaciones/wfrm_AproAhorros.aspx");
        }

        protected void btn_AproCreditos_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Aprobaciones/wfrm_AproCreditos.aspx");
        }
    }
}