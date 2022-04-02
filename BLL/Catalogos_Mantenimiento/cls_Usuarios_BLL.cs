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
    public class cls_Usuarios_BLL
    {
        public void VerificarLogin(ref cls_Usuarios_DAL Obj_Usuarios_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreTabla = "TABLA USUARIOS";

            if (Obj_Usuarios_DAL.sUsuarioID == string.Empty)
            {
                Obj_BD_DAL.sNombreSP = @"[SCH_ADMINISTRATIVO].[SP_LOGIN]";
                Obj_BD_DAL.cAxn = 'L';
                Obj_BD_DAL.DtParametros = null;
            }
            else
            {
                Obj_BD_DAL.sNombreSP = @"[SCH_ADMINISTRATIVO].[SP_LOGIN]";
                Obj_BD_DAL.cAxn = 'X';
                #region CREAR DT PARAMETROS

                Obj_BD_DAL.DtParametros = new DataTable("PARAMETROS");

                Obj_BD_DAL.DtParametros.Columns.Add("NOMB_PARAM");
                Obj_BD_DAL.DtParametros.Columns.Add("DATATYPE_PARAM");
                Obj_BD_DAL.DtParametros.Columns.Add("VALOR_PARAM");

                Obj_BD_DAL.DtParametros.Rows.Add(@"@Usuario", "3", Obj_Usuarios_DAL.sUsuarioID);
                Obj_BD_DAL.DtParametros.Rows.Add(@"@Contrasenha", "3", Obj_Usuarios_DAL.sClave);

                #endregion
            }

            Obj_BD_BLL.ExecDataAdapter(ref Obj_BD_DAL);


            if (Obj_BD_DAL.sMsjError == string.Empty)
            {
                Obj_Usuarios_DAL.Dt = Obj_BD_DAL.Ds.Tables[0];
            }
            else
            {
                Obj_Usuarios_DAL.Dt = null;
            }

            Obj_Usuarios_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }
    }
}
