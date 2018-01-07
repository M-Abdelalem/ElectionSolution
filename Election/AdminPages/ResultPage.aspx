<%@ Page Title="Result" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="ResultPage.aspx.cs" Inherits="Election.AdminPages.ResultPage" %>
<%@ Register src="../AdminControl/Ctrl_ResultManager.ascx" tagname="Ctrl_ResultManager" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Ctrl_ResultManager ID="Ctrl_ResultManager1" runat="server" />
</asp:Content>
