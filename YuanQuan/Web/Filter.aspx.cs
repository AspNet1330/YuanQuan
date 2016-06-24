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
        static int ItemNumber = 0;
        static List<coder> coders,unstartCoder,upperCoder,lowerCoder;
        
        

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
            coders = new List<coder>();
            unstartCoder = new List<coder>();
            upperCoder = new List<coder>();
            lowerCoder = new List<coder>();
            for (int i = 0; i < coderChas.Count; i++)
            {
                coder c = cs.getCoderByID(coderChas.ElementAt(i).c_id);
                coders.Add(c);
                if (coderChas.ElementAt(i).usetime == -1)
                {
                    unstartCoder.Add(c);
                }

                if (coderChas.ElementAt(i).grade >= 90)
                {
                    upperCoder.Add(c);
                }
                else
                {
                    lowerCoder.Add(c);
                }
            }
            CoderReapter.DataSource = coders;
            CoderReapter.DataBind();
            this.CoderNumber.Text = coders.Count.ToString();
            this.TotalCoder.Text = coders.Count.ToString();
            this.TotalNumber.Text = coders.Count.ToString();
            this.Unstart.Text= unstartCoder.Count.ToString();
            this.UpperNumber.Text = upperCoder.Count.ToString();
            this.LowerNumber.Text = lowerCoder.Count.ToString();
            this.UnfinishNumber.Text = (coders.Count - unstartCoder.Count).ToString();
        }

        protected void CoderItemBound(object sender, RepeaterItemEventArgs e)
        {
            
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {

                TextBox hf = (TextBox)e.Item.FindControl("TextBox1");
                string id = hf.Text;
                int coderId = int.Parse(id);

                coder coder = ServiceFactory.createCoderService().getCoderByID(coderId);
                coder_cha cc = ServiceFactory.createCoderChallengeService().getCoderChaByCoderCha(coder.c_id, challenge.cha_id);

                ItemNumber++;
                string usingTime="未完成挑战";
                Label Number = (Label)e.Item.FindControl("Number");
                Label Grade = (Label)e.Item.FindControl("Grade");
                Label UsingTime = (Label)e.Item.FindControl("UsingTime");

                if (cc.usetime != -1)
                {
                    usingTime = cc.usetime.ToString();
                }
                Number.Text = ItemNumber.ToString();
                Grade.Text = cc.grade.ToString();
                UsingTime.Text = usingTime;
                
            }
        }

   
        protected void TotalCoderLink_Click(object sender, EventArgs e)
        {
            ItemNumber = 0;
            CoderReapter.DataSource = coders;
            CoderReapter.DataBind();
            this.CoderNumber.Text = coders.Count.ToString();
        }


        protected void SomeCoderLink_Click1(object sender, EventArgs e)
        {
            ItemNumber = 0;
            CoderReapter.DataSource = unstartCoder;
            CoderReapter.DataBind();
            this.CoderNumber.Text = unstartCoder.Count.ToString();
        }

        protected void UpperButton_Click(object sender, EventArgs e)
        {
            ItemNumber = 0;
            CoderReapter.DataSource = upperCoder;
            CoderReapter.DataBind();
            this.CoderNumber.Text = upperCoder.Count.ToString();
        }

        protected void LowerButton_Click(object sender, EventArgs e)
        {
            ItemNumber = 0;
            CoderReapter.DataSource = lowerCoder;
            CoderReapter.DataBind();
            this.CoderNumber.Text = lowerCoder.Count.ToString();
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            ItemNumber = 0;
            string searchInfo = this.id_searchName.Text;
            if (searchInfo == "" || searchInfo == null)
            {
                CoderReapter.DataSource = coders;
                CoderReapter.DataBind();
                return;
            }
                
            List<coder> searchCoder=new List<coder>();
            for (int i = 0; i < coders.Count; i++)
            {
                if ((coders.ElementAt(i).c_name.IndexOf(searchInfo) != -1) || (coders.ElementAt(i).c_account.IndexOf(searchInfo) != -1))
                {
                    searchCoder.Add(coders.ElementAt(i));
                }
            }
            CoderReapter.DataSource = searchCoder;
            CoderReapter.DataBind();
        }
    }
}