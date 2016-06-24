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
    public partial class DelPerson : System.Web.UI.Page
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
                coder c = new coder();
                c.c_id = int.Parse(this.TextBox1.Text);
                ICoderBL coderBL = ServiceFactory.CreateCoderBL();

                if (coderBL.getCoderID(c.c_id) == null)
                {
                    Response.Write("<script>alert('该用户不存在！')</script>");
                }
                else
                {
                    coderBL.delCoder(c.c_id);
                    Response.Write("<script>alert('删除成功！')</script>");
                }
            }
        }
    }
}