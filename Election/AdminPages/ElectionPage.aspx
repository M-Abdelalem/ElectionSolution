<%@ Page Title="Election Page" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="ElectionPage.aspx.cs" Inherits="Election.AdminPages.ElectionPage" %>
<%@ Register src="../AdminControl/Ctrl_ElectionManager.ascx" tagname="Ctrl_ElectionManager" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Ctrl_ElectionManager ID="Ctrl_ElectionManager1" runat="server" />
</asp:Content>
