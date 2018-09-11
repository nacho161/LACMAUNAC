using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LACMAUNAC
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Nombre"].Equals(""))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                username.Text = Session["Nombre"].ToString();
            }
        }
    }
}