<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Clinic_List.aspx.cs" Inherits="Admin_Clinic_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function GetClientID(id, context) {
            var el = $("#" + id, context);
            if (el.length < 1)
                el = $("[id$=_" + id + "]", context);
            return el;
        }
        function inactiveclinic(CID) {
            alertify.confirm("Are You Sure Want to Inactive this Health Center ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/inactiveclinic",
                        data: "{'CID': '" + CID + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            var a = data.d;
                            if (a == "0") {
                                alertify.alert("Inactivated Sucessfully");
                                loadcliniclist();
                            }
                        }
                    });
                }
            });
        }
        function activeclinic(CID) {
            alertify.confirm("Are You Sure Want to Activate this Health Center ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/activeclinic",
                        data: "{'CID': '" + CID + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            var a = data.d;
                            if (a == "0") {
                                alertify.alert("Activated Sucessfully");
                                loadcliniclist();
                            }
                        }
                    });
                }
            });
        }
        $(document).ready(function () {
            loadcliniclist();
        });
        function loadcliniclist() {
            $.ajax({
                url: "Admin_Codeing.asmx/viewclinilistdata",
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var a = data.d;
                    $(GetClientID('datadiv')).html('');
                    $(GetClientID('datadiv')).html(data.d);
                }
            });
        }
        function removeclinic(CID) {
            alertify.confirm("Are You Sure Want to Remove this Health Center ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/removeclinilistdata",
                        data: "{'CID': '" + CID + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            var a = data.d;
                            if (a == "0") {
                                alertify.alert("Removed Sucessfully");
                                $(GetClientID('tr_' + CID)).remove();
                                return false;
                            }
                        }
                    });
                }
            });
        }
        function editclinic(CID) {
            window.location = "Clinic_Update.aspx?Clinic=" + CID + "";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <h1 class="page-header">Health Centers List
                           
        </h1>
        <div class="table-responsive">
            <div id="datadiv">
            </div>

        </div>
    </div>
</asp:Content>

