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
    public partial class Filter : System.Web.UI.Page
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
                if (challenge == null)
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

                bindProblemRepeater();
            }
        }


        public string getChallName()
        {
            string a = "[" + challenge.cha_level.Substring(0, 2) + "]" + challenge.cha_type+"工程师";
            return a;
        }


        public string getEntership()
        {
            return enterprise.e_id.ToString();
        }

        public string getDate()
        {
            return "发起时间：" + challenge.cha_date.ToString().Substring(0,9);
        }

        protected void CloseButton_Click(object sender, EventArgs e)
        {
            ServiceFactory.createChallengeService().deleteChallenge(challenge.cha_id);
            Response.Redirect("ManageChallenge.aspx", false);
        }


        void bindProblemRepeater()
        {
            List<cha_problems> chaPros = ServiceFactory.createChallengeProblemService().getProblemByChallengeId(challenge.cha_id);
           List<problem> problems =new List<problem>();
            for (int i = 0; i < chaPros.Count; i++)
            {
                problems.Add(ServiceFactory.createProblemService().getProblemById(chaPros.ElementAt(i).p_id));
            }

            ProblemRepeater.DataSource = problems;
            ProblemRepeater.DataBind();
        }
    }
}