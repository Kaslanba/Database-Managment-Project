using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace databaseTermProject
{
    public partial class detailedSearch : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(@"Data Source=KAAN1;Initial Catalog=GTS;Integrated Security=true;");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("Id") });
                dt.Rows.Add(1);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("Id") });
                dt.Rows.Add(1);
                GridView2.DataSource = dt;
                GridView2.DataBind();

            }

            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("Id") });
                dt.Rows.Add(1);
                GridView3.DataSource = dt;
                GridView3.DataBind();

            }

            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("Id") });
                dt.Rows.Add(1);
                GridView4.DataSource = dt;
                GridView4.DataBind();

            }

            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[1] { new DataColumn("Id") });
                dt.Rows.Add(1);
                GridView5.DataSource = dt;
                GridView5.DataBind();
            }
        }
        //void FillGridView()
        //{
        //    if (sqlCon.State == ConnectionState.Closed)
        //        sqlCon.Open();
        //    SqlDataAdapter sqlDa = new SqlDataAdapter("ThesisJoin", sqlCon);
        //    sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
        //    DataTable dtbl = new DataTable();
        //    sqlDa.Fill(dtbl);
        //    sqlCon.Close();
        //    gvThesis.DataSource = dtbl;
        //    gvThesis.DataBind();
        //}

        protected void Gv1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = sender as DropDownList;
            string selectedText = ddl.SelectedItem.Text;
            TextBox txt = ddl.NamingContainer.FindControl("txtUniversity") as TextBox;
            txt.Text = selectedText;
        }
        protected void Gv2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = sender as DropDownList;
            string selectedText = ddl.SelectedItem.Text;
            TextBox txt = ddl.NamingContainer.FindControl("txtInstitute") as TextBox;
            txt.Text = selectedText;
        }
        protected void Gv3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = sender as DropDownList;
            string selectedText = ddl.SelectedItem.Text;
            TextBox txt = ddl.NamingContainer.FindControl("txtSubject") as TextBox;
            txt.Text = selectedText;
        }
        protected void Gv4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = sender as DropDownList;
            string selectedText = ddl.SelectedItem.Text;
            TextBox txt = ddl.NamingContainer.FindControl("txtType") as TextBox;
            txt.Text = selectedText;
        }
        protected void Gv5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddl = sender as DropDownList;
            string selectedText = ddl.SelectedItem.Text;
            TextBox txt = ddl.NamingContainer.FindControl("txtLanguage") as TextBox;
            txt.Text = selectedText;
        }
        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    int userID = 0;

        //    string constr = "server= servername;database=SchoolDB;Trusted_Connection=True;";
        //    using (SqlConnection con = new SqlConnection(constr))

        //    {
        //        using (SqlCommand cmd = new SqlCommand())
        //        {
        //            using (SqlDataAdapter sda = new SqlDataAdapter())
        //            {
        //                cmd.Parameters.AddWithValue("@sname ", txtUniversity.Text.Trim());
        //                cmd.Parameters.AddWithValue("@uname ", txtInstitute.Text.Trim());
        //                cmd.Parameters.AddWithValue("@pass ", txtPassword.Text.Trim());
        //                cmd.Parameters.AddWithValue("@email ", txtEmail.Text.Trim());
        //                cmd.Connection = con;
        //                con.Open();
        //                userID = Convert.ToInt32(cmd.ExecuteScalar());
        //                con.Close();
        //            }
        //        }
        //    }
        //}
    }
}



