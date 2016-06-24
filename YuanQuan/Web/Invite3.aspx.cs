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
using System.Threading;

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
                this.EnterpriseName.Text = enterprise.e_name;
                this.ChallengeName.Text = getPosition() + "-邀请挑战";

            }
        }

        public string getPosition()
        {
            return "[" + ChallengeHelper.getChallengeLevel(challenge.cha_level) + "]" + challenge.cha_type + "工程师";
        }

        public string getMailContext(string mail)
        {
            return "您好：&lt;br&gt;我们非常高兴的通知您，通过了我们的简历筛选，为了评估您的真实编程能力，我们准备了[" + 
                getPosition() + "]的在线编程挑战，希望您能完成！&lt;br&gt;点击下面的链接进入在线编程挑战: :&lt;br&gt;[链接]。&lt;br&gt;以下是您的登录信息:&lt;br&gt;用户名：["+mail+"]&lt;br&gt;密码["+mail+"]&lt;br&gt;感谢您的配合！&lt;br&gt;&lt;br&gt;[" 
                + enterprise.e_name + "]&lt;br&gt;[" + DateTime.Now+"]";
        }

        public string getMailHeader()
        {
            return "[" + enterprise.e_name + "]-在线笔试邀请函";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageChallenge.aspx", false);
            Thread chaProThread = new Thread(saveCoderChallenge);
            chaProThread.Start();
        }


        void saveCoderChallenge()
        {
            string mail = this.TextBox1.Text;
            string[] a = mail.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            ICoderChallengeService ccs = ServiceFactory.createCoderChallengeService();
            ICoderService cs = ServiceFactory.createCoderService();

            for (int i = 0; i < a.Length; i++)
            {
                coder coder = cs.getCoderByAccount(a[i]);
                if (coder == null)
                {
                    coder = new coder();
                    coder.c_account = a[i];
                    coder.c_pwd=a[i];
                    coder.c_name = a[i];
                    coder.c_id = cs.insert(coder);
                }
                coder_cha cc = new coder_cha();
                cc.c_id = coder.c_id;
                cc.usetime = -1;
                cc.c_account = a[i];
                cc.cha_id = challenge.cha_id;
                cc.grade = -1;
                ccs.saveCoderChallenge(cc);
                CoderChallengeHelper.senChallengeEmail(a[i], getMailHeader(), getMailContext(a[i]));
            }
        }
    }
}