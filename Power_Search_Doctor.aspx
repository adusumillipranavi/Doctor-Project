<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="~/Admin/Power_Search_Doctor.aspx.cs" Inherits="Admin_Pwner_Search" %>

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
            <h1 class="page-header">Search Doctors       
            </h1>

        </div>
        <table style="width: 100%;" cellspacing="10" class="tabletext">
            <form id="form1" runat="server">
                <thead>
                    <th style="width: 15%">Health Center</th>
                    <th style="width: 15%">Doctor Name </th>
                    <th style="width: 15%">Studied At </th>
                    <th style="width: 15%">Woked At</th>
                    <th style="width: 15%">Experience</th>
                    <th style="width: 15%">Specialist </th>
                    <th style="width: 15%">Expertise </th>
                </thead>
                <tr>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList1" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <input id="Text1" class="form-control" placeholder="Enter Doctor Name" style="width: 150px!important;" />

                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList7" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList2" runat="server"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList6" runat="server">
                            <asp:ListItem Value="0" Selected="True">Any</asp:ListItem>
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
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList4" runat="server" onchange="getExpertiselist(this)"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList class="form-control chosen" ID="DropDownList5" runat="server"></asp:DropDownList>
                    </td>
                </tr>
            </form>
        </table>
        <div class="col-lg-12" id="assignedlistdiv">
            <h1 class="page-header">Doctors List
                           <a class="btn btn-primary" href="javascript:" onclick="searchdoctors()" style="margin-left: 10px; margin-right: 10px; float: right; padding: 1px 10px !important;">Search</a>        <a class="btn btn-primary" href="Power_Search_Doctor.aspx" style="float: right; padding: 1px 10px !important;">Clear Filter</a>
            </h1>
            <div class="table-responsive">
                <div id="databindingdiv">
                </div>

            </div>
        </div>
    </div>
</asp:Content>

