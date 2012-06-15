using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.pdf;

namespace PhoenixWills
{
    public partial class PDFGenerate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //// create doc object
            //var document = new Document(PageSize.A4, 50, 50, 25, 25);


            //// Create a new PdfWriter object, specifying the output stream
            //var output = new FileStream(Server.MapPath("PDFTemplates/MyFirstPDF.pdf"), FileMode.Create);
            //var writer = PdfWriter.GetInstance(document, output);


            //// Open the Document for writing
            //document.Open();
            
            //// Create a new Paragraph object with the text, "Hello, World!"
            //var welcomeParagraph = new Paragraph("Hello, World!");

            //// Add the Paragraph object to the document
            //document.Add(welcomeParagraph); 


            //// Close the Document - this saves the document contents to the output stream
            //document.Close();
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCountry.SelectedValue == "1")
            {
                div2.Visible = true;
                div3.Visible = false;
                divHK.Visible = true;
                divROW.Visible = false;
                divUS.Visible = false;
            }
            else if (ddlCountry.SelectedValue == "2")
            {
                div2.Visible = true;
                div3.Visible = false;
                divHK.Visible = false;
                divROW.Visible = true;
                divUS.Visible = false;
            }
            else if (ddlCountry.SelectedValue == "3")
            {
                if (ddlUSStates.SelectedValue == "0")
                {
                    div2.Visible = false;
                    div3.Visible = true;
                    divHK.Visible = false;
                    divROW.Visible = false;
                    divUS.Visible = false;
                }
                else
                {
                    div2.Visible = true;
                    div3.Visible = true;
                    divHK.Visible = false;
                    divROW.Visible = false;
                    divUS.Visible = true;
                }
            }
        }
    }
}