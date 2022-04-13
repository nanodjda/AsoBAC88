using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Catalogos_Mantenimiento;
using BLL.Catalogos_Mantenimiento;
using DAL.BD;

namespace UI.Pantallas.Mantenimientos
{
    public partial class wfrm_ManCreditos : System.Web.UI.Page
    {

        cls_CreditosT_DAL obj_CT_DAL = new cls_CreditosT_DAL();
        cls_CreditosT_BLL obj_CT_BLL = new cls_CreditosT_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (cmbCreditosC.Text == string.Empty)
            {
                obj_CT_BLL.ListarCreditos(ref obj_CT_DAL);
                cmbCreditosC.DataSource = obj_CT_DAL.dt;
                cmbCreditosM.DataSource = obj_CT_DAL.dt;
                cmbCreditosE.DataSource = obj_CT_DAL.dt;
                cmbCreditosC.DataTextField = "DESC_TIPO";
                cmbCreditosM.DataTextField = "DESC_TIPO";
                cmbCreditosE.DataTextField = "DESC_TIPO";                                   /*Es necesario modificar código para que el sDescripcionTipo no se modifique*/
                cmbCreditosC.DataValueField = "TIPOCREDITOID";
                cmbCreditosM.DataValueField = "TIPOCREDITOID";
                cmbCreditosE.DataValueField = "TIPOCREDITOID";
                cmbCreditosC.DataBind();
                cmbCreditosM.DataBind();
                cmbCreditosE.DataBind();
                cmbCreditosC.Items.Insert(0, new ListItem("Seleccione..", "-1"));
                cmbCreditosM.Items.Insert(0, new ListItem("Seleccione..", "-1"));
                cmbCreditosE.Items.Insert(0, new ListItem("Seleccione..", "-1"));
            }
            
        }

        protected void btnInsertCred_Click(object sender, EventArgs e)
        {
            obj_CT_DAL.iEstadoID = 1;
            obj_CT_DAL.sDescripcionTipo = txtNomCredNuevo.Text;
            obj_CT_DAL.iTasaInteres = Int32.Parse(txtTasaNuevo.Text);
            obj_CT_DAL.iPlazoMin = Int32.Parse(txtPlazoMinNuevo.Text);
            obj_CT_DAL.iPlazoMax = Int32.Parse(txtPlazoMaxNuevo.Text);

            obj_CT_BLL.InsertarTipoCredito(ref obj_CT_DAL);
        }

        protected void btnConsultarC_Click(object sender, EventArgs e)
        {
            obj_CT_DAL.sDescripcionTipo = cmbCreditosC.SelectedItem.Text;
            //obj_CT_BLL.ListarCreditos(ref obj_CT_DAL);
            obj_CT_BLL.FiltrarCreditos(ref obj_CT_DAL);

            txtNombreCredito.Text = obj_CT_DAL.dt.Rows[0][5].ToString();
            txtTasaInteres.Text = obj_CT_DAL.dt.Rows[0][2].ToString();
            txtPlazoMin.Text = obj_CT_DAL.dt.Rows[0][3].ToString();
            txtPlazoMax.Text = obj_CT_DAL.dt.Rows[0][4].ToString();

            //txtNombreCredito.Text = Convert.ToString(obj_CT_DAL.dt.Rows[0][5]);
        }
    }
}