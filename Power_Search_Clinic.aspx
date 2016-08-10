<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/Power_Search_Clinic.aspx.cs" Inherits="Admin_Pwner_Search" %>

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
    <script src="../Codescripts/Admin_Power_Search_Clinic.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Search Health Centers       
            </h1>

        </div>
        <table style="width: 100%;" cellspacing="10" class="tabletext">
            <form id="form1" runat="server">
                <thead>
                    <th style="width: 15%">Health Center Type</th>
                    <th style="width: 15%">Specialists </th>
                    <th style="width: 15%">Service </th>
                    <th style="width: 15%">Health Center</th>
                    <th style="width: 15%">Contact Number</th>
                    <th style="width: 15%">City</th>
                    <th style="width: 15%">Location</th>
                </thead>
                <tr>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList1" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList6" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList7" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList2" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <input id="txtname" class="form-control" placeholder="Enter Contact No." style="width: 150px!important;" />
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList4" runat="server" onchange="bindlocations(this)"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList5" runat="server"></asp:DropDownList>
                    </td>
                </tr>
            </form>
        </table>
        <div class="col-lg-12" id="assignedlistdiv">
            <h1 class="page-header">Health Centers List
                           <a class="btn btn-primary" href="javascript:" onclick="searchhealthcenters()" style="margin-left: 10px; margin-right: 10px; float: right; padding: 1px 10px !important;">Search</a>        <a class="btn btn-primary" href="Power_Search_Clinic.aspx" style="float: right; padding: 1px 10px !important;">Clear Filter</a>
            </h1>
            <div class="table-responsive">
                <div id="databindingdiv">
                </div>

            </div>
        </div>
    </div>
</asp:Content>

