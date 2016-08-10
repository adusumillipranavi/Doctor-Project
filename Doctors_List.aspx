<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Doctors_List.aspx.cs" Inherits="Admin_Clinic_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">

        function GetClientID(id, context) {
            var el = $("#" + id, context);
            if (el.length < 1)
                el = $("[id$=_" + id + "]", context);
            return el;
        }
        $(document).ready(function () {
            loadcliniclist();
        });
        function inactivedoctor(CID) {
            alertify.confirm("Are You Sure Want to Inactive this Doctor ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/inactivedoctor",
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
        function activedoctor(CID) {
            alertify.confirm("Are You Sure Want to Activate this Doctor ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/activedoctor",
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
        function loadcliniclist() {
            $.ajax({
                url: "Admin_Codeing.asmx/viewdoctorlistdata",
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
        function removedoctor(CID) {
            alertify.confirm("Are You Sure Want to Remove this Doctor ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/removedoctorlistdata",
                        data: "{'CID': '" + CID + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            var a = data.d;
                            if (a == "0") {
                                alertify.alert("Removed Sucessfully");
                                $("#tr_" + CID).remove();
                                window.location = "Doctors_List.aspx";
                                return false;
                            }
                        }
                    });
                }
            });
        }
        function editdoctor(CID) {
            //window.location = "Doctor_Update.aspx?Clinic=" + CID + "";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-lg-12">
        <h1 class="page-header">Doctors List
                           
        </h1>
        <div class="table-responsive">
            <div id="datadiv">
            </div>

        </div>
    </div>
</asp:Content>

