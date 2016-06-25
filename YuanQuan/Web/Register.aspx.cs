using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PublicHelp;
using System.Web.SessionState;
using Model;
using BLLFactory;
using BLLInterface;

namespace Web
{
    public partial class Register : System.Web.UI.Page
    {


        
        public string account;
        public string vcode;
        public string lvcode;
        public string password;
        public string epertise;
        public string capha;
        public int reType ;

        public string email;
        public int reWay;
        public string name;
     //   public static Boolean b = false;
      
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)   //首次加载时
            {

              
                loginespertise.AutoPostBack = false;

                loginespertise.Items.Add("JAVA");

                loginespertise.Items.Add("C++");

                loginespertise.Items.Add("C");

                loginespertise.Items.Add("ANDROID");

                loginespertise.Items.Add("IOS");

                loginespertise.Items.Add("PHP");

                loginespertise.Items.Add("PYTHON");
              
                loginskill.AutoPostBack = false;

                loginskill.Items.Add("JAVA");

                loginskill.Items.Add("C++");

                loginskill.Items.Add("C");

                loginskill.Items.Add("ANDROID");

                loginskill.Items.Add("IOS");

                loginskill.Items.Add("PHP");

                loginskill.Items.Add("PYTHON");


            } 

        }

        protected Boolean URegister(String account, String pwd, String name, String espertise)
        {
            IRegisterService ir = ServiceFactory.createRegisterService();
            Boolean r;
            
                coder a = new coder();
                a.c_account = account;
                a.c_pwd = pwd;
                a.c_name = name;
                a.c_skill = espertise;
                r = ir.registerCoder(a);
           
                
          
            return r;
        }


        protected Boolean ERegister(String account, String pwd,String name)
        {
            IRegisterService ir = ServiceFactory.createRegisterService();
            Boolean r;
            enterprise ep = new enterprise();
            ep.e_account = account;
            ep.e_pwd = pwd;
            ep.e_name = name;
            r = ir.registerEnterprise(ep);
            return r;
        }

   

    

        protected void btn_send_sms_Click(object sender, EventArgs e)
        {
           
            account = loginmobile.Text;
            vcode = GetRandString(6);
            //     Session["vcode"] = vcode;
            string msg = "Hello,你的验证码是" + vcode;
            if (SendSMSHelper.SendMsg(account, msg))
            {
               
            }
            else
            {
                SendSMSHelper.SendMsg(account, msg);
            }

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




        protected void loginespertise_SelectedIndexChanged1(object sender, EventArgs e)
        {
            epertise = loginespertise.SelectedItem.Text;
        }
        protected void loginskill_SelectedIndexChanged(object sender, EventArgs e)
        {
            epertise = loginskill.SelectedItem.Text;
        }

        protected void Regester_Click(object sender, EventArgs e)
        {
            Boolean r;
            if (reWay == 1)
            {
                capha = logincapcha.Text;


                lvcode = logincode.Text;

                //if (vcode != lvcode)
                //{
                //    logincode.Text = "";
                //    return;
                //}
                String str = ImgVerify.getRand();
                if (!capha.ToUpper().Equals(str.ToUpper()))
                {
                    logincapcha.Text = "";
                    //  return;
                }
                account = loginmobile.Text;
                password = loginpassword.Text;
                name = loginname.Text;
                if (reType == 2)
                {
                    r = URegister(account, password, name, epertise);

                }
                else
                {
                    r = ERegister(account, password, name);
                }
            }


            else
            {
                account = loginemail.Text;
                password = loginpassword1.Text;
                name = loginname1.Text;
                if (reType == 2)
                {
                    r = URegister(account, password, name, epertise);

                }
                else
                {
                    r = ERegister(account, password, name);
                }
            }




            if (reWay == 2 && r)
            {
                SendMailHelper.send(account);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int i = 0;
            Button1.Text=loginemail.Text;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            reType = 1;
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            reType = 2;//kai
        }

        protected void loginmobile_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void way1_Click1(object sender, EventArgs e)
        {
            reWay = 1;//shou

           
        }

        protected void way2_Click(object sender, EventArgs e)
        {
           
           
            reWay = 2;
            
            
        }


    }
}