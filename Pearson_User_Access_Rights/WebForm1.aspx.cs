using Pearson_User_Access_Rights.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pearson_User_Access_Rights
{
    public partial class WebForm1 : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ActiveDirectoryHelper ad = new ActiveDirectoryHelper();
            ad.getInfo("servza.sbs", "PassworD123", "peroot");

        }
    }
}