using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLLInterface;
using BLLFactory;
using Model;
using ViewModel;

namespace Web
{
    public partial class CoderFirst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IDisplayService ds = ServiceFactory.createDisplayService();
            
            List<CoderFirstVM> cfs = ds.getCoderFirst();
            this.Repeater1.DataSource = cfs;
            this.DataBind();
        }
    }
}