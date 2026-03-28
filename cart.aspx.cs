using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoeMart
{
    public partial class cart : System.Web.UI.Page
    {
        string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                db_Cart();
            }
        }

        private void db_Cart()
        {
            SqlConnection con = new SqlConnection(constring);
            string query = "sp_cart_fetch_all";
            SqlCommand cmd = new SqlCommand(query, con);        
            DataTable dt = new DataTable();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            gv_Cart.DataSource = dt;
            gv_Cart.DataBind();
            con.Close();
            
        }
        protected void gv_cart_row_Click(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Delete1")
                {
                    int rowindex = Convert.ToInt32(e.CommandArgument);
                    GridViewRow row = gv_Cart.Rows[rowindex];
                    string id = row.Cells[0].Text;

                    SqlConnection con = new SqlConnection(constring);
                    string query = "sp_cart_delete @id";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@id", id);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    db_Cart();
                    Response.Write("<script>alert('Item Removed.');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        
        }
    }
}