using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI.Pantallas.Principal
{
    public partial class wfrm_Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_MantCred_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Modulo_IV/wfrm_MantCred.aspx");
        }

        protected void btn_UserManage_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Principal/wfrm_Registro.aspx");
        }

        protected void btn_RetAhorro_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pantallas/Modulo_II/wfrm_RetAhorro.aspx");
        }
    }
}