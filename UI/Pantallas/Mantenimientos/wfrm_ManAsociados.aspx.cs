using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DAL.Catalogos_Mantenimiento;
using BLL.Catalogos_Mantenimiento;

namespace UI.Pantallas.Mantenimientos
{
    public partial class wfrm_ManAsociados : System.Web.UI.Page
    {

        cls_Usuarios_DAL obj_Usuarios_DAL = new cls_Usuarios_DAL();
        cls_Usuarios_BLL obj_Usuarios_BLL = new cls_Usuarios_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Enviar_Click(object sender, EventArgs e)
        {
            obj_Usuarios_DAL.sUsuarioID = txtUsuID.Text;
            if (obj_Usuarios_BLL.ExisteAsociado(ref obj_Usuarios_DAL)) // Si obtengo que el usuario ya existe, evito su registro, de lo contrario, creo el asociado con su usuario
            {
                obj_Usuarios_DAL.sCedula = txtCedula.Text;
                obj_Usuarios_DAL.sNombre = txtNombre1.Text;
                obj_Usuarios_DAL.sNombre2 = txtNombre2.Text;
                obj_Usuarios_DAL.sApellido1 = txtApellido1.Text;
                obj_Usuarios_DAL.sApellido2 = txtApellido2.Text;
                obj_Usuarios_DAL.sEmail = txtEmail.Text;
                obj_Usuarios_BLL.InsertarAsociado(ref obj_Usuarios_DAL);

                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "Registrado con éxito" + "');", true);
            } else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + "El usuario ya existe" + "');", true);
            }
        }
    }
}