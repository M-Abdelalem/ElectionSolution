<%@ Page Title="Delete Candidate" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CandidateDelete.aspx.cs" Inherits="Election.AdminPages.CandidateDelete" %>
<%@ Register src="../AdminControl/CandidateDelete.ascx" tagname="CandidateDelete" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CandidateDelete ID="CandidateDelete1" runat="server" />
</asp:Content>
