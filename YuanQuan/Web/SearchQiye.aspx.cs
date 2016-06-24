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
    public partial class SearchQiye : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Response.Write("<script>alert('请输入要查询的企业账号！')</script>");
            }

            else
            {
                enterprise ep = new enterprise();
                ep.e_account = this.TextBox1.Text;
                IEnterpriseBL enterpriseBL = ServiceFactory.CreateEnterpriseBL();

                if (enterpriseBL.getEnterpriseObject(ep.e_account) == null)
                {
                    Response.Write("<script>alert('该用户不存在！')</script>");
                }

                else
                {
                    this.Label2.Text = "id : " + enterpriseBL.getEnterpriseObject(ep.e_account).e_id;
                    this.Label3.Text = "账号：" + enterpriseBL.getEnterpriseObject(ep.e_account).e_account;
                    this.Label4.Text = "姓名：" + enterpriseBL.getEnterpriseObject(ep.e_account).e_chanum;
                    this.Label5.Text = "身价：" + enterpriseBL.getEnterpriseObject(ep.e_account).e_currency;
                    this.Label6.Text = "技能：" + enterpriseBL.getEnterpriseObject(ep.e_account).e_name;
                }
            }
        }
    }
}