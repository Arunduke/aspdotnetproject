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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {

                if  (txt_Logname.Text.Trim() == "Admin" && txt_Logpwd.Text.Trim() == "123")
                {
                    Response.Write("<script>alert('Login Success.');</script>");
                }
                else
                {
                    string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;

                    SqlConnection con = new SqlConnection(constring);
                    con.Open();

                    SqlCommand cmd = new SqlCommand("sp_login", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    SqlParameter p1 = new SqlParameter("@username", SqlDbType.VarChar);
                    cmd.Parameters.Add(p1).Value = txt_Logname.Text;
                    SqlParameter p2 = new SqlParameter("@userpass", SqlDbType.VarChar);
                    cmd.Parameters.Add(p2).Value = txt_Logpwd.Text;

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                        
                    int a = Convert.ToInt32(ds.Tables[0].Rows.Count);

                    if(a > 0)
                    {
                        Response.Write("<script>alert('Login Success.');location.replace('/index.aspx');</script>");

                        txt_Logname.Text = "";
                        txt_Logpwd.Text = "";
                    }
                    else
                    {
                        Response.Write("<script>alert('Login Faild.');</script>");
                    }
                    con.Close();
                }
            }
            
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
           
        }
    }
}