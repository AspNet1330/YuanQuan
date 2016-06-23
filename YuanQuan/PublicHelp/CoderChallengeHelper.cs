using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PublicHelp
{
    public class CoderChallengeHelper
    {
        public static void senChallengeEmail(String strto,String strSubject,String strBody)
        {
            string strSmtpServer = "smtp.qq.com";
            string strFrom = "1470545610@qq.com";
            string strFromPass = "1587124918";

            System.Net.Mail.SmtpClient client = new System.Net.Mail.SmtpClient(strSmtpServer);
          
           
            System.Net.Mail.MailMessage message = new System.Net.Mail.MailMessage(strFrom, strto, strSubject, strBody);
           

            client.Host = strSmtpServer;
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(strFrom, strFromPass);
            client.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

            client.Send(message);

        }
    }
}
