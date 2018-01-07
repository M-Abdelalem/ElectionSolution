<%@ Page Title="Elected Delete" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="ElectedDelete.aspx.cs" Inherits="Election.AdminPages.ElectedDelete" %>
<%@ Register src="../AdminControl/ElectedDelete.ascx" tagname="ElectedDelete" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:ElectedDelete ID="ElectedDelete1" runat="server" />
</asp:Content>
