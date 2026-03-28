using Microsoft.SqlServer.Server;
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
    public partial class order : System.Web.UI.Page
    {
        string constring = WebConfigurationManager.ConnectionStrings["ShoeConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cart2_Click(object sender, EventArgs e)
        {
            try
            {

                string Brand = lbl_Brand2.Text;
                string Model = lbl_Model2.Text;
                string Price = lbl_Cost2.Text;
                string Size = txt_Size2.Text;

                SqlConnection con = new SqlConnection(constring);
                string query = ("sp_cart @brand, @model, @price, @size");
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@model", Model);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@size", Size);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Add To Bag Successfully.');</script>");

                txt_Size2.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_cart1_Click(object sender, EventArgs e)
        {
            try
            {

                string Brand = lbl_Brand1.Text;
                string Model = lbl_Model1.Text;
                string Price = lbl_Cost1.Text;
                string Size = txt_Size1.Text;

                SqlConnection con = new SqlConnection(constring);
                string query = ("sp_cart @brand, @model, @price, @size");
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@model", Model);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@size", Size);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Add To Bag Successfully.');</script>");

                txt_Size1.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_cart3_Click(object sender, EventArgs e)
        {
            try
            {
                string Brand = lbl_Brand3.Text;
                string Model = lbl_Model3.Text;
                string Price = lbl_Cost3.Text;
                string Size = txt_Size3.Text;

                SqlConnection con = new SqlConnection(constring);
                string query = ("sp_cart @brand, @model, @price, @size");
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@model", Model);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@size", Size);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Add To Bag Successfully.');</script>");

                txt_Size3.Text = "";
            }

            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_cart4_Click(object sender, EventArgs e)
        {
            try
            {
                string Brand = lbl_Brand4.Text;
                string Model = lbl_Model4.Text;
                string Price = lbl_Cost4.Text;
                string Size = txt_Size4.Text;

                SqlConnection con = new SqlConnection(constring);
                string query = ("sp_cart @brand, @model, @price, @size");
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@model", Model);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@size", Size);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Add To Bag Successfully.');</script>");

                txt_Size4.Text = "";
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_cart5_Click(object sender, EventArgs e)
        {
            try
            {

                string Brand = lbl_Brand5.Text;
                string Model = lbl_Model5.Text;
                string Price = lbl_Cost5.Text;
                string Size = txt_Size5.Text;

                SqlConnection con = new SqlConnection(constring);
                string query = ("sp_cart @brand, @model, @price, @size");
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@model", Model);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@size", Size);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Add To Bag Successfully.');</script>");

                txt_Size5.Text = "";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btn_cart6_Click(object sender, EventArgs e)
        {
            try
            {

                string Brand = lbl_Brand6.Text;
                string Model = lbl_Model6.Text;
                string Price = lbl_Cost6.Text;
                string Size = txt_Size6.Text;

                SqlConnection con = new SqlConnection(constring);
                string query = ("sp_cart @brand, @model, @price, @size");
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@brand", Brand);
                cmd.Parameters.AddWithValue("@model", Model);
                cmd.Parameters.AddWithValue("@price", Price);
                cmd.Parameters.AddWithValue("@size", Size);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Add To Bag Successfully..');</script>");

                txt_Size6.Text = "";

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        public void LoadData(DataTable datatable)
        {

        }
        protected void btn_order1_Click(object sender, EventArgs e)
        {

            Session["Name"] = lbl_Brand1.Text;
            Session["Model"] = lbl_Model1.Text;
            Session["Size"] = txt_Size1.Text;
            Session["Cost"] = lbl_Cost1.Text;

            
            Response.Redirect("confirmation.aspx"); 

        }

        protected void btn_order2_Click(object sender, EventArgs e)
        {

            Session["Name"] = lbl_Brand2.Text;
            Session["Model"] = lbl_Model2.Text;
            Session["Size"] = txt_Size2.Text;
            Session["Cost"] = lbl_Cost2.Text;

            Response.Redirect("confirmation.aspx");
           
        }

        protected void btn_order3_Click(object sender, EventArgs e)
        {

            Session["Name"] = lbl_Brand3.Text;
            Session["Model"] = lbl_Model3.Text;
            Session["Size"] = txt_Size3.Text;
            Session["Cost"] = lbl_Cost3.Text;

            Response.Redirect("confirmation.aspx");

        }

        protected void btn_order4_Click(object sender, EventArgs e)
        {

            Session["Name"] = lbl_Brand4.Text;
            Session["Model"] = lbl_Model4.Text;
            Session["Size"] = txt_Size4.Text;
            Session["Cost"] = lbl_Cost4.Text;

            Response.Redirect("confirmation.aspx");

        }

        protected void btn_order5_Click(object sender, EventArgs e)
        {

            Session["Name"] = lbl_Brand5.Text;
            Session["Model"] = lbl_Model5.Text;
            Session["Size"] = txt_Size5.Text;
            Session["Cost"] = lbl_Cost5.Text;

            Response.Redirect("confirmation.aspx");

        }

        protected void btn_order6_Click(object sender, EventArgs e)
        {

            Session["Name"] = lbl_Brand6.Text;
            Session["Model"] = lbl_Model6.Text;
            Session["Size"] = txt_Size6.Text;
            Session["Cost"] = lbl_Cost6.Text;

            Response.Redirect("confirmation.aspx");

        }
    }
}