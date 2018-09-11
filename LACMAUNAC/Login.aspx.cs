using CADLacma;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LACMAUNAC
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            msjErrorLabel.Text = "";
        }

        protected void aceptarButton_Click(object sender, EventArgs e)
        {
            try
            {
                CADLacma.DSLacmaTableAdapters.UsuarioTableAdapter obj = new CADLacma.DSLacmaTableAdapters.UsuarioTableAdapter();
                String NombreUsuario = obj.loginLacma(userTextBox.Text, passTextBox.Text).ToString();
                if (!NombreUsuario.Equals(""))
                {
                    Session["Nombre"] = NombreUsuario;
                    Response.Redirect("Principal.aspx?idcliente=" + userTextBox.Text);
                }
            }
            catch
            {
                msjErrorLabel.Text = "Usuario no Existe";
            }
        }
    }
}