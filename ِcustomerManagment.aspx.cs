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
    public partial class _ِcustomerManagment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd1 = new SqlCommand("select make from cars  ", con);
                DropDownMake.DataSource = sqlcmd1.ExecuteReader();
                DropDownMake.DataBind();
                con.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd2 = new SqlCommand("select model from cars  ", con);
                DropDownModel.DataSource = sqlcmd2.ExecuteReader();
                DropDownModel.DataBind();
                con.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd3 = new SqlCommand("select style from cars  ", con);
                DropDownStyle.DataSource = sqlcmd3.ExecuteReader();
                DropDownStyle.DataBind();
                con.Close();
                con.Close();
                if (con.State == ConnectionState.Closed)
                    con.Open();
                SqlCommand sqlcmd4 = new SqlCommand("select year from cars  ", con);
                DropDownYear.DataSource = sqlcmd4.ExecuteReader();
               DropDownYear.DataBind();
                con.Close();



            } 
        }

        protected void BtnClear_Click(object sender, EventArgs e)

        {
           
  ;        }

       /* public void clear()
        {
            hfCustomerId.Value = hfCarId.Value = "";

            txtCustomerName.Text = txtPhone.Text = txtEmail.Text = txtBodyNo.Text =  txtColor.Text =  "";
            lblSucessMessage.Text = lblerrorMessage.Text = "";
            BtnSave.Text = "Save";
            BtnDelete.Enabled = false;
        }*/

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            if(con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlcmd = new SqlCommand("insert into customer(name,phone,email)values(@name,@phone,@email)", con);
            
         
            sqlcmd.Parameters.AddWithValue("@CustomerID ", txtCustomerName.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@name ", txtCustomerName.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@phone", txtPhone.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@email ", txtEmail.Text.Trim());

            sqlcmd.ExecuteNonQuery();
            sqlcmd.Parameters.Clear();
            con.Close();
            


         /*   if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand sqlcmd2 = new SqlCommand("insert into cars(make,model,style,year)values(@make,@model,@style,@year)", con);

            sqlcmd2.Parameters.AddWithValue("@CarID", (hfCarId.Value == "" ? 0 : Convert.ToInt32(hfCarId.Value)));
            sqlcmd2.Parameters.AddWithValue("@make", txtMake.Text.Trim());
            sqlcmd2.Parameters.AddWithValue("@model", txtModel.Text.Trim());
            sqlcmd2.Parameters.AddWithValue("@style", txtStyle.Text.Trim());
            sqlcmd2.Parameters.AddWithValue("@color", txtColor.Text.Trim());
            sqlcmd2.Parameters.AddWithValue("@year", txtYear.Text.Trim());
          
            sqlcmd2.ExecuteNonQuery();
            sqlcmd2.Parameters.Clear();  
            
            con.Close();*/


if (con.State == ConnectionState.Closed)
                con.Open();


            SqlCommand sqlcmd3 = new SqlCommand("insert into customerCar(plate,cust_id,car_id,body_no)values(@plate,@cust_id,@car_id,@body_no) where cust_id=customerID ", con);
            
            sqlcmd3.Parameters.AddWithValue("@plate", txtPlate.Text.Trim());
            sqlcmd3.Parameters.AddWithValue("@cust_id", txtCustomerID.Text.Trim());
            sqlcmd3.Parameters.AddWithValue("@car_id", txtCustomerID.Text.Trim());

            sqlcmd3.Parameters.AddWithValue("@body_no", txtBodyNo.Text.Trim());

            sqlcmd3.ExecuteNonQuery();
            sqlcmd3.Parameters.Clear();

            con.Close();
            /*  String cuid = hfCustomerId.Value;
            String carid = hfCustomerId.Value;
            clear();
         
              if (cuid == "" && carid=="")
                  lblSucessMessage.Text = "Saved successfully";
              else
                  lblSucessMessage.Text = "updated successfully";
              */
        }



    }
}