using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Catalogos_Mantenimiento
{
    public class cls_CreditosT_DAL
    {

        #region VARIABLES PRIVADAS

        private int _iTipoCreditoID, _iEstadoID, _iTasaInteres, _iPlazoMin, _iPlazoMax;
        private string _sDescripcionTipo, _sMsjError;

        private DataTable _dt;
        private char _cAxn;

        #endregion

        #region CONSTRUCTORES O VARIABLES PUBLICAS
        public int iTipoCreditoID { get => _iTipoCreditoID; set => _iTipoCreditoID = value; }
        public int iEstadoID { get => _iEstadoID; set => _iEstadoID = value; }
        public int iTasaInteres { get => _iTasaInteres; set => _iTasaInteres = value; }
        public int iPlazoMin { get => _iPlazoMin; set => _iPlazoMin = value; }
        public int iPlazoMax { get => _iPlazoMax; set => _iPlazoMax = value; }
        public string sDescripcionTipo { get => _sDescripcionTipo; set => _sDescripcionTipo = value; }
        public DataTable dt { get => _dt; set => _dt = value; }
        public char cAxn { get => _cAxn; set => _cAxn = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        #endregion
    }
}
