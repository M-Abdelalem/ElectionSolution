<%@ Page Title="Commission Update" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CommissionUpdate.aspx.cs" Inherits="Election.AdminPages.CommissionUpdate" %>
<%@ Register src="../AdminControl/CommissionUpdate.ascx" tagname="CommissionUpdate" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CommissionUpdate ID="CommissionUpdate1" runat="server" />
</asp:Content>
