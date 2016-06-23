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
    public class ChallengeInfo:Attribute
    {
        public challenge challenge;
        public string name;
        public List<problem> ps;
    }
    
    public partial class ManageChallenge : System.Web.UI.Page
    {

        static IChallengeService cs;
        static IChallengeProblemService cps;
        static IProblemService ps;
        static List<ChallengeInfo> cInfos = new List<ChallengeInfo>();
        private static enterprise cpy = new enterprise();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cpy.e_id = 1;
                bindChallengeReapter();
            }

        }


        void bindChallengeReapter()
        {
            cs = ServiceFactory.createChallengeService();
            cps = ServiceFactory.createChallengeProblemService();
            ps = ServiceFactory.createProblemService();
            List<challenge> challenges = cs.getChallengesByEnterprise(cpy.e_id);

            for (int i = 0; i < challenges.Count; i++)
            {
                cInfos.Add(getChallengeInfo(challenges.ElementAt(i)));
            }

            ChallengesRepeater.DataSource = cInfos;
            ChallengesRepeater.DataBind();

            
        }

        ChallengeInfo getChallengeInfo(challenge c)
        {
            ChallengeInfo cInfo = new ChallengeInfo();
            cInfo.challenge = c;
            cInfo.name = ChallengeHelper.getChallengeName(c.cha_type,c.cha_level);
            List<cha_problems> cPros = cps.getProblemByChallengeId(c.cha_id);
            List<problem> pros = new List<problem>();
            for (int i = 0; i < cPros.Count;i++ )
            {
                cha_problems cp = cPros.ElementAt(i);
                pros.Add(ps.getProblemById(cp.p_id));
            } 
            cInfo.ps = pros;
            
            return cInfo;
        }
    }
}