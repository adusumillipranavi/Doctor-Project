using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.Configuration;


public partial class Admin_Doctor_Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            serviceslist();
            specificationlist();
            countrynames();
            viewdoctordata();
        }
    }
    public void viewdoctordata()
    {
        Code cd = new Code();
        if (Request.QueryString["Doctor"] != null)
        {
            cd.id = Request.QueryString["Doctor"].ToString();
            DataSet ds = cd.View_Doctordetails();
            if (ds != null && ds.Tables[0].Rows.Count > 0)
            {
                HiddenField1.Value = ds.Tables[0].Rows[0]["DID"].ToString();
                txtname.Value = ds.Tables[0].Rows[0]["Name"].ToString();
                Text3.Value = ds.Tables[0].Rows[0]["Education_Short"].ToString();
                studiedin.Value = ds.Tables[0].Rows[0]["Studiedin"].ToString();
                workedin.Value = ds.Tables[0].Rows[0]["Workedin"].ToString();
                DropDownList6.SelectedValue = ds.Tables[0].Rows[0]["Experience"].ToString();
                TextArea1.Value = ds.Tables[0].Rows[0]["About"].ToString();
                // logo binding //                
                if (ds.Tables[0].Rows[0]["Logo"].ToString() != "")
                {
                    StringBuilder logo = new StringBuilder();
                    logo.Append("<span id='Img_" + ds.Tables[0].Rows[0]["DID"].ToString() + "'>");
                    logo.Append("<img class='thumbimg' src='../Logos/" + ds.Tables[0].Rows[0]["Logo"].ToString() + "' imagepath='" + ds.Tables[0].Rows[0]["Logo"].ToString() + "'>");
                    logo.Append("<a class='thmbrmiconremove' onclick='deleteimage(this)' href='javascript:'>X</a>");
                    logo.Append("</span>");
                    instutelogo.InnerHtml = logo.ToString();
                }
                // Specialist  Binding
                string specialistids = "";
                if (ds.Tables[1] != null && ds.Tables[1].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[1].Rows.Count; i++)
                    {
                        specialistids += ds.Tables[1].Rows[i]["Name"].ToString() + ",";
                    }
                    specialist.Value = specialistids;
                }
                // Bind Expertise Based on Specialist 
                cd.Specialist = specialistids;
                DataSet ds1 = cd.getExpertisebasedonspecialist();
                if (ds1 != null && ds1.Tables[0].Rows.Count > 0)
                {
                    DropDownList1.DataTextField = "Name";
                    DropDownList1.DataValueField = "ID";
                    DropDownList1.DataSource = ds1;
                    DropDownList1.DataBind();
                }
                // Expertise  Binding
                if (ds.Tables[2] != null && ds.Tables[2].Rows.Count > 0)
                {
                    string expertiseids = "";
                    for (int j = 0; j < ds.Tables[2].Rows.Count; j++)
                    {
                        expertiseids += ds.Tables[2].Rows[j]["Name"].ToString() + ",";
                    }
                    expertise.Value = expertiseids;
                }
                // Qualification Binding
                StringBuilder qualification = new StringBuilder();
                if (ds.Tables[0].Rows[0]["Education_Long"] != null || ds.Tables[0].Rows[0]["Education_Long"] != "")
                {
                    int eduid = 0;
                    string[] qualificationcount = ds.Tables[0].Rows[0]["Education_Long"].ToString().Split(',');
                    for (int k = 0; k < qualificationcount.Length; k++)
                    {
                        if (qualificationcount[k] != "")
                        {
                            eduid = eduid + 11;
                            qualification.Append("<div id=eduDiv" + eduid + " style='width:100%;height:40px;'><div style='float: left;width:97%;'><input class='form-control' value='" + qualificationcount[k] + "' maxlength='500' placeholder='Enter Qualification & University' /></div><div style='float: right; width: 2%;padding-top:4px;'><a href='javascript:' onclick='Removeedutextbox(" + eduid + ")' style='cursor: pointer;'><img title='Add Text Box' alt='Add' src='../Images/cross-24-16.png' /></a></div></div>");
                        }
                    }
                }
                qualification.Append("<div style='width: 100%; height: 40px;'>");
                qualification.Append("<div style='float: left; width: 97%;'>");
                qualification.Append("<input class='form-control' id='Text4' placeholder='Enter Qualification & University' />");
                qualification.Append(" </div>");
                qualification.Append("<div style='float: right; width: 2%; padding-top: 4px;'>");
                qualification.Append(" <a href='javascript:' onclick='Addedutextbox()' style='cursor: pointer;'>");
                qualification.Append("<img title='Add Text Box' alt='Add' src='../Images/1417943461_add-16.png' /></a>");
                qualification.Append("</div>");
                qualification.Append(" </div>");
                Educationdiv.InnerHtml = qualification.ToString();
                // Past Experience Binding
                StringBuilder pastexperience = new StringBuilder();
                if (ds.Tables[3] != null && ds.Tables[3].Rows.Count > 0)
                {
                    int pastexp = 0;
                    for (int l = 0; l < ds.Tables[3].Rows.Count; l++)
                    {
                        if (ds.Tables[3].Rows[l]["Name"].ToString() != "")
                        {
                            pastexp = pastexp = 11;
                            pastexperience.Append("<div id=ExpDiv" + pastexp + " style='width:100%;height:40px;'><div style='float: left;width:97%;'><input value=" + ds.Tables[3].Rows[l]["Name"].ToString() + " class='form-control' maxlength='50' placeholder='Provide Your Experience' /></div><div style='float: right; width: 2%;padding-top:4px;'><a href='javascript:' onclick='RemoveExperiencetextbox(" + pastexp + ")' style='cursor: pointer;'><img title='Add Text Box' alt='Add' src='../Images/cross-24-16.png' /></a></div></div>");
                        }
                    }
                }
                pastexperience.Append("<div style='width: 100%; height: 40px;'>");
                pastexperience.Append("<div style='float: left; width: 97%;'>");
                pastexperience.Append("<input class='form-control' maxlength='100' placeholder='Provide Your Experience' />");
                pastexperience.Append("</div>");
                pastexperience.Append("<div style='float: right; width: 2%; padding-top: 4px;'>");
                pastexperience.Append("<a href='javascript:' onclick='AddExperiencetextbox()' style='cursor: pointer;'>");
                pastexperience.Append("<img title='Add Text Box' alt='Add' src='../Images/1417943461_add-16.png' /></a>");
                pastexperience.Append("</div>");
                pastexperience.Append("</div>");
                ExperienceTextboxesdiv.InnerHtml = pastexperience.ToString();
                // membership Binding
                StringBuilder membership = new StringBuilder();
                if (ds.Tables[4] != null && ds.Tables[4].Rows.Count > 0)
                {
                    int memberid = 0;
                    for (int m = 0; m < ds.Tables[4].Rows.Count; m++)
                    {
                        if (ds.Tables[4].Rows[m]["Name"].ToString() != "")
                        {
                            memberid = memberid = 11;
                            membership.Append("<div id=MemberDiv" + memberid + " style='width:100%;height:40px;'><div style='float: left;width:97%;'><input value='" + ds.Tables[4].Rows[m]["Name"].ToString() + "' class='form-control' maxlength='50' placeholder='Provide Your Membership Details' /></div><div style='float: right; width: 2%;padding-top:4px;'><a href='javascript:' onclick='Removemembertextbox(" + memberid + ")' style='cursor: pointer;'><img title='Add Text Box' alt='Add' src='../Images/cross-24-16.png' /></a></div></div>");
                        }
                    }
                }
                membership.Append("<div style='width: 100%; height: 40px;'>");
                membership.Append("<div style='float: left; width: 97%;'>");
                membership.Append(" <input class='form-control' maxlength='100' placeholder='Provide Your Membership Details' />");
                membership.Append("</div>");
                membership.Append("<div style='float: right; width: 2%; padding-top: 4px;'>");
                membership.Append("<a href='javascript:' onclick='Addmembertextbox()' style='cursor: pointer;'>");
                membership.Append("<img title='Add Text Box' alt='Add' src='../Images/1417943461_add-16.png' /></a>");
                membership.Append("</div>");
                membership.Append(" </div>");
                MemberTextboxdiv.InnerHtml = membership.ToString();
                //Achievements Binding
                StringBuilder achivments = new StringBuilder();
                if (ds.Tables[5] != null && ds.Tables[5].Rows.Count > 0)
                {
                    int Awardid = 0;
                    for (int n = 0; n < ds.Tables[5].Rows.Count; n++)
                    {
                        if (ds.Tables[5].Rows[n]["Name"].ToString() != "")
                        {
                            Awardid = Awardid = 11;
                            achivments.Append("<div id=AwardDiv" + Awardid + " style='width:100%;height:40px;clear:none;'><div style='float: left;width:97%;'><input  value='" + ds.Tables[5].Rows[n]["Name"].ToString() + "' class='form-control' maxlength='50' placeholder='Provide Your Achievements Details' /></div><div style='float: right; width: 2%;padding-top:4px;'><a href='javascript:' onclick='RemoveAwardtextbox(" + Awardid + ")' style='cursor: pointer;'><img title='Add Text Box' alt='Add' src='../Images/cross-24-16.png' /></a></div></div>");
                        }
                    }
                }
                achivments.Append("<div style='width: 100%; height: 40px;'>");
                achivments.Append("<div style='float: left; width: 97%;'>");
                achivments.Append("<input class='form-control' maxlength='100' placeholder='Provide Your Achievements Details' />");
                achivments.Append(" </div>");
                achivments.Append("<div style='float: right; width: 2%; padding-top: 4px;'>");
                achivments.Append(" <a href='javascript:' onclick='AddAwardstextbox()' style='cursor: pointer;'>");
                achivments.Append(" <img title='Add Text Box' alt='Add' src='../Images/1417943461_add-16.png' /></a>");
                achivments.Append(" </div>");
                achivments.Append("</div>");
                AwardsTextboxdiv.InnerHtml = achivments.ToString();
            }
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