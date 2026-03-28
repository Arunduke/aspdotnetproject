using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoeMart
{
    public partial class confirmation : System.Web.UI.Page
    {

        string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;

        //public string Payment = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Name"] != null)
                    txt_cnfrm_Brand.Text = Session["Name"].ToString();

                if (Session["Model"] != null)
                    txt_cnfrm_Model.Text = Session["Model"].ToString();

                if (Session["Size"] != null)
                    txt_cnfrm_Size.Text = Session["Size"].ToString();

                if (Session["Cost"] != null)
                    txt_cnfrm_Cost.Text = Session["Cost"].ToString();

                CalculateTotal();
            }
        }

        private void CalculateTotal()
        {
            decimal amount = 0;
            decimal gstPercent = 18; // define GST percentage here

            decimal gstValue = 0;
            decimal total = 0;

            // Covert Safely
            decimal.TryParse(txt_cnfrm_Cost.Text, out amount);

            // Calculate GST and Total
            gstValue = (amount * gstPercent) / 100;
            total = amount + gstValue;

            // Show Values
            txt_cnfrm_Gst.Text = gstValue.ToString("0");
            txt_cnfrm_Total.Text = total.ToString("0");
        }
        protected void txt_cnfrm_Price_TextChanged(object sender, EventArgs e)
        {
            CalculateTotal();
        }
        protected void btn_OrderPlace_Click(object sender, EventArgs e)
        {

            try 
            { 
                int Cost = int.Parse(txt_cnfrm_Cost.Text.Trim());
                int Gst = int.Parse(txt_cnfrm_Gst.Text.Trim());
                int Total = int.Parse(txt_cnfrm_Total.Text.Trim());
                string Brand = txt_cnfrm_Brand.Text;
                string Model = txt_cnfrm_Model.Text;
                string Size = txt_cnfrm_Size.Text;
                string Address = txt_cnfrm_Address.Text;
                string Payment = rdo_cnfrm_Cash.Checked ? "Cash" : "Online";


                SqlConnection con = new SqlConnection(constring);
                string qry = "sp_add_billing @brandname, @modelname, @size, @cost, @gst, @totalamount, @cashoronline, @adress";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@brandname", Brand);
                cmd.Parameters.AddWithValue("@modelname", Model);
                cmd.Parameters.AddWithValue("@size", Size);
                cmd.Parameters.AddWithValue("@cost", Cost);
                cmd.Parameters.AddWithValue("@gst", Gst);
                cmd.Parameters.AddWithValue("@totalamount", Total);
                cmd.Parameters.AddWithValue("@cashoronline", Payment);
                cmd.Parameters.AddWithValue("@adress", Address);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Your Order Placed.');location.replace('order.aspx');</script>");

                txt_cnfrm_Brand.Text = "";
                txt_cnfrm_Model.Text = "";
                txt_cnfrm_Size.Text = "";
                txt_cnfrm_Cost.Text = "";
                txt_cnfrm_Gst.Text = "";
                txt_cnfrm_Total.Text = "";
                txt_cnfrm_Address.Text = "";
          }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }

//     if (rdo_cnfrm_Cash.Checked)
//            {
//                Payment = "Cash";
//            }
//            else
//{
//    Payment = "Online";
//}

}