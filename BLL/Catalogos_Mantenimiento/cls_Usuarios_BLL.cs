using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.BD;
using BLL.BD;
using DAL.Catalogos_Mantenimiento;
using BLL.Mail;
using System.Data;
using System.Web.Security;

namespace BLL.Catalogos_Mantenimiento
{
    public class cls_Usuarios_BLL
    {

        public bool ExisteAsociado(ref cls_Usuarios_DAL obj_Usuarios_DAL)
        {
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreTabla = "TABLA USUARIOS";

            if (obj_Usuarios_DAL.sUsuarioID == string.Empty)
            {
                obj_Usuarios_DAL.sMsjError = "No digito ningun nombre de usuario";
                return false;
            }
            else
            {
                Obj_BD_DAL.sNombreSP = @"[SCH_ADMINISTRATIVO].[SP_BUSCAR_USUARIO]";
                Obj_BD_DAL.cAxn = 'F';
                #region CREAR DT PARAMETROS

                Obj_BD_DAL.DtParametros = new DataTable("PARAMETROS");

                Obj_BD_DAL.DtParametros.Columns.Add("NOMB_PARAM");
                Obj_BD_DAL.DtParametros.Columns.Add("DATATYPE_PARAM");
                Obj_BD_DAL.DtParametros.Columns.Add("VALOR_PARAM");

                Obj_BD_DAL.DtParametros.Rows.Add(@"@UsuarioID", "3", obj_Usuarios_DAL.sUsuarioID);

                #endregion
            }

            Obj_BD_BLL.ExecDataAdapter(ref Obj_BD_DAL);


            if (Obj_BD_DAL.sMsjError == string.Empty) // En caso de no obtener un error al ejecutar el SP
            {
                obj_Usuarios_DAL.Dt = Obj_BD_DAL.Ds.Tables[0]; //Obtenemos una tabla con una sola columna y fila

                if (obj_Usuarios_DAL.Dt.Rows[0][0].ToString() == "0")   // Si es 0 es que no se encontró dicho usuario, 1 es que si ya existe
                {
                    return true;
                } else
                {
                    return false;
                }

            }
            else
            {
                obj_Usuarios_DAL.Dt = null;
            }

            obj_Usuarios_DAL.sMsjError = Obj_BD_DAL.sMsjError;
            return false;
        }

        public void InsertarAsociado(ref cls_Usuarios_DAL Obj_Usuarios_DAL)
        {
            string ranPass = Membership.GeneratePassword(8, 4);
            cls_BD_DAL Obj_BD_DAL = new cls_BD_DAL();
            cls_BD_BLL Obj_BD_BLL = new cls_BD_BLL();

            Obj_BD_DAL.sNombreSP = @"[SCH_ADMINISTRATIVO].[SP_INSERTAR_USUARIOS]";
            Obj_BD_DAL.cAxn = 'N';

            #region CREAR DT PARAMETROS

            Obj_BD_DAL.DtParametros = new DataTable("PARAMETROS");

            Obj_BD_DAL.DtParametros.Columns.Add("NOMB_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("DATATYPE_PARAM");
            Obj_BD_DAL.DtParametros.Columns.Add("VALOR_PARAM");

            Obj_BD_DAL.DtParametros.Rows.Add(@"@UsuarioID", "3", Obj_Usuarios_DAL.sUsuarioID);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Cedula", "3", Obj_Usuarios_DAL.sCedula);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Nombre", "3", Obj_Usuarios_DAL.sNombre);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Nombre2", "3", Obj_Usuarios_DAL.sNombre2);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Apellido1", "3", Obj_Usuarios_DAL.sApellido1);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Apellido2", "3", Obj_Usuarios_DAL.sApellido2);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Email", "3", Obj_Usuarios_DAL.sEmail);
            Obj_BD_DAL.DtParametros.Rows.Add(@"@Clave", "3", ranPass);

            #endregion

            Obj_BD_BLL.ExecCommand(ref Obj_BD_DAL);

            cls_Mail_BLL.sendMail(Obj_Usuarios_DAL.sEmail, Obj_Usuarios_DAL.sNombre, Obj_Usuarios_DAL.sApellido1, Obj_Usuarios_DAL.sUsuarioID, ranPass);

            Obj_Usuarios_DAL.sMsjError = Obj_BD_DAL.sMsjError;
        }

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
                Obj_BD_DAL.cAxn = 'F';
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
