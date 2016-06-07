using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLLInterface;
using BLLFactory;
using Model;

namespace Web
{
    public partial class CoderRecommend : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ICoderService cs = ServiceFactory.createCoderService();
                List<coder> coders = cs.getTopCoder();
                this.Repeater1.DataSource = coders;
                this.DataBind();
                //this.Label_Name.Text = coders[0].c_name;
                //this.Label_Value.Text = "" + coders[0].c_value;
            }
            

        }
    }
}