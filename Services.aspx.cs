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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BtnDelete.Enabled = false;
                FillGridView();
            }
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            ClearService();
        }
        public void ClearService()
        {
            hfServiceID.Value = "";
            txtServiceName.Text = txtDesc.Text = txtPrice.Text = txtVat.Text = "";
            lblSucessMessage.Text = lblerrorMessage.Text = "";
            BtnSave.Text = "Save";
            BtnDelete.Enabled = false;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlcmd = new SqlCommand("ServicesCreateOrUpdate", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@ServiceID", (hfServiceID.Value == "" ? 0 : Convert.ToInt32(hfServiceID.Value)));
            sqlcmd.Parameters.AddWithValue("@ServiceName ", txtServiceName.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@ServiceDescreption ", txtDesc.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@ServicePrice ", txtPrice.Text.Trim()); 
            sqlcmd.Parameters.AddWithValue("@ServiceVat", txtVat.Text.Trim());
            sqlcmd.ExecuteNonQuery();
            con.Close();
            String sid = hfServiceID.Value;
            ClearService();
            if (sid == "")
                lblSucessMessage.Text = "Saved successfully";
            else
                lblSucessMessage.Text = "updated successfully";
            FillGridView();

        }
        void FillGridView()
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("ServicesViewALL", con);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            con.Close();
            ServicesIist.DataSource = dtbl;
            ServicesIist.DataBind();


        }
        protected void lnk_Onclick(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("ServicesViewByID", con);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlda.SelectCommand.Parameters.AddWithValue("@ServiceID", id);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            con.Close();
            hfServiceID.Value = id.ToString();
            txtServiceName.Text = dtbl.Rows[0]["ServiceName"].ToString();
            txtDesc.Text = dtbl.Rows[0]["ServiceDescreption"].ToString();
            txtPrice.Text = dtbl.Rows[0]["ServicePrice"].ToString();
            txtVat.Text = dtbl.Rows[0]["ServiceVat"].ToString();
            BtnSave.Text = "update";
            BtnDelete.Enabled = true;
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlcmd = new SqlCommand("ServicesDeletedByID", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@ServiceID", Convert.ToInt32(hfServiceID.Value));
            sqlcmd.ExecuteNonQuery();
            con.Close();
            ClearService();
            FillGridView();
            lblSucessMessage.Text = "Deleted Successfully";

        }



        protected void btnNewOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("newOrder.aspx");
        }
    }
}