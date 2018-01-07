<%@ Page Title="Commission Add" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CommissionAdd.aspx.cs" Inherits="Election.AdminPages.CommissionAdd" %>
<%@ Register src="../AdminControl/CommissionAdd.ascx" tagname="CommissionAdd" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CommissionAdd ID="CommissionAdd1" runat="server" />
</asp:Content>
