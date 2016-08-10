using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_Assign_Doctors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Doctor_names();
            clinic_names();
        }
    }
    public void Doctor_names()
    {
        Code cd = new Code();
        DataSet ds = cd.Assign_Doctorslist_Dropdown();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataSource = ds;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, " ");
        }
    }
    public void clinic_names()
    {
        Code cd = new Code();
        DataSet ds = cd.Assign_Cliniclist_Dropdown();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "ID";
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, " ");
        }
    }
}