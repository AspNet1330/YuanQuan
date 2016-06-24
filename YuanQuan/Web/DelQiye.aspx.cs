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
    public partial class DelQiye : System.Web.UI.Page
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
            else if (TextBox1.Text.Trim() == "")
            {
                Response.Write("<script>alert('输入了非法字符！')</script>");
            }
            else
            {
                enterprise ep = new enterprise();
                ep.e_id = int.Parse(this.TextBox1.Text);
                IEnterpriseBL enterpriseBL = ServiceFactory.CreateEnterpriseBL();

                if (enterpriseBL.getEnterpriseID(ep.e_id) == null)
                {
                    Response.Write("<script>alert('该用户不存在！')</script>");
                }
                else
                {
                    enterpriseBL.delEnterprise(ep.e_id);
                    Response.Write("<script>alert('删除成功！')</script>");
                }
            }
        }
    }
}