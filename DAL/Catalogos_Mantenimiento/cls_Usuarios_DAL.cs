using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL.Catalogos_Mantenimiento
{
    public class cls_Usuarios_DAL
    {
        #region VARIABLES PRIVADAS

        private string _sUsuarioID,
                        _sNombre,
                        _sNombre2,
                        _sApellido1,
                        _sApellido2,
                        _sEmail,
                        _sClave, 
                        _sMsjError;
        private int _iRollID, _iEstadoID, _iIntentos;

        private DataTable _dt;
        private char _cAxn;

        #endregion

        #region CONSTRUCTORES O VARIABLES PUBLICAS
        public string sUsuarioID { get => _sUsuarioID; set => _sUsuarioID = value; }
        public string sNombre { get => _sNombre; set => _sNombre = value; }
        public string sNombre2 { get => _sNombre2; set => _sNombre2 = value; }
        public string sApellido1 { get => _sApellido1; set => _sApellido1 = value; }
        public string sApellido2 { get => _sApellido2; set => _sApellido2 = value; }
        public string sEmail { get => _sEmail; set => _sEmail = value; }
        public string sClave { get => _sClave; set => _sClave = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public int iRollID { get => _iRollID; set => _iRollID = value; }
        public int iEstadoID { get => _iEstadoID; set => _iEstadoID = value; }
        public int iIntentos { get => _iIntentos; set => _iIntentos = value; }
        public DataTable Dt { get => _dt; set => _dt = value; }
        public char cAxn { get => _cAxn; set => _cAxn = value; }

        #endregion
    }
}
