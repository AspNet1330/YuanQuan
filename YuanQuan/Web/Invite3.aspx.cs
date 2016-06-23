using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLLFactory;
using BLLInterface;
using PublicHelp;

namespace Web
{
    public partial class Invite3 : System.Web.UI.Page
    {
        static string id;
        static challenge challenge;
        static enterprise enterprise;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = Request.QueryString["id"];
                if (id == null)
                {
                    Response.Redirect("404.html", false);
                    return;
                }
                int challengeId = int.Parse(id);
                challenge = ServiceFactory.createChallengeService().getChallengeByChallengeId(challengeId);
                if (challenge==null)
                {
                    Response.Redirect("404.html", false);
                    return;
                }

                enterprise = (enterprise)Session["enterprise"];
                if (enterprise == null)
                {
                    Response.Redirect("404.html", false);
                    return;
                }

                email_subject_id.Text = getMailHeader();
            }
        }

        public string getEntership()
        {
            return enterprise.e_id.ToString();
        }


        public string getChallName()
        {
            string a = "[" + challenge.cha_level.Substring(0,2) + "]" + challenge.cha_type + "工程师-邀请挑战";
            return a;
        }

        public string getMailContext()
        {
            return "您好：&lt;br&gt;我们非常高兴的通知您，通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[职位]的在线编程挑战，希望您能完成！&lt;br&gt;点击下面的链接进入在线编程挑战: :&lt;br&gt;[链接]。&lt;br&gt;以下是您的登录信息:&lt;br&gt;用户名：[用户名]&lt;br&gt;密码[密码]&lt;br&gt;感谢您的配合！&lt;br&gt;&lt;br&gt;[公司名]&lt;br&gt;[时间]";
        }

        public string getMailHeader()
        {
            return "[北京交通大学信息安全科技公司]-在线笔试邀请函";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mail = this.TextBox1.Text;
            string[] a = mail.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);

            for (int i = 0; i < a.Length; i++)
            {
                CoderChallengeHelper.senChallengeEmail(a[i],getMailContext(),getMailHeader());
            }
        }
    }
}