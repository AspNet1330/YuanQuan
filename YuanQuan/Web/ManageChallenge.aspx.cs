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
        private static enterprise cpy = new enterprise();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cpy.e_id = 1;
                
            }
            bindChallengeReapter();

        }


        void bindChallengeReapter()
        {
            cs = ServiceFactory.createChallengeService();
            cps = ServiceFactory.createChallengeProblemService();
            ps = ServiceFactory.createProblemService();
            List<challenge> challenges = cs.getChallengesByEnterprise(cpy.e_id);

            ChallengesRepeater.DataSource = challenges;
            ChallengesRepeater.DataBind();
        }

        protected void ChallengesRepeater_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
              if ((e.Item.ItemType == ListItemType.Item )||(e.Item.ItemType == ListItemType.AlternatingItem))
            {

                TextBox hf = (TextBox)e.Item.FindControl("TextBox1");
                string id = hf.Text;
                int challengeId = int.Parse(id);
                  
                  Repeater rp = (Repeater)e.Item.FindControl("ProblemReapter");
                  List<cha_problems> cha_problems = ServiceFactory.createChallengeProblemService().getProblemByChallengeId(challengeId);
                  List<problem> problems = new List<problem>();

                  for (int i = 0; i < cha_problems.Count; i++)
                  {
                      problems.Add(ServiceFactory.createProblemService().getProblemById(cha_problems.ElementAt(i).p_id));
                  }
                  rp.DataSource = problems;
                  rp.DataBind();

                  
            }
        }
    }
}