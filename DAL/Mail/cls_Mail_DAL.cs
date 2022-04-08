using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Mail
{
    public class cls_Mail_DAL
    {
        #region VARIABLES PRIVADAS

        private string _sMsg = "Error al enviar este correo. Por favor verifique los datos o intente más tarde.";
        private string _sFrom = "asobac88@outlook.com";
        private string _sCredenciales = "@soBAC882022";
        private string _sDisplayName = "AsoBAC88 - Tu Asociación";

        #endregion

        #region CONSTRUCTORES O VARIABLES PUBLICAS
        public string sMsg { get => _sMsg; set => _sMsg = value; }
        public string sFrom { get => _sFrom; set => _sFrom = value; }
        public string sCredenciales { get => _sCredenciales; set => _sCredenciales = value; }
        public string sDisplayName { get => _sDisplayName; set => _sDisplayName = value; }

        #endregion
    }
}
