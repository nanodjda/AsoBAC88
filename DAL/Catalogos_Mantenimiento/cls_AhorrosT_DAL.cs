using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Catalogos_Mantenimiento
{
    public class cls_AhorrosT_DAL
    {
        #region VARIABLES PRIVADAS

        private int _iTipoAhorroID, _iEstadoID, _iPlazo, _iPorcentaje;
        private bool _bPorcentajeMonto, _bRetiroExtra, _bPenalizacion;
        private string _sDescripcionTipo, _sMsjError;

        private DataTable _dt;
        private char _cAxn;

        #endregion

        #region CONSTRUCTORES O VARIABLES PUBLICAS
        public int iTipoAhorroID { get => _iTipoAhorroID; set => _iTipoAhorroID = value; }
        public int iEstadoID { get => _iEstadoID; set => _iEstadoID = value; }
        public bool bPorcentajeMonto { get => _bPorcentajeMonto; set => _bPorcentajeMonto = value; }
        public bool bRetiroExtra { get => _bRetiroExtra; set => _bRetiroExtra = value; }
        public bool bPenalizacion { get => _bPenalizacion; set => _bPenalizacion = value; }
        public int iPlazo { get => _iPlazo; set => _iPlazo = value; }
        public int iPorcentaje { get => _iPorcentaje; set => _iPorcentaje = value; }
        public string sDescripcionTipo { get => _sDescripcionTipo; set => _sDescripcionTipo = value; }
        public DataTable dt { get => _dt; set => _dt = value; }
        public char cAxn { get => _cAxn; set => _cAxn = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        #endregion
    }
}
