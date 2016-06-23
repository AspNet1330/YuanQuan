using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using Model;
using BLLFactory;
using BLLInterface;

namespace Web
{
    public partial class Invite2 : System.Web.UI.Page
    {
        int maxProblem = 3;
        private static List<problem> problems = new List<problem>();
        private static List<problem> chooseProblems = new List<problem>();
        private static enterprise enterprise;
        static int cID;
        IProblemService ps = ServiceFactory.createProblemService();
        int rdnum = 0;
        private static challenge challenge;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                challenge= (challenge)Session["challenge"];
                if (challenge == null)
                {
                    Response.Redirect("./Invite1.aspx", false);
                    return;
                }
                enterprise = (enterprise)Session["enterprise"];
                if (enterprise == null)
                {
                    Response.Redirect("404.html", false);
                    return;
                }
                IProblemService ps = ServiceFactory.createProblemService();
                getRandomProblem();  

            }
        }

 

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getRandomProblem();
        }

        protected void getRandomProblem()
        {
            chooseProblems.Clear();
            problems = ps.getProblemsByType(challenge.cha_type);
            int problemNum = problems.Count;
            Random rd = new Random();

            if (problemNum > maxProblem)
            {
                for (int i = 0; i < maxProblem; i++)
                {
                    rdnum = rd.Next(1, problems.Count);
                    chooseProblems.Add(problems.ElementAt(rdnum));
                    problems.Remove(problems.ElementAt(rdnum));
                }
            }
            else
            {
                while (problems.Count>0)
                {
                    chooseProblems.Add(problems.ElementAt(problems.Count-1));
                    problems.Remove(problems.ElementAt(problems.Count - 1));
                }
            }
            ProblemRepeater.DataSource = chooseProblems;
            ProblemRepeater.DataBind();
            AllProblemRepeater.DataSource = problems;
            AllProblemRepeater.DataBind(); 
        }

        protected void ProblemRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch(e.CommandName){
                case "Delete":
                     //获取problemID
                    int id = int.Parse(e.CommandArgument.ToString());
                    for (int i = 0; i < chooseProblems.Count; i++)
                    {
                        if (chooseProblems.ElementAt(i).p_id == id)
                        {
                            problems.Add(chooseProblems.ElementAt(i));
                            chooseProblems.Remove(chooseProblems.ElementAt(i));
                            break;
                        }
                    }
                    if(chooseProblems==null)
                        ProblemRepeater.DataSource = null;
                    else
                        ProblemRepeater.DataSource = chooseProblems;
                    ProblemRepeater.DataBind();
                    AllProblemRepeater.DataSource = problems;
                    AllProblemRepeater.DataBind(); 
                    break;
                case "GetRandomProblem":
                    getRandomProblem();
                    break;
            }
            
        }

        protected void AllProblemRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Insert":
                    //获取problemID
                    int id = int.Parse(e.CommandArgument.ToString());
                    for (int i = 0; i < problems.Count; i++)
                    {
                        if (problems.ElementAt(i).p_id == id)
                        {
                            chooseProblems.Add(problems.ElementAt(i));
                            problems.Remove(problems.ElementAt(i));
                            break;
                        }
                    }
                    ProblemRepeater.DataSource = chooseProblems;
                    ProblemRepeater.DataBind();
                    AllProblemRepeater.DataSource = problems;
                    AllProblemRepeater.DataBind();
                    break;
            }
               
        }

        protected void SaveNxtButton_Click1(object sender, EventArgs e)
        {
            IChallengeService challengeService = ServiceFactory.createChallengeService();
            cID = challengeService.saveChallenge(challenge);
            Response.Redirect("./Invite3.aspx?id="+cID, false); 
            Thread chaProThread = new Thread(saveChaPro);
            chaProThread.Start();
        }

        void saveChaPro()
        {
            IChallengeProblemService cps = ServiceFactory.createChallengeProblemService();
            cps.deleteChaProByChallengeId(cID);
            for (int i = 0; i < chooseProblems.Count; i++)
            {
                cha_problems chaPro = new cha_problems();
                chaPro.cha_id = cID;
                chaPro.p_id = chooseProblems.ElementAt(i).p_id;
                cps.saveChallengeProblem(chaPro);
            }
        }

        public string getEntership()
        {
            return enterprise.e_id.ToString();
        }




    }
}