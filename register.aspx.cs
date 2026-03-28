using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShoeMart
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool IsEmailValid(string email)
        {
            string pattern = "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$";

            Regex R = new Regex(pattern);
            return R.IsMatch(email);
        }
        protected void btn_register_Click(object sender, EventArgs e)
        {
            try
            {
                if (txt_regname.Text != "" && txt_regpwd.Text != "" && txt_regemail.Text != "" && txt_mobile.Text != "")
                {
                    string emailAddress = txt_regemail.Text;
                    bool isvalid = IsEmailValid(emailAddress);

                    if (IsValid)
                    {
                        string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;

                        SqlConnection con = new SqlConnection(constring);
                        con.Open();

                        SqlCommand cmd = new SqlCommand("sp_register", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        SqlParameter p1 = new SqlParameter("@username", SqlDbType.VarChar);
                        cmd.Parameters.Add(p1).Value = txt_regname.Text;
                        SqlParameter p2 = new SqlParameter("@userpass", SqlDbType.VarChar);
                        cmd.Parameters.Add(p2).Value = txt_regpwd.Text;
                        SqlParameter p3 = new SqlParameter("@useremail", SqlDbType.VarChar);
                        cmd.Parameters.Add(p3).Value = txt_regemail.Text;
                        SqlParameter p4 = new SqlParameter("@usermobile", SqlDbType.VarChar);
                        cmd.Parameters.Add(p4).Value = txt_mobile.Text;

                        int a = cmd.ExecuteNonQuery();

                        if (a > 0)
                        {
                            Response.Write("<script>alert('Register Success.');location.replace('/login.aspx');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Register Failed.')</script>");
                            con.Close();
                        }
                    }
                    else
                    {
                        Response.Write("<Script>alert('Enter Is Correct Format.')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Fill All The Data');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}