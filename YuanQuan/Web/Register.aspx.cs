using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLLFactory;
using BLLInterface;

namespace Web
{
    public partial class Register : System.Web.UI.Page
    {

        private static String account;
        private static String pwd;
        private static String reType;
       private static String   str;
       private static String str1;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }



        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            IRegisterService ir = ServiceFactory.createRegisterService();
            Boolean r ;
            if (reType == "2")
            {
                coder a = new coder();
                a.c_account = account;
                a.c_pwd = pwd;
                r = ir.registerCoder(a);
            }
            else { 
                enterprise ep = new enterprise ();
                ep.e_account = account;
                ep.e_pwd = pwd;
                r = ir.registerEnterprise(ep);   
            }

        }

        public static  int GetValue(String regType,String login_mobile,String login_capha,String login_password,String login_vcode) {
           
               reType = regType;
               account = login_mobile;
               pwd = login_password;
                if (str != login_capha) {
                    return 1;
                }
                
                if(str1 != login_vcode){
                    return 2;
                }
                else{
                    return 0;
                }
            
        }

        public static  void GetMailValue(String regType,String login_email,String login_password){
            reType = regType;
            account = login_email;
            pwd = login_password;
        
        }
    }
}