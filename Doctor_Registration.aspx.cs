using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;


public partial class Admin_Doctor_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            serviceslist();
            specificationlist();            
            countrynames();
        }
    }
    public void countrynames()
    {
        Code cd = new Code();
        cd.role = "6";
        DataSet ds = cd.viewdata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList4.DataTextField = "Name";
            DropDownList4.DataValueField = "ID";
            DropDownList4.DataSource = ds;
            DropDownList4.DataBind();

            DropDownList5.DataTextField = "Name";
            DropDownList5.DataValueField = "ID";
            DropDownList5.DataSource = ds;
            DropDownList5.DataBind();
        }
    }
    public void serviceslist()
    {
        
    }
    public void specificationlist()
    {
        Code cd = new Code();
        cd.role = "2";
        DataSet ds = cd.viewdata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList2.DataTextField = "Name";
            DropDownList2.DataValueField = "ID";
            DropDownList2.DataSource = ds;
            DropDownList2.DataBind();
        }
    }

}