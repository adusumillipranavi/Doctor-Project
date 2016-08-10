<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/City.aspx.cs" Inherits="Admin_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="../Codescripts/admincode.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" Value="5" />
    </form>
    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Citys Creation
                           
            </h1>
            <div class="form-group">
                <input class="form-control" id="txtname" placeholder="Enter City Name to Create" />
            </div>
            <a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddata()">Submit</a>

        </div>
        <div class="col-lg-12">
            <h1 class="page-header">Citys List
                           
            </h1>
            <div class="table-responsive">
                <div id="datadiv">
                </div>

            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

