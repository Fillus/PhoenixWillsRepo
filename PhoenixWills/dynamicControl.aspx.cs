using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhoenixWills
{
    public partial class dynamicControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox new_textbox = new TextBox();
            new_textbox.ID = "txt" + 1;
            new_textbox.Text = "";
            divContainer.Controls.Add(new_textbox);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string OptionID = "txt" + 1;
            TextBox tb = (TextBox)divContainer.FindControl(OptionID);
            Response.Write(tb.Text);
        }
    }
}