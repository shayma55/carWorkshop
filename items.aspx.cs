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
    public partial class items : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
                FillGridView();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearService();
        }
        public void ClearService()
        {
            hfItemID.Value = "";
            txtItemsName.Text = txtDesc.Text = txtPrice.Text = txtVat.Text = "";
            lblSucessMessage.Text = lblerrorMessage.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlcmd = new SqlCommand("itemsCreateOrUpdate", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@ItemID", hfItemID.Value == "" ? 0 : Convert.ToInt32(hfItemID.Value));
            sqlcmd.Parameters.AddWithValue("@ItemName ", txtItemsName.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@ItemDescription ", txtDesc.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@ItemSize ", txtDesc.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@ItemPrice", txtPrice.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@ItemVat", txtVat.Text.Trim());
            sqlcmd.ExecuteNonQuery();
            con.Close();
            String sid = hfItemID.Value;
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
            SqlDataAdapter sqlda = new SqlDataAdapter("itemsViewALL", con);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            con.Close();
            itemsIist.DataSource = dtbl;
            itemsIist.DataBind();


        }
        protected void lnk_Onclick(object sender, EventArgs e)
        {
            int id = Convert.ToInt32((sender as LinkButton).CommandArgument);
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("itemsViewByID", con);
            sqlda.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlda.SelectCommand.Parameters.AddWithValue("@ItemID", id);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            con.Close();
            hfItemID.Value = id.ToString();
            txtItemsName.Text = dtbl.Rows[0]["ItemName"].ToString();
            txtDesc.Text = dtbl.Rows[0]["ItemDescription"].ToString();
            txtSize.Text = dtbl.Rows[0]["ItemSize"].ToString();
            txtPrice.Text = dtbl.Rows[0]["ItemPrice"].ToString();
            txtVat.Text = dtbl.Rows[0]["ItemVat"].ToString();
            btnSave.Text = "update";
            btnDelete.Enabled = true;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlcmd = new SqlCommand("itemsDeleteByID", con);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@ItemID", Convert.ToInt32(hfItemID.Value));
            sqlcmd.ExecuteNonQuery();
            con.Close();
            ClearService();
            FillGridView();
            lblSucessMessage.Text = "Deleted Successfully";

        }

        
      
    }
    }

