using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using PublicHelp;
using BLLInterface;
using BLLFactory;

namespace Web
{
    public partial class Invite : System.Web.UI.Page
    {
        private static enterprise enterprise;
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
            }
        }

      protected void Next_Click(object sender, EventArgs e)
        {
            challenge c = new challenge();
            c.cha_level = ChallengeHelper.getChallengeLevel(level_id.Value);
            c.cha_public = int.Parse(public_id.Value);
            c.cha_type = ChallengeHelper.getChallengeType(directions_id.Value);
            c.cha_date = DateTime.Now;
            c.e_id = enterprise.e_id;

            Session["challenge"] = c;

            Response.Redirect("./Invite2.aspx", false);//防止Response.End 方法终止页的执行
        }

      public string getEntership()
      {
          return enterprise.e_id.ToString();
      }

       
    }
}