<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Pwner_Search.aspx.cs" Inherits="Admin_Pwner_Search" %>

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
    <script src="../Codescripts/Admin_Power_Search.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Search Doctors                          
            </h1>
        </div>
        <table style="width: 100%;" cellspacing="10" class="tabletext">
            <form id="form1" runat="server">
                <thead>
                    <th style="width: 20%">Specialist</th>
                    <th style="width: 20%">Health Center</th>
                    <th style="width: 20%">Contact Number</th>
                    <th style="width: 20%">City</th>
                    <th style="width: 20%">Location</th>
                </thead>
                <tr>
                    <td style="width: 150px">
                        <asp:DropDownList class="form-control chosen" ID="DropDownList1" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList2" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList3" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList4" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList5" runat="server"></asp:DropDownList>
                    </td>
                </tr>
            </form>
        </table>
        <div class="col-lg-12" id="assignedlistdiv">
            <h1 class="page-header">Doctors List
                           
            </h1>
            <div class="table-responsive">
                <div id="databindingdiv">
                </div>

            </div>
        </div>
    </div>
</asp:Content>

