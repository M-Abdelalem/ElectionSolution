<%@ Page Title="Commission Show" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CommissionShow.aspx.cs" Inherits="Election.AdminPages.CommissionShow" %>
<%@ Register src="../AdminControl/CommissionShow.ascx" tagname="CommissionShow" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CommissionShow ID="CommissionShow1" runat="server" />
</asp:Content>
