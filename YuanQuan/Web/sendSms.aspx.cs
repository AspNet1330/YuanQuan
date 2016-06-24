using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PublicHelp;
using System.Web.SessionState;

namespace Web
{

    public class Res {
        public Boolean b;
        public String s;
    }
    public partial class sendSms : System.Web.UI.Page
    {

        Res res = new Res();

        protected void Page_Load(object sender, EventArgs e)
        {
          


        }

        private Res SendVSMS() {
            string phone = Request.Form["phone"].ToArray()[0].ToString();
            string vcode = GetRandString(6);
       //     Session["vcode"] = vcode;
            string msg = "Hello,你的验证码是" + vcode;
            if (SendSMSHelper.SendMsg(phone, msg))
            {
                res.b = true;
                res.s = vcode;
            }
            else
            {
                res.b = false;
            }
            return res;
        }

        private string GetRandString(int len)
        {
            string s = "0123456789";
           // string s = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string str = "";
            Random r = new Random();
            for (int i = 0; i < len; i++)
            {
                str += s.Substring(r.Next(s.Length), 1);
            }

            return str;
        }
    }
}