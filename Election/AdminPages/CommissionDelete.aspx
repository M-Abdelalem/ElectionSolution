<%@ Page Title="Commission Delete" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CommissionDelete.aspx.cs" Inherits="Election.AdminPages.CommissionDelete" %>
<%@ Register src="../AdminControl/CommissionDelete.ascx" tagname="CommissionDelete" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CommissionDelete ID="CommissionDelete1" runat="server" />
</asp:Content>
