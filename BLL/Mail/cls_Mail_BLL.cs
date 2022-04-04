using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Net;

using DAL.Mail;

namespace BLL.Mail
{
    public static class cls_Mail_BLL
    {
        static cls_Mail_DAL obj_Mail = new cls_Mail_DAL();


        public static string sendMail(string to, string pNombre, string pApellido, string pUsuario, string pClave)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress(obj_Mail.sFrom, obj_Mail.sDisplayName);
                mail.To.Add(to);

                mail.Subject = "Bienvenido a AsoBAC88";
                mail.Body = crearBody(pNombre, pApellido, pUsuario, pClave);
                mail.IsBodyHtml = true;

                SmtpClient client = new SmtpClient("smtp.office365.com", 587);
                client.Credentials = new NetworkCredential(obj_Mail.sFrom, obj_Mail.sCredenciales);
                client.EnableSsl = true;

                client.Send(mail);
                obj_Mail.sMsg = "¡Correo enviado exitosamente! Pronto te contactaremos.";
            }
            catch (Exception ex)
            {
                obj_Mail.sMsg = ex.Message + ". Por favor verifica tu conexión a internet y que tus datos sean correctos e intenta nuevamente.";
                throw;
            }

            return obj_Mail.sMsg;
        }

        private static string crearBody(string pNombre, string pApellido, string pUsuario, string pClave)
        {
            string sBody = @"<style>
                                    h1 {color:dodgerblue;}
                                    h2 {color:darkorange;}
                                  </style>
                                  <h1>Estimado: " + pNombre + " " + pApellido + "</h1>" +
                                  "<h2> Usuario: " + pUsuario + "</h2>" + 
                                  "<h2> Su contraseña temporal es: " + pClave + "</h2>";
            return sBody;
        }

    }
}
