<%@ Page Title="Elected Update" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="ElectedUpdate.aspx.cs" Inherits="Election.AdminPages.ElectedUpdate" %>
<%@ Register src="../AdminControl/ElectedUpdate.ascx" tagname="ElectedUpdate" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ElectedUpdate ID="ElectedUpdate1" runat="server" />
</asp:Content>
