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
    public partial class DelAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入要删除的ID！')</script>");
            }
            else if (TextBox1.Text == "1")
            {
                Response.Write("<script>alert('你没有权限删除该账号！')</script>");
            }
            else if(TextBox1.Text.Trim() == "")
            {
                Response.Write("<script>alert('输入了非法字符！')</script>");
            }
            else
            {
                admin a = new admin();
                a.a_id = int.Parse(this.TextBox1.Text);
                IAdminBL adminBL = ServiceFactory.CreateAdminBL();

                if (adminBL.getAdminID(a.a_id) == null)
                {
                    Response.Write("<script>alert('该管理员不存在！')</script>");
                }
               
                else
                {
                    adminBL.delAdmin(a.a_id);
                    Response.Write("<script>alert('删除成功！')</script>");
                }
            }
        }

    }
}