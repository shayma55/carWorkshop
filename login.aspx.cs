﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; //this namespace is for sqlclient server  
using System.Configuration; // this namespace is add I am adding connection name in web config file config connection name  
namespace WebAp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
            try
            {
                string uid = txtuser.Text;
                string pass = txtpass.Text;
                con.Open();
                string qry = "select user_name , password from shop_owner where user_name='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["user"] = txtuser.Text;
                    Response.Redirect("Default.aspx");
               
                }
                else
                {
                    Label4.Text = "UserId our Password Is not correct Try again..!!";

                }
            
            con.Close();
        }  
        catch(Exception ex)  
        {  
            Response.Write(ex.Message);  
        }
}      
    }
}