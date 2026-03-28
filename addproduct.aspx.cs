using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoeMart
{
    public partial class addproduct : System.Web.UI.Page
    {
        string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;

       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db_addProduct();
            }
        }

        private void db_addProduct()
        {
            SqlConnection con = new SqlConnection(constring);
            string query = "sp_add_fetch_all";
            SqlCommand cmd = new SqlCommand(query, con);
            DataTable dt = new DataTable();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            con.Close();
            gv_addProduct.DataSource = dt;
            gv_addProduct.DataBind();
        }
        protected void btn_add_product_Click(object sender, EventArgs e)
        {
            string Name = txt_AP_Name.Text;
            string Model = ddl_AP_Model.Text;
            string Category;
            if (rdo_AP_Shoe.Checked)
            {
                Category = "Shoe";
            }
            else
            {
                Category = "Sliper";
            }
            string Purchase = txt_AP_Dop.Text;
            string Number = txt_AP_Number.Text;
            string Price = txt_AP_Price.Text;

            SqlConnection con = new SqlConnection(constring);
            string qry = "sp_add_product @brandname, @shoemodel, @category, @purchasedate, @numberofunits, @amount";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@brandname", Name);
            cmd.Parameters.AddWithValue("@shoemodel", Model);
            cmd.Parameters.AddWithValue("@category", Category);
            cmd.Parameters.AddWithValue("@purchasedate", Purchase);
            cmd.Parameters.AddWithValue("@numberofunits", Number);
            cmd.Parameters.AddWithValue("@amount", Price);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


            Response.Write("<script>alert('Product Added.')</script>");
            db_addProduct();

            txt_AP_Name.Text = "";
            ddl_AP_Model.SelectedIndex = 0;
            rdo_AP_Shoe.Checked = true;
            rdo_AP_Sliper.Checked = false;
            txt_AP_Dop.Text = "";
            txt_AP_Number.Text = "";
            txt_AP_Price.Text = "";
        }

        protected void gv_addProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gv_addProduct.SelectedRow;

            string id = gv_addProduct.DataKeys[row.RowIndex].Value.ToString();
            string Name = row.Cells[2].Text;
            string Model = row.Cells[3].Text;
            string Category = row.Cells[4].Text;
            string Purchase = row.Cells[5].Text;
            string Number = row.Cells[6].Text;
            string Price = row.Cells[7].Text;

            lbl_id.Text = id;
            txt_AP_Name.Text = Server.HtmlDecode(Name);
            ddl_AP_Model.Text = Server.HtmlDecode(Model);
            rdo_AP_Shoe.Text = Server.HtmlDecode(Category);
            txt_AP_Number.Text = Server.HtmlDecode(Number);
            txt_AP_Dop.Text = Server.HtmlDecode(Purchase);
            txt_AP_Price.Text = Server.HtmlDecode(Price);


            int selectedId = Convert.ToInt32(gv_addProduct.SelectedDataKey.Value);
            lbl_id.Text = selectedId.ToString();


        }
        protected void btn_ap_edit_Click(object sender, EventArgs e)
        {
           
                using (SqlConnection con = new SqlConnection(constring))
                {
                    string qry = "sp_add_product_update @id, @brandname, @shoemodel, @category, @purchasedate, @numberofunits, @amount";

                    con.Open();

                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@id", int.Parse(lbl_id.Text));
                    cmd.Parameters.AddWithValue("@brandname", txt_AP_Name.Text.Trim());
                    cmd.Parameters.AddWithValue("@shoemodel", ddl_AP_Model.Text.Trim());
                    cmd.Parameters.AddWithValue("@category", rdo_AP_Shoe.Text.Trim());
                    cmd.Parameters.AddWithValue("@purchasedate", txt_AP_Dop.Text.Trim());
                    cmd.Parameters.AddWithValue("@numberofunits", txt_AP_Number.Text.Trim());
                    cmd.Parameters.AddWithValue("@amount", txt_AP_Price.Text.Trim());
                   

                    cmd.ExecuteNonQuery();
                    con.Close();

                }
            db_addProduct();

            Response.Write("\"<script>alert('Updated Successfully.')</script>");

            lbl_id.Text = "";
            txt_AP_Name.Text = "";
            ddl_AP_Model.SelectedIndex = 0;
            rdo_AP_Shoe.Checked = true;
            rdo_AP_Sliper.Checked = false;
            txt_AP_Dop.Text = "";
            txt_AP_Number.Text = "";
            txt_AP_Price.Text = "";
        }

        protected void btn_ap_delete_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(lbl_id.Text))
            {
                int id = Convert.ToInt32(lbl_id.Text);

                using (SqlConnection con = new SqlConnection(constring))
                {
                    string qry = "sp_add_product_delete  @id ";
                    SqlCommand cmd = new SqlCommand(qry, con);
                    cmd.Parameters.AddWithValue("@id", id);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                db_addProduct();
                Response.Write("<script>alert('Product Deleted.')</script>");

                lbl_id.Text = "";
                txt_AP_Name.Text = "";
                ddl_AP_Model.SelectedIndex = 0;
                rdo_AP_Shoe.Checked = true;
                rdo_AP_Sliper.Checked = false;
                txt_AP_Dop.Text = "";
                txt_AP_Number.Text = "";
                txt_AP_Price.Text = "";
            }
            else
            {

            }
        }
      
    }

    internal class DataGridViewCellEventArgs
    {
    }
}