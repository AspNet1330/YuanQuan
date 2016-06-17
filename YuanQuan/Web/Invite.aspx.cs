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
    public partial class Invite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Init_WebControls();
        }
        
        protected void new_challenge_btn_1_Click1(object sender, EventArgs e)
        {
            Server.Transfer("Invite2.aspx");
        }

        public void Init_WebControls()
        {
            String action="";

            try
            {

                if (!string.IsNullOrEmpty(Request.QueryString["Action"]))//获取form的Action中的参数
                {

                    action = Request.QueryString["Action"].Trim().ToLower();//去掉空格并变小写

                }

                switch (action)
                {

                    case "next":
                        String direction = Request.Form["direction"].ToString();
                        String level = Request.Form["level"].ToString();
                        String is_public = Request.Form["is_public"].ToString();

                        challenge c = new challenge();
                        c.cha_level = level;
                        c.cha_public = int.Parse(is_public);
                        c.cha_type = direction;

                        IChallengeService challengeService = ServiceFactory.createChallengeService();
                        challengeService.saveChallenge(c);

                        Response.Redirect("Invite2.aspx", false);//防止Response.End 方法终止页的执行

                        break;

                }

            }

            catch (Exception ex)
            {

                throw new Exception(ex.Message);

            }

        }
       
    }
}