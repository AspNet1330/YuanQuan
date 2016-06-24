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
    public partial class SearchAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入要查询的管理员账号！')</script>");
            }

            else
            {
                admin a = new admin();
                a.a_account = this.TextBox1.Text;
                IAdminBL adminBL = ServiceFactory.CreateAdminBL();

                if (adminBL.getAdminObject(a.a_account) == null)
                {
                    Response.Write("<script>alert('该管理员不存在！')</script>");
                }
                else if (adminBL.getAdminObject(a.a_account).a_account == "1")
                {
                    this.Label2.Text = "id : " + adminBL.getAdminObject(a.a_account).a_id;
                    this.Label3.Text = "账号：" + adminBL.getAdminObject(a.a_account).a_account;
                    this.Label4.Text = "";
                }
                else
                {
                    this.Label2.Text = "id : " + adminBL.getAdminObject(a.a_account).a_id;
                    this.Label3.Text = "账号：" + adminBL.getAdminObject(a.a_account).a_account;
                    //this.Label4.Text = "密码：" + adminBL.getAdminObject(a.a_account).a_pwd;
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }


    }
}