using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLLFactory;
using BLLInterface;

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
                enterprise = new enterprise();
                enterprise.e_id = 1;
                if (challenge==null)
                {
                    Response.Redirect("404.html", false);
                    return;
                }

                HttpCookie cc = new HttpCookie("challenge");
                cc["enterprise"] = enterprise.e_id.ToString();
                cc["type"] = challenge.cha_type;
                cc["level"] = challenge.cha_level;
                Response.Cookies.Add(cc);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mail = Request.QueryString["user_emails"];
        }
    }
}