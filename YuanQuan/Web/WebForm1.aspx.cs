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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //IAdminDA adminDA = DAFactory.CreateAdminDA();
            //this.Label1.Text = adminDA.getAdminByID(1).a_pwd;
            ICoderService cs = ServiceFactory.createCoderService();
            this.Label1.Text = (cs.getTopCoder())[0].c_name;
        }
    }
}