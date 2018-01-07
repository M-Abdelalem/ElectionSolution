<%@ Page Title="Elected Add" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="ElectedAdd.aspx.cs" Inherits="Election.AdminPages.ElectedAdd" %>
<%@ Register src="../AdminControl/ElectedAdd.ascx" tagname="ElectedAdd" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ElectedAdd ID="ElectedAdd1" runat="server" />
</asp:Content>
