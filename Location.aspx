<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/Location.aspx.cs" Inherits="Admin_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function GetClientID(id, context) {
            var el = $("#" + id, context);
            if (el.length < 1)
                el = $("[id$=_" + id + "]", context);
            return el;
        }
        function uploaddata() {
            var cityid = $(GetClientID('DropDownList1')).val();
            if (cityid == "0" || cityid == "Select City") {
                alertify.alert("City Should be Selected");
                return false;
            }
            var location = $(GetClientID('txtname')).val();
            if (location == "") {
                alertify.alert("Location Name Can't Be Blank");
                return false;
            }
            $.ajax({
                url: "Admin_Codeing.asmx/createlocation",
                data: "{'city': '" + cityid + "','location': '" + location + "'}",
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var a = data.d;
                    if (a == 0) {
                        $("#txtname").val('');
                        alertify.success('Created Sucessfully');
                        return false;
                    }
                    else if (a == 1) {
                        alertify.alert('Name Already Exist');
                        return false;
                    }
                    else {
                        alertify.alert('Server besy try later');
                        return false;
                    }
                }
            });
        }
        function getlocationnames(obj) {
            var a = $(obj).val();
            if (a == "0" || a == "Select City") {
                $("#databindingdiv").html('');
                alertify.alert("Select Any City to get Locations List");
                return false;
            }
            $.ajax({
                url: "Admin_Codeing.asmx/viewlocationnames",
                data: "{'ID': '" + a + "'}",
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var a = data.d;
                    $("#databindingdiv").html('');
                    $("#databindingdiv").html(data.d);
                }
            });
        }
        function edit(ID) {
            $(".openwindow").hide();
            $(".closewindow").show();
            $(".normal_" + ID).hide();
            $(".txtnameedit_" + ID).show();
        }
        function cancle(ID) {
            $(".txtnameedit_" + ID).hide();
            $(".normal_" + ID).show();
        }
        function updaterecord(dataid) {
            alertify.confirm("Are You Sure Want to Update ?", function (e) {
                if (e) {
                    var name = $(GetClientID('txtnameedit_' + dataid)).val().trim();
                    if (name == "") {
                        alertify.alert("Name Can't Be Blank");
                        return false;
                    }
                    $.ajax({
                        url: "Admin_Codeing.asmx/updatedatalocation",
                        data: "{'ID': '" + dataid + "','Name': '" + name + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            var a = data.d;
                            if (a == 0) {
                                $(".txtnameedit_" + dataid).hide();
                                $(".normal_" + dataid).show();
                                $("#normal_" + dataid).html(name);
                                alertify.alert("Updated Sucessfully");
                                return false;
                            }
                            else {
                                alertify.alert("Server besy try later");
                                return false;
                            }
                        }
                    });
                } else {
                    $(".txtnameedit_" + dataid).hide();
                    $(".normal_" + dataid).show();
                }
            });
        }

        function removedata(dataid) {
            alertify.confirm("Are You Sure Want to Delete ?", function (e) {
                if (e) {                    
                    $.ajax({
                        url: "Admin_Codeing.asmx/removedatalocation",
                        data: "{'ID': '" + dataid + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            var a = data.d;
                            if (a == 0) {
                                alertify.alert("Deleted Sucessfully");
                                $(GetClientID('tr_' + dataid)).remove();
                                return false;

                            }
                            else {
                                alertify.alert("Server besy try later");
                                return false;
                            }
                        }
                    });
                } else {
                    alertify.alert("You've clicked Cancel");
                }
            });
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Location Creation
                           
            </h1>
            <div class="form-group">
                <form id="form1" runat="server">

                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" onchange="getlocationnames(this)" runat="server"></asp:DropDownList>
                </form>
            </div>
            <div class="form-group">
                <input class="form-control" id="txtname" placeholder="Enter Location Name to Create" />
            </div>
            <a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddata()">Submit</a>

        </div>
        <div class="col-lg-12">
            <h1 class="page-header">Location List
                           
            </h1>
            <div class="table-responsive">
                <div id="databindingdiv">
                </div>

            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

