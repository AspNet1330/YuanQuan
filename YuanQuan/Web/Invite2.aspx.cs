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
        IProblemService ps = ServiceFactory.createProblemService();
        int rdnum = 0;
        private static int challengeId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String cids = Session["cId"].ToString();
                if (cids == null)
                {
                    Response.Redirect("./Invite1.aspx", false);
                    return;
                }
                    
                challengeId = int.Parse(cids);
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
            problems = ps.getProblems();
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
                for (int i = 0; i < problemNum; i++)
                {
                    chooseProblems.Add(problems.ElementAt(i));
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
            Response.Redirect("./Invite3.aspx", false); 
            Thread chaProThread = new Thread(saveChaPro);
            chaProThread.Start();
        }

        void saveChaPro()
        {
            IChallengeProblemService cps = ServiceFactory.createChallengeProblemService();
            cps.deleteChaProByChallengeId(challengeId);
            for (int i = 0; i < chooseProblems.Count; i++)
            {
                cha_problems chaPro = new cha_problems();
                chaPro.cha_id = challengeId;
                chaPro.p_id = chooseProblems.ElementAt(i).p_id;
                cps.saveChallengeProblem(chaPro);
            }
        }



    }
}