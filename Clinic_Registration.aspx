<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/Clinic_Registration.aspx.cs" Inherits="Admin_Clinic_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .mandatoryicon
        {
            font-weight: bold;
            color: red !important;
            font-size: 12px;
            margin-top: -2px;
        }

        table
        {
            border-spacing: 10px !important;
            border-collapse: inherit !important;
        }
    </style>
    <script src="../Script/jquery1.6.4.min.js"></script>
    <script src="../Codescripts/Multiimages_jquery.ajax_upload.0.6.js"></script>
    <script src="../Script/chosen.jquery.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../chosen.css" />
    <script src="../Codescripts/Admin_Clinic_Registration.js"></script>
    <link href="../Autosearch/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
    <script src="../Autosearch/jquery.autocompletesmalbox.js" type="text/javascript"></script>
    <script src="../Autosearch/jquery.ajax_upload.0.6.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Health Center Registration                           
            </h1>
        </div>

        <table style="width: 100%;" cellspacing="10">

            <form id="form1" runat="server">
                <tr>
                    <td style="width: 150px">Health Center Type <span class="mandatoryicon">*</span>
                    </td>
                    <td>

                        <asp:DropDownList class="form-control chosen" ID="DropDownList1" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Health Center Name <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="txtname" maxlength="80" placeholder="Enter Health Center Name" />
                    </td>
                </tr>
                <tr>
                    <td>Timings <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="Text1" maxlength="150" placeholder="Enter Clinic Timings" />
                    </td>
                </tr>
                <tr>
                    <td>Specialists <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList Multiple="true" class="form-control" ID="DropDownList5" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Services <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList Multiple="true" class="form-control" ID="DropDownList4" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>Insurance <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList Multiple="true" class="form-control" ID="DropDownList6" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                 <tr>
                    <td>Number of Doctors 
                    </td>
                    <td>
                        <input class="form-control" id="Text2" maxlength="150" placeholder="Enter No. of Doctors" />
                    </td>
                </tr>
                <tr>
                    <td>City <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList2" runat="server" onchange="bindlocations(this)"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Location <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList3" runat="server"></asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td>Address <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" maxlength="250" id="Text3" placeholder="Enter Clinic Address" />
                    </td>
                </tr>
                <tr>
                    <td>Primany Contact <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="Text4" maxlength="15" placeholder="Enter Your Contact Number" />
                    </td>
                </tr>
                <tr>
                    <td> Contact No.2 
                    </td>
                    <td>
                        <input class="form-control" id="Text5" maxlength="15" placeholder="Enter Your Contact Number" />
                    </td>
                </tr>
                <tr>
                    <td> Contact No.3
                    </td>
                    <td>
                        <input class="form-control" id="Text6" maxlength="15" placeholder="Enter Your Contact Number" />
                    </td>
                </tr>
                <tr>
                    <td> Contact No.4
                    </td>
                    <td>
                        <input class="form-control" id="Text7" maxlength="15" placeholder="Enter Your Contact Number" />
                    </td>
                </tr>
                <tr>
                    <td>Email ID
                    </td>
                    <td>
                        <input class="form-control" id="Text8" maxlength="50" placeholder="Enter Email ID" />
                    </td>
                </tr>
               
                <tr>
                    <td>Website 
                    </td>
                    <td>
                        <input class="form-control" id="Text10" maxlength="50" placeholder="Enter Website" />
                    </td>
                </tr>

            </form>
            <tr>
                <td>Founder
                </td>
                <td>
                    <input class="form-control" id="Text13" maxlength="50" placeholder="Enter Founder Name" />
                </td>
            </tr>
            <tr>
                <td>Established Year 
                </td>
                <td>
                    <input class="form-control" id="Text14" maxlength="10" placeholder="Enter Established Year" />
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;">About Health Center 
                </td>
                <td>
                    <textarea id="TextArea1" class="form-control" cols="20" maxlength="500" rows="2" placeholder="Enter About Health Center" style="resize: none;"></textarea>
                </td>
            </tr>
             <tr>
                    <td>Username <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="Text9" maxlength="15" type="text" placeholder="Enter Username" />
                    </td>
                </tr>
             <tr>
                    <td>Password <span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="Password1" maxlength="15" type="password" placeholder="Enter Password" />
                    </td>
                </tr>
            <tr>
                <td style="vertical-align: top;">Hospital Logo 
                </td>
                <td>
                    <a id="logobrowseid" href="javascript:">Browse Logo</a><br />
                    <div class="imageselectionbox" id="instutelogo">
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;">Photo Gallery
                </td>
                <td>
                    <a id="paintingbrowseid" href="javascript:">Browse Images</a>
                    <br />
                    <div class="imageselectionbox" id="paintinglogo">
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddata()">Submit</a>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>

