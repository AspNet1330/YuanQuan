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

                if (challenge.cha_state==0)
                {
                    this.CloseButton.Visible = false;
                }

                this.EntersipName.Text = enterprise.e_name;
                this.ChallengeName.Text = getChallName();
                this.ChallengeTime.Text = "发起时间：" + challenge.cha_date.ToString().Substring(0, 9); 
                bindProblemRepeater();
                bindCoderRepeater();
            }
        }


        public string getChallName()
        {
             return "[" + PublicHelp.ChallengeHelper.getChallengeLevel(challenge.cha_level) + "]" + challenge.cha_type+"工程师";
        }


        protected void CloseButton_Click(object sender, EventArgs e)
        {
            challenge.cha_state = 0;
            ServiceFactory.createChallengeService().updateChallenge(challenge);
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

        void bindCoderRepeater()
        {
            List<coder_cha> coderChas = ServiceFactory.createCoderChallengeService().getCodersByChallengeId(challenge.cha_id);
            ICoderService cs = ServiceFactory.createCoderService();
            List<coder> coders = new List<coder>();
            for (int i = 0; i < coderChas.Count; i++)
            {
                coders.Add(cs.getCoderByID(coderChas.ElementAt(i).c_id));
            }
            CoderReapter.DataSource = coders;
            CoderReapter.DataBind();
            this.CoderNumber.Text = coders.Count.ToString();
            this.TotalCoder.Text = coders.Count.ToString();
            this.TotalNumber.Text = coders.Count.ToString();
        }

        protected void CoderItemBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}