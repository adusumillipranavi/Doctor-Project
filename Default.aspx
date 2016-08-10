<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Remedyin.Com</title>
    <script src="../Script/jquery1.6.4.min.js"></script>
    <script type="text/javascript">
        function GetClientID(id, context) {
            var el = $("#" + id, context);
            if (el.length < 1)
                el = $("[id$=_" + id + "]", context);
            return el;
        }
        function loginadmin() {
            var userid = $(GetClientID('TextBox2')).val();
            var passsword = $(GetClientID('TextBox1')).val();
            if (userid == "admin" && passsword == "admin") {
                window.location = "Services.aspx";
            }
            else {
                alert("Provide valied User ID and Password");
                return false;
            }
        }
    </script>
    <style type="text/css">
        body
        {
            background-color: white;
            font-size: 12px;
            font-family: Calibri;
            background-image: url(gear-background-1280x960.jpg);
        }

        .loginbox
        {
            border-top: 2px solid #aaa;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.8);
            height: auto;
            margin: 0 auto;
            perspective: 800px;
            position: relative;
            width: 300px;
            z-index: 1;
            background-color: #F7F7F7;
            top: 150px;
            padding: 10px;
        }

        .txtbox
        {
            width: 98%;
            height: 25px;
            line-height: 25px;
            padding: 2px;
        }

            .txtbox:hover
            {
                border: 1px solid #4d90fe;
                box-shadow: 0 1px 2px rgba(0, 0, 0, 0.3) inset;
                outline: medium none;
            }

        .button
        {
            -moz-user-select: none;
            background-color: #3F83F1;
            border: 1px solid #dcdcdc;
            border-radius: 3px;
            color: white;
            cursor: pointer;
            display: inline-block;
            font-size: 14px;
            font-weight: 700;
            height: 36px;
            line-height: 36px;
            min-width: 94%;
            padding: 0 8px;
            text-align: center;
            transition: all 0.218s ease 0s;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="loginbox">
            <table style="width: 100%" cellspacing="10">
                <tr>
                    <td>
                        <b style="font-size: 24px;">Please Sign In</b>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox CssClass="txtbox" ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox CssClass="txtbox" ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:" class="button" onclick="loginadmin()" style="color: white !important; text-decoration: none; font-size: 14px;">Sign In</a>

                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="javascript:" style="color: #3D81EF; text-decoration: none; font-size: 14px;">Forget Password ?</a>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
