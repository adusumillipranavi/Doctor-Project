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
using System.Text;

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
            viewclinicdata();
        }
    }
    public void viewclinicdata()
    {
        Code cd = new Code();
        if (Request.QueryString["Clinic"] != null)
        {
            cd.id = Request.QueryString["Clinic"].ToString();
            DataSet ds = cd.View_Clinicddetails();
            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                DropDownList1.SelectedValue = ds.Tables[0].Rows[0]["Speciality"].ToString();
                txtname.Value = ds.Tables[0].Rows[0]["Clinicname"].ToString();
                Text1.Value = ds.Tables[0].Rows[0]["Timings"].ToString();
                specialists.Value = ds.Tables[0].Rows[0]["Specialists"].ToString();
                Services.Value = ds.Tables[0].Rows[0]["Services"].ToString();
                insurance.Value = ds.Tables[0].Rows[0]["Insurance"].ToString();
                Text2.Value = ds.Tables[0].Rows[0]["Noofdoctors"].ToString();
                DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["City"].ToString();
                cd.city = ds.Tables[0].Rows[0]["City"].ToString();
                DataSet ds1 = cd.viewlocations();
                if (ds1 != null && ds1.Tables[0].Rows.Count > 0)
                {
                    DropDownList3.DataTextField = "Name";
                    DropDownList3.DataValueField = "ID";
                    DropDownList3.DataSource = ds1;
                    DropDownList3.DataBind();
                }
                DropDownList3.SelectedValue = ds.Tables[0].Rows[0]["Location"].ToString();
                Text3.Value = ds.Tables[0].Rows[0]["Address"].ToString();
                Text4.Value = ds.Tables[0].Rows[0]["contact1"].ToString();
                Text5.Value = ds.Tables[0].Rows[0]["contact2"].ToString();
                Text6.Value = ds.Tables[0].Rows[0]["contact3"].ToString();
                Text7.Value = ds.Tables[0].Rows[0]["contact4"].ToString();
                Text8.Value = ds.Tables[0].Rows[0]["Emailid"].ToString();
                Text10.Value = ds.Tables[0].Rows[0]["Website"].ToString();
                Text13.Value = ds.Tables[0].Rows[0]["Establishedby"].ToString();
                Text14.Value = ds.Tables[0].Rows[0]["Establishedon"].ToString();
                TextArea1.Value = ds.Tables[0].Rows[0]["Aboutclinic"].ToString();
                Text9.Value = ds.Tables[0].Rows[0]["Userid"].ToString();
                Password1.Value = ds.Tables[0].Rows[0]["Password"].ToString();
                HiddenField1.Value = ds.Tables[0].Rows[0]["CID"].ToString();                
                // logo binding //                
                if (ds.Tables[0].Rows[0]["Logo"].ToString() != "")
                {
                    StringBuilder logo = new StringBuilder();
                    logo.Append("<span id='Img_" + ds.Tables[0].Rows[0]["CID"].ToString() + "'>");
                    logo.Append("<img class='thumbimg' src='../Logos/" + ds.Tables[0].Rows[0]["Logo"].ToString() + "' imagepath='" + ds.Tables[0].Rows[0]["Logo"].ToString() + "'>");
                    logo.Append("<a class='thmbrmiconremove' onclick='deleteimage(this)' href='javascript:'>X</a>");
                    logo.Append("</span>");
                    instutelogo.InnerHtml = logo.ToString();
                }
                // Gallery Binding //
                if (ds.Tables[1] != null && ds1.Tables[0].Rows.Count > 0)
                {
                    StringBuilder gallery = new StringBuilder();
                    for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                    {
                        gallery.Append("<span id='Img_" + ds.Tables[1].Rows[i]["CID"].ToString() + "'>");
                        gallery.Append("<img class='galimag' src='../Gallery/" + ds.Tables[1].Rows[i]["Image"].ToString() + "' imagepath='" + ds.Tables[1].Rows[i]["Image"].ToString() + "'>");
                        gallery.Append("<a class='thmbrmiconremove' onclick='deleteimage(this)' href='javascript:'>X</a>");
                        gallery.Append("</span>");
                    }
                    paintinglogo.InnerHtml = gallery.ToString();
                }
            }
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