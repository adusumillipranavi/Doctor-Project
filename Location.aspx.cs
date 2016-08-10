using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Services : System.Web.UI.Page
{
    Code cd = new Code();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            citynamesbinding();
        }
    }
    public void citynamesbinding()
    {
        Code cd = new Code();
        DataSet ds = cd.viewcitydata();
        if (ds != null && ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataSource = ds;
            DropDownList1.DataBind();            
            DropDownList1.Items.Insert(0, "Select City");
        }
    }
}