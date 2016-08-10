<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/Clinictype.aspx.cs" Inherits="Admin_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../Codescripts/admincode.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" Value="4" />
    </form>
    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Health Center Type Creation
                           
            </h1>
            <div class="form-group">
                <input class="form-control" id="txtname" placeholder="Enter Education Name to Create" />
            </div>
            <a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddata()">Submit</a>

        </div>
        <div class="col-lg-12">
            <h1 class="page-header">Health Center Types List
                           
            </h1>
            <div class="table-responsive">
                <div id="datadiv">
                </div>

            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

