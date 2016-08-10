<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Assign_Doctors.aspx.cs" Inherits="Admin_Assign_Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .mandatoryicon
        {
            font-weight: bold;
            color: red !important;
            font-size: 12px;
            margin-top: -2px;
        }

        .tabletext
        {
            border-spacing: 10px !important;
            border-collapse: inherit !important;
        }
    </style>
    <script src="../Script/jquery1.6.4.min.js"></script>
    <script src="../Script/chosen.jquery.js" type="text/javascript"></script>
    <link rel="stylesheet" href="../chosen.css" />
    <script src="../Codescripts/Admin_Doctor_Assigning.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Assign Doctors to Health Centers                           
            </h1>
        </div>
        <table style="width: 100%;" cellspacing="10" class="tabletext">
            <form id="form1" runat="server">
                <tr>
                    <td style="width: 150px">Select Doctors<span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList1" onchange="getdoctorregisteredclinicnames(this)" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px">Select Health Center<span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList2" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Doctor Fee<span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="txtname" maxlength="80" placeholder="Enter Doctor Fee" />
                    </td>
                </tr>
                <tr>
                    <td>Timings<span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <input class="form-control" id="Text1" maxlength="80" placeholder="Enter Doctor Timings" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddata()">Submit</a>
                    </td>
                </tr>
            </form>
        </table>
        <div class="col-lg-12" id="assignedlistdiv">
            <h1 class="page-header">Assigned Health Centers List
                           
            </h1>
            <div class="table-responsive">
                <div id="databindingdiv">
                </div>

            </div>
        </div>
    </div>
</asp:Content>

