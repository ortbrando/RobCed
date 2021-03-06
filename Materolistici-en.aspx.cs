﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Materolistici : System.Web.UI.Page
{
    String connectionString = ConfigurationManager.ConnectionStrings["LocalDB"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getDescription();
            bindOperas();
        }

    }

    protected void getDescription()
    {
        String query = "SELECT DescrizioneEn FROM Categoria WHERE Id = 2";
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand command = new SqlCommand(query, conn);

        try
        {
            conn.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read())
            {
                descrizioneCat.Text = reader["DescrizioneEn"].ToString();
            }

        }
        catch { }
        finally {
            command.Dispose();
            conn.Close();
        }
    }

    protected void bindOperas()
    {
         String query = "SELECT * FROM Opera WHERE IdCategoria = 2 ORDER BY Id DESC";

        try
        {
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand command = new SqlCommand(query, conn);
            SqlDataAdapter adapter = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            repeaterOperas.DataSource = dt;
            repeaterOperas.DataBind();
        }
        catch { }
    }

    protected void Opera_Click(object sender, EventArgs e)
    {
        String s = ((LinkButton)sender).CommandArgument;
        Response.Redirect("Opera-en.aspx?id="+ s);

    }
    protected void OperaPreview_Click(object sender, ImageClickEventArgs e)
    {
        String s = ((ImageButton)sender).CommandArgument;
        Response.Redirect("Opera-en.aspx?id=" + s);
    }
}