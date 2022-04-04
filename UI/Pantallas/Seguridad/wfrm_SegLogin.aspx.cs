using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.Catalogos_Mantenimiento;
using DAL.Catalogos_Mantenimiento;

namespace UI.Pantallas.Seguridad
{
    public partial class wfrm_Login : System.Web.UI.Page
    {
        cls_Usuarios_DAL obj_Usuarios_DAL = new cls_Usuarios_DAL();
        cls_Usuarios_BLL obj_Usuarios_BLL = new cls_Usuarios_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresar_Click1(object sender, EventArgs e)
        {
            //Response.Redirect("~/Pantallas/Generales/wfrm_Principal.aspx");

            obj_Usuarios_DAL.sUsuarioID = txt_Usuario.Text;
            obj_Usuarios_DAL.sClave = txt_Pass.Text;
            obj_Usuarios_DAL.cAxn = 'X'; // Indico mediante un caracter, que la accion no será un SP ni un filtrado
            obj_Usuarios_BLL.VerificarLogin(ref obj_Usuarios_DAL);

            if (obj_Usuarios_DAL.Dt.Rows[0][0].ToString() == "1") //De existir dicha coincidencia en la BD, permito el ingreso
            {
                Response.Redirect("~/Pantallas/Generales/wfrm_Principal.aspx");
            }
            else
            {
                lbl_ErrorPass.Visible = true;
            }
        }
    }
}