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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            //IAdminDA adminDA = DAFactory.CreateAdminDA();
            //this.Label1.Text = adminDA.getAdminByID(1).a_pwd;

            //空与非空判断
            if (loginemail.Text == "" && loginpassword.Text == "")
            {
                Label1.Text = "用户名不能为空！";
                Label2.Text = "密码不能空！";
            }
            else if (loginemail.Text == "")
            {
                Label1.Text = "用户名不能为空！";
                Label2.Text = " ";
            }
            else if (loginpassword.Text == "")
            {
                Label1.Text = " ";
                Label2.Text = "密码不能空！";
            }

            else
            {
                coder c = new coder();
                enterprise en = new enterprise();
                admin a = new admin();
                int notExist = 0, wrongPwd = 0;

                c.c_account = this.loginemail.Text;
                ICoderBL coderBL = ServiceFactory.CreateCoderBL();

                coder mxy = coderBL.getCoderAccount(c.c_account);
                if (coderBL.getCoderAccount(c.c_account) == null)
                {
                    //Label1.Text = "该管理员不存在！";
                    //Label2.Text = "";
                    notExist++;
                }
                else if (coderBL.getCoderAccount(c.c_account).c_pwd != this.loginpassword.Text)
                {
                    //Label1.Text = " ";
                    //Label2.Text = "密码输入错误！";
                    //string str = coderBL.getCoderAccount(c.c_account).c_pwd;
                    //Console.WriteLine(str);
                    wrongPwd++;
                }
                else
                {
                    Response.Redirect("CoderFirst.aspx");
                }
                //======================================================
                a.a_account = this.loginemail.Text;
                IAdminBL adminBL = ServiceFactory.CreateAdminBL();

                if (adminBL.getAdminObject(a.a_account) == null)
                {
                    //Label1.Text = "该管理员不存在！";
                    //Label2.Text = "";
                    notExist++;
                }
                else if (adminBL.getAdminObject(a.a_account).a_pwd != this.loginpassword.Text)
                {
                    //Label1.Text = " ";
                    //Label2.Text = "密码输入错误！";
                    wrongPwd++;
                }
                else
                {
                    Response.Redirect("AdminMain.aspx");
                }
                //======================================================
                
                en.e_account = this.loginemail.Text;
                IEnterpriseBL enBL = ServiceFactory.CreateEnterpriseBL();

                if (enBL.getEnterpriseAccount(en.e_account) == null)
                {
                    //Label1.Text = "该管理员不存在！";
                    //Label2.Text = "";
                    notExist++;
                }
                else if (enBL.getEnterpriseAccount(en.e_account).e_pwd != this.loginpassword.Text)
                {
                    //Label1.Text = " ";
                    //Label2.Text = "密码输入错误！";
                    wrongPwd++;
                }
                else 
                {
                    Response.Redirect("Coding.aspx");
                }

                if(notExist == 3) { Label1.Text = "该账户不存在！"; Label2.Text = ""; }
                else { Label1.Text = ""; Label2.Text = "密码输入错误"; }
            }
        }

    }
}