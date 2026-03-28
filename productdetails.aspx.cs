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
    public partial class product : System.Web.UI.Page
    {
        string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_rv_Add_Click(object sender, EventArgs e)
        {
            try
            {
                string Name = txt_rv_UName.Text;
                string Email = txt_rv_Email.Text;
                string Phone = txt_rv_Phnumber.Text;
                string Review = txt_rv_Review.Text;

                SqlConnection con = new SqlConnection(constring);
                string qry = ("sp_add_review @rvname, @rvemail, @rvphone, @review");
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@rvname", Name);
                cmd.Parameters.AddWithValue("@rvemail", Email);
                cmd.Parameters.AddWithValue("@rvphone", Phone);
                cmd.Parameters.AddWithValue("@review", Review);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Thanks For Your Review.');</script>");
                
                txt_rv_UName.Text = "";
                txt_rv_Email.Text = "";
                txt_rv_Phnumber.Text = "";
                txt_rv_Review.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }
    }
}