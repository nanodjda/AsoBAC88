using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.BD;
using BLL.BD;
using DAL.Catalogos_Mantenimiento;
using BLL.Catalogos_Mantenimiento;
using BLL.Mail;
using System.Web.Security;

namespace UI.Pantallas.Seguridad
{
    public partial class wfrm_SegRecuperarPass : System.Web.UI.Page
    {

        cls_Usuarios_DAL obj_Usuarios_DAL = new cls_Usuarios_DAL();
        cls_Usuarios_BLL obj_Usuarios_BLL = new cls_Usuarios_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_RecuperarPass_Click(object sender, EventArgs e)
        {
            obj_Usuarios_DAL.sEmail = txtCorreoPass.Text;
            string ranPass = Membership.GeneratePassword(8, 4);
            if (obj_Usuarios_BLL.VerificaCorreoRecuperacion(ref obj_Usuarios_DAL))
            {
                //cls_Mail_BLL.sendMail(txtCorreoPass.Text, "Usuario", "", "", ranPass);
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Contraseña enviada con éxito." + "');", true);
            }
        }
    }
}