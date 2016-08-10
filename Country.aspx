<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/Country.aspx.cs" Inherits="Admin_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .mandatoryicon
        {
            font-weight: bold;
            color: red !important;
            font-size: 12px;
            margin-top: -2px;
        }
    </style>
    <script src="../Script/jquery1.6.4.min.js"></script>
    <script src="../Codescripts/Multiimages_jquery.ajax_upload.0.6.js"></script>
    <script type="text/javascript">
        function GetClientID(id, context) {
            var el = $("#" + id, context);
            if (el.length < 1)
                el = $("[id$=_" + id + "]", context);
            return el;
        }
        $(document).ready(function () {
            image1fileUpload();
            loaddatabasedonpage();
        });
        function loaddatabasedonpage() {            
            $.ajax({
                url: "Admin_Codeing.asmx/viewcountrydata",                
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
        function image1fileUpload() {
            /* example 1 */
            var button = $('#logobrowseid');
            $.ajax_upload(button, {
                action: '../ASHXFILES/FLag.ashx',
                name: 'myfile',
                type: 'GET',
                contentType: "application/json; charset=utf-8",
                onSuccess: function (data) {
                    alert(data.d);
                },
                onSubmit: function (file, ext) {
                    // change button text, when user selects fil           
                    if (ext.toLowerCase() == "jpg" || ext.toLowerCase() == "jpeg" || ext.toLowerCase() == "png" || ext.toLowerCase() == "tiff" || ext.toLowerCase() == "gif") {
                    }
                    else {
                        alert('Please Select Valid Image');
                        return false;
                    }
                },
                onComplete: function (file, response) {
                    response = response.split('{')[1];
                    if (file != "Invalid") {
                        $(GetClientID('instutelogo')).html("<span></br><img  imagepath='" + response.split('}')[0] + "' src='../Logos/" + response.split('}')[0] + "' /><a class='thmbrmiconremove' href='javascript:' onclick='deleteimage(this)'>X</a></span>");
                    }
                    else {
                        alert('Error in Saving Image');
                    }
                }
            });
        }
        function deleteimage(obj) {
            $(obj).closest('span').find('img').remove();
            $(obj).remove();
        }
        function uploaddata() {
            var country = $(GetClientID('txtname')).val();
            if (country == "") {
                alertify.alert("Country Name Can't be Blank");
                return false;
            }
            var logo = "";
            $('#instutelogo').find('img').each(function () {
                if (logo != "") {
                    logo += "*";
                }
                logo += $(this).attr('imagepath');
            });
            if (logo == "") {
                alertify.alert("Country Flag Required");
                return false;
            }
            $.ajax({
                url: "Admin_Codeing.asmx/createcountry",
                data: "{'city': '" + country + "','location': '" + logo + "'}",
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                success: function (data) {
                    var a = data.d;
                    if (a == 0) {
                        $("#txtname").val('');
                        alertify.alert('Created Sucessfully');
                        window.location = "Country.aspx";
                        return false;
                        
                    }
                    else if (a == 1) {
                        alertify.alert('Country Already Exist');
                        return false;
                    }
                    else {
                        alertify.alert('Server besy try later');
                        return false;
                    }
                }
            });
        }
        function removedata(dataid) {
            alertify.confirm("Are You Sure Want to Delete ?", function (e) {
                if (e) {
                    $.ajax({
                        url: "Admin_Codeing.asmx/removedatacountry",
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
            <h1 class="page-header">Country Creation
                           
            </h1>
            <table style="width: 100%;" >
                <tr style="height:60px !important;">
                    <td>Country Name
                    </td>
                    <td>
                        <input class="form-control" id="txtname" placeholder="Enter Country Name to Create" /></td>
                </tr>
                <tr>
                    <td style="width: 120px; vertical-align: top;">Photo<span class="mandatoryicon">*</span>
                    </td>
                    <td>
                        <a id="logobrowseid" href="javascript:">Browse Flag</a><br />
                        <div class="imageselectionbox" id="instutelogo">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddata()">Submit</a></td>
                </tr>
            </table>
        </div>
        <div class="col-lg-12">
            <h1 class="page-header">Country List
                           
            </h1>
            <div class="table-responsive">
                <div id="datadiv">
                </div>

            </div>
        </div>
    </div>
    <!-- /.row -->
</asp:Content>

