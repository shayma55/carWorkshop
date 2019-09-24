using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebAp
{
    public partial class newOrder : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                 if (con.State == ConnectionState.Closed)
                     con.Open();
                SqlCommand sqlcmd = new SqlCommand("select * from Services ", con);
                 ServiceDropDownList.DataSource = sqlcmd.ExecuteReader();
                 ServiceDropDownList.DataBind();
                con.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd2 = new SqlCommand("select * from items ", con);
                itemDropDownList.DataSource = sqlcmd2.ExecuteReader();
                itemDropDownList.DataBind();

            }



            }

        void DisplayServices()
        {
            txtService.Text = Convert.ToString(ServiceDropDownList.SelectedItem.Value);

            txtService.Text = Convert.ToString(ServiceDropDownList.SelectedItem.Text);
        }

        void DisplayItems()
        {
            txtItem.Text = Convert.ToString(itemDropDownList.SelectedItem.Value);
            txtItem.Text = Convert.ToString(itemDropDownList.SelectedItem.Text);
        }



        protected void btnAddServices_Click(object sender, EventArgs e)
        {
            Response.Redirect("Services.aspx");
        }

        protected void btnAddItems_Click(object sender, EventArgs e)
        {
            Response.Redirect("items.aspx");
        }

        protected void btnServiceSelect_Click(object sender, EventArgs e)
        {
            DisplayServices();
        }

        protected void btnSelectItems_Click(object sender, EventArgs e)
        {
            DisplayItems();
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {


            Clear();


        }
        public void Clear()
        {
            txtItem.Text = txtService.Text = "";
            
           
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            
        }
    }
}