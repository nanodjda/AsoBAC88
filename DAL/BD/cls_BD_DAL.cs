using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace DAL.BD
{
    public class cls_BD_DAL
    {
        #region Variables Privadas

        private SqlConnection _Obj_SqlCnx;
        private SqlDataAdapter _Obj_SqlDap;
        private SqlCommand _Obj_SqlCmd;

        private DataSet _Ds;
        private DataTable _DtParametros;

        private string _sMsjError, _sNombreTabla, _sNombreSP; // SP = STORED PROCEDURE en la BD

        private char _cAxn;

        #endregion

        #region Constructores o variables públicas
        public SqlConnection Obj_SqlCnx { get => _Obj_SqlCnx; set => _Obj_SqlCnx = value; }
        public SqlDataAdapter Obj_SqlDap { get => _Obj_SqlDap; set => _Obj_SqlDap = value; }
        public SqlCommand Obj_SqlCmd { get => _Obj_SqlCmd; set => _Obj_SqlCmd = value; }
        public DataSet Ds { get => _Ds; set => _Ds = value; }
        public DataTable DtParametros { get => _DtParametros; set => _DtParametros = value; }
        public string sMsjError { get => _sMsjError; set => _sMsjError = value; }
        public char cAxn { get => _cAxn; set => _cAxn = value; }
        public string sNombreTabla { get => _sNombreTabla; set => _sNombreTabla = value; }
        public string sNombreSP { get => _sNombreSP; set => _sNombreSP = value; }
        #endregion
    }
}