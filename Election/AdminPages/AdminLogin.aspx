<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Election.AdminPages.Login" %>

<!DOCTYPE html>

<html >
<head runat="server">
    <title>Login</title>
    <link href="../Css/reg.css" rel="stylesheet" />
    <link href="../Css/stylelogin.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="../imgs/icon3.png">
</head>
<body>
    <form id="form1" runat="server" class="login">
    <div>
     <%--<asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_name" runat="server" Text="الاسم"></asp:Label>
        &nbsp;<br />
        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:Label ID="lbl_password" runat="server" Text="الرقم السرى"></asp:Label>
        <p>
            <asp:LinkButton ID="lb_login" runat="server" OnClick="lb_login_Click">دخول</asp:LinkButton>
        </p>--%>
        <div id="login">
            <div id="txtbox">
                <div id="name">
                    <h1 class="attrrib1">الاسم </h1>
                    <asp:TextBox ID="txt_name" CssClass="form1" placeholder="ادخل الاسم" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="txt_name" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </div>
                <div id="password">
                    <h1 class="attrrib1"> الرقم السرى</h1>
                    <asp:TextBox ID="txt_password" CssClass="form1"  runat="server" placeholder="ادخل الرقم السرى" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator  ControlToValidate="txt_password" ValidationGroup="1"  ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </div>
                <div id="but"><asp:LinkButton ID="lb_login" class="button1" runat="server" ValidationGroup="1" OnClick="lb_login_Click">دخول</asp:LinkButton>s</div>
            </div>
        </div>
    </form>
</body>
</html>
