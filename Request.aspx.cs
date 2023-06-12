using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Request : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Page_PreInit(object sender, EventArgs e)
    {

        if (Session["theme"] == null)
        {
            Theme = "Dark";
        }
        else
        {

            Theme = Session["theme"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TestConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "INSERT INTO Items (ITEM, PRICE, INFORMATION) VALUES (@ITEM, @PRICE, @INFORMATION)";
        SqlCommand command = new SqlCommand(insertQuery, conn);


        command.Parameters.AddWithValue("@ITEM", txtItem.Text);
        command.Parameters.AddWithValue("@PRICE", txtPrice.Text);
        command.Parameters.AddWithValue("@INFORMATION", txtInfo.Text);
        
        command.ExecuteNonQuery();

        Response.Write("Registeration Successfully!! Thank you");

        conn.Close();

    }
}