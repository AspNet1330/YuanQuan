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
    public partial class SearchPerson : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入要查询的个人账号！')</script>");
            }

            else
            {
                coder c = new coder();
                c.c_account = this.TextBox1.Text;
                ICoderBL coderBL = ServiceFactory.CreateCoderBL();

                if (coderBL.getCoderObject(c.c_account) == null)
                {
                    Response.Write("<script>alert('该用户不存在！')</script>");
                }
               
                else
                {
                    this.Label2.Text = "id : " + coderBL.getCoderObject(c.c_account).c_id;
                    this.Label3.Text = "账号：" + coderBL.getCoderObject(c.c_account).c_account;
                    this.Label4.Text = "姓名：" + coderBL.getCoderObject(c.c_account).c_name;
                    this.Label5.Text = "身价：" + coderBL.getCoderObject(c.c_account).c_value;
                    this.Label6.Text = "技能：" + coderBL.getCoderObject(c.c_account).c_skill;
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
        
    }
}