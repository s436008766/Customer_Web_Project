using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2222 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Page_PreInit(object sender, EventArgs e)
    {

        if (Session["theme"] == null)
        {
            Theme = "Red";  
        }
        else
        {

            Theme = Session["theme"].ToString(); 

        }
    }




    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["theme"] = DropDownList1.SelectedItem.Value;
        HttpContext.Current.RewritePath(Request.FilePath);
        
    }

    protected void ddl_Education_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write(Request.RawUrl.ToString());
    }
}