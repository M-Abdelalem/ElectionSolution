<%@ Page Title="Update Candidate" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CandidateUpdate.aspx.cs" Inherits="Election.AdminPages.CandidateUpdate" %>
<%@ Register src="../AdminControl/CandidateUpdate.ascx" tagname="CandidateUpdate" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CandidateUpdate ID="CandidateUpdate1" runat="server" />
</asp:Content>
