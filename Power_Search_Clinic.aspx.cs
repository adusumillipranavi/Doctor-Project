using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_Pwner_Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            power_search_clinic_pageloaddata();
        }
    }
    public void power_search_clinic_pageloaddata()
    {
        Code cd=new Code();
        DataSet ds=cd.power_search_clinic_pageloaddata();
        if(ds!=null && ds.Tables[0].Rows.Count>0)
        {
            // Health center type name - Speciality table
            DropDownList1.DataTextField = ds.Tables[0].Columns["Name"].ToString();
            DropDownList1.DataValueField = ds.Tables[0].Columns["ID"].ToString();
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "Any");
            // Specialists - Specifications table
            DropDownList6.DataTextField = ds.Tables[2].Columns["Name"].ToString();
            DropDownList6.DataValueField = ds.Tables[2].Columns["ID"].ToString();
            DropDownList6.DataSource = ds.Tables[2];
            DropDownList6.DataBind();
            DropDownList6.Items.Insert(0, "Any");
            // Service - Service table
            DropDownList7.DataTextField = ds.Tables[1].Columns["Name"].ToString();
            DropDownList7.DataValueField = ds.Tables[1].Columns["ID"].ToString();
            DropDownList7.DataSource = ds.Tables[1];
            DropDownList7.DataBind();
            DropDownList7.Items.Insert(0, "Any");
            // Clinic Name
            DropDownList2.DataTextField = ds.Tables[3].Columns["Name"].ToString();
            DropDownList2.DataValueField = ds.Tables[3].Columns["ID"].ToString();
            DropDownList2.DataSource = ds.Tables[3];
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "Any");
            // city
            DropDownList4.DataTextField = ds.Tables[4].Columns["Name"].ToString();
            DropDownList4.DataValueField = ds.Tables[4].Columns["ID"].ToString();
            DropDownList4.DataSource = ds.Tables[4];
            DropDownList4.DataBind();
            DropDownList4.Items.Insert(0, "Any");
        }
    }
}