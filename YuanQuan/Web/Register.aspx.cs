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
        public string reType;
        public string regWay;
        public string email;
        public string reWay;
        public string name;
     //   public static Boolean b = false;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)   //首次加载时
            {

                loginespertise.AutoPostBack = true;

                loginespertise.Items.Add("JAVA");

                loginespertise.Items.Add("C++");

                loginespertise.Items.Add("C");

                loginespertise.Items.Add("ANDROID");

                loginespertise.Items.Add("IOS");

                loginespertise.Items.Add("PHP");

                loginespertise.Items.Add("PYTHON");
                loginskill.AutoPostBack = true;

                loginskill.Items.Add("JAVA");

                loginskill.Items.Add("C++");

                loginskill.Items.Add("C");

                loginskill.Items.Add("ANDROID");

                loginskill.Items.Add("IOS");

                loginskill.Items.Add("PHP");

                loginskill.Items.Add("PYTHON");
               

            }


        }

        public void GetValue(string regType,string regWay) {
            reType = regType;
            reWay = regWay;
            if (reWay == "1")
            {
                if (reType == "2")
                {
                    espertise.Style["Display"] = "None"; 

                    lname.Style["Display"] = "None"; 
                    
                }
                else
                {
                    espertise.Style["Display"] = "Block";

                    lname.Style["Display"] = "Block";  
                  
                }
            }
            else
            {
              
                if (reType == "2")
                {

                    skill.Style["Display"] = "None"; 

                    name1.Style["Display"] = "None";  
                }
                else
                {

                    skill.Style["Display"] = "Block";

                    name1.Style["Display"] = "Block";  
                }


            }

        }

        protected  Boolean URegister(String account,String pwd,String name,String espertise)
        {
            IRegisterService ir = ServiceFactory.createRegisterService();
            Boolean r ;
            
                coder a = new coder();
                a.c_account = account;
                a.c_pwd = pwd;
                a.c_name = name;
                a.c_skill = espertise;
                r = ir.registerCoder(a);
           
                
          
            return r;
        }


        protected Boolean ERegister(String account, String pwd)
        {
            IRegisterService ir = ServiceFactory.createRegisterService();
            Boolean r;
            enterprise ep = new enterprise();
            ep.e_account = account;
            ep.e_pwd = pwd;
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

        protected void submitClick(object sender, EventArgs e)
        {
           
           
           

        }



        protected void loginespertise_SelectedIndexChanged(object sender, EventArgs e)
        {
            epertise = loginespertise.SelectedItem.Text;
        }
        protected void loginskill_SelectedIndexChanged(object sender, EventArgs e)
        {
            epertise = loginskill.SelectedItem.Text;
        }

        protected void Regester_Click(object sender, EventArgs e)
        {
            capha = logincapcha.Text;
            Boolean r;

            lvcode = logincode.Text;
            vcode = ImgVerify.getRand();
            if (vcode != lvcode)
            {
                logincode.Text = "";
                return;
            }
            if (capha != ImgVerify.getRand())
            {
                logincapcha.Text = "";
                return;
            }
            if (reType == "2")
            {
                if (regWay == "1") account = loginmobile.Text;
                else account = loginemail.Text;
                name = loginname.Text;
                password = loginpassword.Text;
                r = URegister(account, password, name, epertise);
            }
            else
            {
                if (regWay == "1") account = loginmobile.Text;
                else account = loginemail.Text;
                password = loginpassword1.Text;
                name = loginname1.Text;
                r = ERegister(account, password);
            }
            if (regWay == "1" && r)
            {
                SendMailHelper.send(account);
            }
        }

    }
}