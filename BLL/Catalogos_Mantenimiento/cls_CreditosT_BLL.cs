using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.BD;
using BLL.BD;
using DAL.Catalogos_Mantenimiento;
using System.Data;

namespace BLL.Catalogos_Mantenimiento
{
    public class cls_CreditosT_BLL
    {

        public void InsertarTipoCredito(ref cls_CreditosT_DAL Obj_CreditosT_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreSP = @"[SCH_CREDITOS].[SP_INSERTAR_TIPOS_CREDITOS]";
            Obj_BD_DAL.cAxn = 'S';

            #region CREAR DT PARAMETROS

            Obj_BD_DAL.DtParametros = new DataTable("PARAMETROS");

            Obj_BD_DAL.DtParametros.Columns.Add("NOMB_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("DATATYPE_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("VALOR_PARAM");

            Obj_BD_DAL.DtParametros.Rows.Add(@"@EstadoID", "5", Obj_CreditosT_DAL.iEstadoID);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@TasaInteres", "5", Obj_CreditosT_DAL.iTasaInteres);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@PlazoMin", "13", Obj_CreditosT_DAL.iPlazoMin);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@PlazoMax", "13", Obj_CreditosT_DAL.iPlazoMax);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@DescTipo", "3", Obj_CreditosT_DAL.sDescripcionTipo);

            #endregion

            Obj_BD_BLL.ExecCommand(ref Obj_BD_DAL);

            Obj_CreditosT_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }

        public void ListarCreditos(ref cls_CreditosT_DAL obj_CT_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreTabla = "TABLA Tipos Credito";

            
            Obj_BD_DAL.sNombreSP = @"[SCH_CREDITOS].[SP_LISTAR_TIPOS_CREDITOS]";
            Obj_BD_DAL.cAxn = 'L';
            Obj_BD_DAL.DtParametros = null;

            Obj_BD_BLL.ExecDataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {
                obj_CT_DAL.dt = Obj_BD_DAL.Ds.Tables[0];
            }
            else
            {
                obj_CT_DAL.dt = null;
            }

            obj_CT_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }

    }
}
