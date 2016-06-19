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
           
        }

      protected void Next_Click(object sender, EventArgs e)
        {
            challenge c = new challenge();
            c.cha_level = level_id.Value;
            c.cha_public = int.Parse(public_id.Value);
            c.cha_type = directions_id.Value;
            c.cha_date = DateTime.Now;

            Session["challenge"] = c;

            Response.Redirect("./Invite2.aspx", false);//防止Response.End 方法终止页的执行
        }
       
    }
}