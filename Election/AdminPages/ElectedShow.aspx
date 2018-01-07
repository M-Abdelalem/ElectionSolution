<%@ Page Title="Elected Show" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="ElectedShow.aspx.cs" Inherits="Election.AdminPages.ElectedShow" %>
<%@ Register src="../AdminControl/ElectedAdd.ascx" tagname="ElectedAdd" tagprefix="uc1" %>
<%--<%@ Register src="../AdminControl/Ctrl_CommissionManager.ascx" tagname="Ctrl_CommissionManager" tagprefix="uc2" %>--%>
<%@ Register src="../AdminControl/ElectedShow.ascx" tagname="ElectedShow" tagprefix="uc3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc3:ElectedShow ID="ElectedShow1" runat="server" />
</asp:Content>
