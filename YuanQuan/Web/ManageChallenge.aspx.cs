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
    
    public partial class ManageChallenge : System.Web.UI.Page
    {

        static IChallengeService cs;
        static IChallengeProblemService cps;
        static IProblemService ps;
        private static enterprise enterprise;
        static List<challenge> challenges;
        static int totalNumber;
        static int finishNumber;
        static double percent;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                enterprise = (enterprise)Session["enterprise"];
                if (enterprise == null)
                {
                    Response.Redirect("404.html", false);
                    return;
                }
                cs = ServiceFactory.createChallengeService();
                cps = ServiceFactory.createChallengeProblemService();
                ps = ServiceFactory.createProblemService();

                this.EnterpriseName.Text = enterprise.e_name;
                bindChallengeReapter();
            }
        }


        void bindChallengeReapter()
        {
            
            challenges = cs.getChallengeByState(1,enterprise.e_id);
            ChallengesRepeater.DataSource = challenges;
            ChallengesRepeater.DataBind();
            this.TotalChallenge.Text = challenges.Count.ToString();
        }

        protected void ChallengesRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {

                TextBox hf = (TextBox)e.Item.FindControl("TextBox1");
                string id = hf.Text;
                int challengeId = int.Parse(id);
                Repeater rp = (Repeater)e.Item.FindControl("ProblemReapter");

                challenge  challenge=ServiceFactory.createChallengeService().getChallengeByChallengeId(challengeId);
                List<cha_problems> cha_problems = ServiceFactory.createChallengeProblemService().getProblemByChallengeId(challengeId);
                List<problem> problems = new List<problem>();

                for (int i = 0; i < cha_problems.Count; i++)
                {
                    problems.Add(ServiceFactory.createProblemService().getProblemById(cha_problems.ElementAt(i).p_id));
                }
                rp.DataSource = problems;
                rp.DataBind();

                totalNumber = 0;
                finishNumber = 0;
                percent = 0.0;
                calculateNumber(challenge);
                Label cName = (Label)e.Item.FindControl("ChallengeName");
                Label TotalNumber = (Label)e.Item.FindControl("TotalNumber");
                Label FinishNumber = (Label)e.Item.FindControl("FinishNumber");
                Label Percent = (Label)e.Item.FindControl("Percent");
                Label TurnFilter = (Label)e.Item.FindControl("TurnFilter");
                Label TurnInvite = (Label)e.Item.FindControl("TurnInvite");
                cName.Text = "[" + ChallengeHelper.getChallengeLevel(challenge.cha_level) + "]" + challenge.cha_type + "工程师";
                TotalNumber.Text = totalNumber.ToString();
                FinishNumber.Text = finishNumber.ToString();
                Percent.Text = String.Format("{0:F}", percent);

                if (challenge.cha_state == 0)
                {
                    TurnFilter.Visible = false;
                    TurnInvite.Visible = false;
                }
            }
        }

        void calculateNumber(challenge challenge)
        {
            List<coder_cha> coderChas = ServiceFactory.createCoderChallengeService().getCodersByChallengeId(challenge.cha_id);
            ICoderService cs = ServiceFactory.createCoderService();
            totalNumber = coderChas.Count;
            int upper = 0;

            for (int i = 0; i < coderChas.Count; i++)
            {
                if (coderChas.ElementAt(i).usetime != -1)
                {
                    finishNumber++;
                }

                if (coderChas.ElementAt(i).grade >= 90)
                {
                    upper++;
                }
            }
            if (totalNumber == 0)
                percent = 100.0;
            else
                percent = upper*100.0 / totalNumber;
        }

        protected void ChallengeHis_Click(object sender, EventArgs e)
        {
            challenges = cs.getChallengeByState(0, enterprise.e_id);
            ChallengesRepeater.DataSource = challenges;
            ChallengesRepeater.DataBind();
            this.TotalChallenge.Text = challenges.Count.ToString();
        }

        protected void InChallenge_Click(object sender, EventArgs e)
        {
            bindChallengeReapter();
        }

        

    }
}