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
    public class cls_AhorrosT_BLL
    {
        public void InsertarTipoAhorro(ref cls_AhorrosT_DAL Obj_AhorrosT_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreSP = @"[SCH_AHORROS].[SP_INSERTAR_TIPOS_AHORROS]";
            Obj_BD_DAL.cAxn = 'S';

            #region CREAR DT PARAMETROS

            Obj_BD_DAL.DtParametros = new DataTable("PARAMETROS");

            Obj_BD_DAL.DtParametros.Columns.Add("NOMB_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("DATATYPE_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("VALOR_PARAM");

            Obj_BD_DAL.DtParametros.Rows.Add(@"@EstadoID", "5", Obj_AhorrosT_DAL.iEstadoID);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@PorcentajeMonto", "11", Obj_AhorrosT_DAL.bPorcentajeMonto);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@RetiroExtra", "11", Obj_AhorrosT_DAL.bRetiroExtra);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Penalizacion", "11", Obj_AhorrosT_DAL.bPenalizacion);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Plazo", "13", Obj_AhorrosT_DAL.iPlazo);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Porcentaje", "5", Obj_AhorrosT_DAL.iPorcentaje);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@DescTipo", "3", Obj_AhorrosT_DAL.sDescripcionTipo);

            #endregion

            Obj_BD_BLL.ExecCommand(ref Obj_BD_DAL);

            Obj_AhorrosT_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }

        public void ListarAhorros(ref cls_AhorrosT_DAL obj_AT_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreTabla = "TABLA Tipos Credito";


            Obj_BD_DAL.sNombreSP = @"[SCH_AHORROS].[SP_LISTAR_TIPOS_AHORROS]";
            Obj_BD_DAL.cAxn = 'L';
            Obj_BD_DAL.DtParametros = null;

            Obj_BD_BLL.ExecDataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {
                obj_AT_DAL.dt = Obj_BD_DAL.Ds.Tables[0];
            }
            else
            {
                obj_AT_DAL.dt = null;
            }

            obj_AT_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }

        public void FiltrarTipoAhorro(ref cls_AhorrosT_DAL obj_AT_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreTabla = "TABLA Productos";

            
            Obj_BD_DAL.sNombreSP = @"[SCH_AHORROS].[SP_FILTRAR_TIPOS_AHORROS]";
            Obj_BD_DAL.cAxn = 'F';
            #region CREAR DT PARAMETROS

            Obj_BD_DAL.DtParametros = new DataTable("PARAMETROS");

            Obj_BD_DAL.DtParametros.Columns.Add("NOMB_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("DATATYPE_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("VALOR_PARAM");

            Obj_BD_DAL.DtParametros.Rows.Add(@"@Filtro", "3", obj_AT_DAL.sDescripcionTipo);

            #endregion

            Obj_BD_BLL.ExecDataAdapter(ref Obj_BD_DAL);

            if (Obj_BD_DAL.sMsjError == string.Empty)
            {
                obj_AT_DAL.dt = Obj_BD_DAL.Ds.Tables[0];
            }
            else
            {
                obj_AT_DAL.dt = null;
            }

            obj_AT_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }
    }
}
