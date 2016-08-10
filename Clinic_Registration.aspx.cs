using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Clinic_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            citynamesbinding();
            Specialitylist();
            serviceslist();
            viewSpecialistslist();
            insurancelist();
        }
    }
    public void insurancelist()
    {
        Code cd = new Code();
        cd.role = "7";
        DataSet ds = cd.viewdata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList6.DataTextField = "Name";
            DropDownList6.DataValueField = "ID";
            DropDownList6.DataSource = ds;
            DropDownList6.DataBind();
        }
    }
    public void viewSpecialistslist()
    {
        Code cd = new Code();
        cd.role = "2";
        DataSet ds = cd.viewdata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList5.DataTextField = "Name";
            DropDownList5.DataValueField = "ID";
            DropDownList5.DataSource = ds;
            DropDownList5.DataBind();
        }
    }
    public void citynamesbinding()
    {
        Code cd = new Code();
        DataSet ds = cd.viewcitydata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "ID";
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "Select City");
        }
    }
    public void Specialitylist()
    {
        Code cd = new Code();
        cd.role = "4";
        DataSet ds = cd.viewdata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataSource = ds;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Select Health Center Type");
        }
    }
    public void serviceslist()
    {
        Code cd = new Code();
        cd.role = "1";
        DataSet ds = cd.viewdata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList4.DataTextField = "Name";
            DropDownList4.DataValueField = "ID";
            DropDownList4.DataSource = ds;
            DropDownList4.DataBind();
        }
    }
}