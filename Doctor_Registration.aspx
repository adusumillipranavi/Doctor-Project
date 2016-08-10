<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Doctor_Registration.aspx.cs" Inherits="Admin_Doctor_Registration" %>

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
    <script src="../Codescripts/Admin_Doctor_Registration.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Doctor Creation                           
            </h1>
        </div>
        <table style="width: 100%;" cellspacing="10">
            <tr>
                <td style="width: 200px;">Doctor Name <span class="mandatoryicon">*</span>
                </td>
                <td colspan="2">
                    <input class="form-control" id="txtname" maxlength="80" placeholder="Enter Doctor Name" />
                </td>

            </tr>
            <form id="form1" runat="server">
                <tr>
                    <td>Education (Shortcuts) <span class="mandatoryicon">*</span>
                    </td>
                    <td colspan="2">
                        <input class="form-control" id="Text3" placeholder="Enter Education (Shortcuts) (Ex: Bsc.Com)" />
                    </td>

                </tr>
                <tr>
                    <td style="vertical-align:top;">Qualification & University
                    </td>
                    <td colspan="2">
                        <div id="Educationdiv">
                            <div style="width: 100%; height: 40px;">
                                <div style="float: left; width: 97%;">
                                    <input class="form-control" id="Text4" placeholder="Enter Qualification & University" />
                                </div>
                                <div style="float: right; width: 2%; padding-top: 4px;">
                                    <a href="javascript:" onclick="Addedutextbox()" style="cursor: pointer;">
                                        <img title="Add Text Box" alt="Add" src="../Images/1417943461_add-16.png" /></a>
                                </div>
                            </div>
                        </div>                        
                    </td>

                </tr>

                <tr>
                    <td>Studied in which Countries ? <span class="mandatoryicon">*</span>
                    </td>
                    <td colspan="2">

                        <asp:DropDownList Multiple="true" class="form-control chosen" ID="DropDownList4" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Worked in which Countries ? <span class="mandatoryicon">*</span>
                    </td>
                    <td colspan="2">

                        <asp:DropDownList Multiple="true" class="form-control chosen" ID="DropDownList5" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Specialist <span class="mandatoryicon">*</span>
                    </td>
                    <td colspan="2">

                        <asp:DropDownList Multiple="true" class="form-control chosen" ID="DropDownList2" onchange="getExpertiselist(this)" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Expertise <span class="mandatoryicon">*</span>
                    </td>
                    <td colspan="2">

                        <asp:DropDownList Multiple="true" class="form-control chosen" ID="DropDownList1" runat="server"></asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>Years of Experience <span class="mandatoryicon">*</span>
                    </td>
                    <td colspan="2">

                        <asp:DropDownList class="form-control chosen" ID="DropDownList6" runat="server">
                            <asp:ListItem Value="1">1+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="2">2+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="3">3+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="4">4+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="5">5+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="6">6+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="7">7+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="8">8+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="9">9+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="10">10+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="11">11+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="12">12+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="13">13+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="14">14+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="15">15+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="16">16+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="17">17+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="18">18+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="19">19+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="20">20+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="21">21+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="22">22+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="23">23+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="24">24+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="25">25+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="26">26+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="27">27+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="28">28+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="29">29+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="30">30+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="31">31+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="32">32+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="33">33+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="34">34+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="35">35+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="36">36+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="37">37+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="38">38+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="39">39+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="40">40+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="41">41+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="42">42+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="43">43+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="44">44+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="45">45+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="46">46+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="47">47+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="48">48+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="49">49+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="50">50+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="51">51+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="52">52+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="53">53+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="54">54+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="55">55+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="56">56+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="57">57+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="58">58+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="59">59+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="60">60+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="61">61+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="62">62+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="63">63+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="64">64+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="65">65+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="66">66+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="67">67+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="68">68+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="69">69+ Years Experience</asp:ListItem>
                            <asp:ListItem Value="70">70+ Years Experience</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">Past Experience at
                    </td>
                    <td style="vertical-align: top" colspan="2">
                        <div id="ExperienceTextboxesdiv">
                            <div style="width: 100%; height: 40px;">
                                <div style="float: left; width: 97%;">
                                    <input class="form-control" maxlength="100" placeholder="Provide Your Experience" />
                                </div>
                                <div style="float: right; width: 2%; padding-top: 4px;">
                                    <a href="javascript:" onclick="AddExperiencetextbox()" style="cursor: pointer;">
                                        <img title="Add Text Box" alt="Add" src="../Images/1417943461_add-16.png" /></a>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">Memberships 
                    </td>
                    <td style="vertical-align: top" colspan="2">
                        <div id="MemberTextboxdiv">
                            <div style="width: 100%; height: 40px;">
                                <div style="float: left; width: 97%;">
                                    <input class="form-control" maxlength="100" placeholder="Provide Your Membership Details" />
                                </div>
                                <div style="float: right; width: 2%; padding-top: 4px;">
                                    <a href="javascript:" onclick="Addmembertextbox()" style="cursor: pointer;">
                                        <img title="Add Text Box" alt="Add" src="../Images/1417943461_add-16.png" /></a>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align: top;">Achievements 
                    </td>
                    <td style="vertical-align: top" colspan="2">
                        <div id="AwardsTextboxdiv">
                            <div style="width: 100%; height: 40px;">
                                <div style="float: left; width: 97%;">
                                    <input class="form-control" maxlength="100" placeholder="Provide Your Achievements Details" />
                                </div>
                                <div style="float: right; width: 2%; padding-top: 4px;">
                                    <a href="javascript:" onclick="AddAwardstextbox()" style="cursor: pointer;">
                                        <img title="Add Text Box" alt="Add" src="../Images/1417943461_add-16.png" /></a>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
               

            </form>
            <tr>
                <td style="vertical-align: top;">About Doctor 
                </td>
                <td>
                    <textarea id="TextArea1" class="form-control" cols="20" maxlength="500" rows="2" placeholder="Say Some thing about About Doctor" style="resize: none;"></textarea>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top;">Photo
                </td>
                <td>
                    <a id="logobrowseid" href="javascript:">Browse Photo</a><br />
                    <div class="imageselectionbox" id="instutelogo">
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <a style="float: right" class="btn btn-primary" href="javascript:" onclick="uploaddoctor()">Submit</a>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

