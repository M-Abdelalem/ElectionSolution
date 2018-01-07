<%@ Page Title="Sort" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="Sort.aspx.cs" Inherits="Election.AdminPages.WebForm1" %>
<%@ Register src="../AdminControl/Ctrl_Sort.ascx" tagname="Ctrl_Sort" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Ctrl_Sort ID="Ctrl_Sort1" runat="server" />
</asp:Content>
