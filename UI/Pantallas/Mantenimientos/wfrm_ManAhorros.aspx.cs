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
    public partial class wfrm_ManAhorros : System.Web.UI.Page
    {

        cls_AhorrosT_BLL obj_AT_BLL = new cls_AhorrosT_BLL();
        cls_AhorrosT_DAL obj_AT_DAL = new cls_AhorrosT_DAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                obj_AT_BLL.ListarAhorros(ref obj_AT_DAL);

                cmbAhorroC.DataSource = obj_AT_DAL.dt;
                cmbAhorroC.DataTextField = "DESC_TIPO";
                cmbAhorroC.DataValueField = "TIPOAHORROID";
                cmbAhorroC.DataBind();
                cmbAhorroC.Items.Insert(0, new ListItem("Seleccione..", "-1"));

                cmbAhorroM.DataSource = obj_AT_DAL.dt;
                cmbAhorroM.DataTextField = "DESC_TIPO";
                cmbAhorroM.DataValueField = "TIPOAHORROID";
                cmbAhorroM.DataBind();
                cmbAhorroM.Items.Insert(0, new ListItem("Seleccione..", "-1"));

                cmbAhorroE.DataSource = obj_AT_DAL.dt;
                cmbAhorroE.DataTextField = "DESC_TIPO";
                cmbAhorroE.DataValueField = "TIPOAHORROID";
                cmbAhorroE.DataBind();
                cmbAhorroE.Items.Insert(0, new ListItem("Seleccione..", "-1"));
            }
        }

        protected void btnInsertCred_Click(object sender, EventArgs e)
        {
            obj_AT_DAL.iEstadoID = 1;
            obj_AT_DAL.sDescripcionTipo = txtNomAhorroNuevo.Text;
            obj_AT_DAL.bPorcentajeMonto = chkDatos.Items[0].Selected;
            obj_AT_DAL.bRetiroExtra = chkDatos.Items[1].Selected;
            obj_AT_DAL.bPenalizacion = chkDatos.Items[2].Selected;
            obj_AT_DAL.iPlazo = Int32.Parse(txtPlazoAhorroNuevo.Text);
            obj_AT_DAL.iPorcentaje = Int32.Parse(txtPorAhorroNuevo.Text);

            obj_AT_BLL.InsertarTipoAhorro(ref obj_AT_DAL);
        }

        protected void btnConsultarC_Click(object sender, EventArgs e)
        {
            obj_AT_DAL.sDescripcionTipo = cmbAhorroC.SelectedItem.Text;
            obj_AT_BLL.FiltrarTipoAhorro(ref obj_AT_DAL);

            txtNomAhorroC.Text = obj_AT_DAL.dt.Rows[0][7].ToString();
        }
    }
}