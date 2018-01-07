<%@ Page Title="Election End" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="EndElection.aspx.cs" Inherits="Election.AdminPages.EndElection" %>
<%@ Register src="../AdminControl/EndElection.ascx" tagname="EndElection" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:EndElection ID="EndElection1" runat="server" />
</asp:Content>
