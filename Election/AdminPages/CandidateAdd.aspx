<%@ Page Title="Add Candidate" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CandidateAdd.aspx.cs" Inherits="Election.AdminPages.CandidateAdd" %>
<%@ Register src="../AdminControl/CandidateAdd.ascx" tagname="CandidateAdd" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CandidateAdd ID="CandidateAdd1" runat="server" />
</asp:Content>
