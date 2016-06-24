using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLLInterface;
using BLLFactory;

namespace Web
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script>alert('ID或密码不能为空！')</script>");
            }
            else if (TextBox1.Text.Trim() == "" || TextBox2.Text.Trim() == "" || TextBox2.Text.Trim() == "")
            {
                Response.Write("<script>alert('输入了非法字符！')</script>");
            }
            else if (TextBox2.Text != TextBox3.Text)
            { 
                Response.Write("<script>alert('两次密码输入不一致！')</script>"); 
            }
            else
            {
                admin a = new admin();
                a.a_account = this.TextBox1.Text;
                a.a_pwd = this.TextBox2.Text;
                IAdminBL adminBL = ServiceFactory.CreateAdminBL();
                if (adminBL.getAdminObject(a.a_account) != null)
                {
                    Response.Write("<script>alert('该用户已存在！')</script>");
                }
                else 
                {
                    adminBL.addAdmin(a);
                    Response.Write("<script>alert('添加成功！')</script>");
                }
            }
        }
    }
}