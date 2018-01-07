<%@ Page Title="Show Candidate" Language="C#" MasterPageFile="~/AdminPages/ElectionMasterPage.Master" AutoEventWireup="true" CodeBehind="CandidateShow.aspx.cs" Inherits="Election.AdminPages.CandidateShow" %>
<%@ Register src="../AdminControl/CandidateShow.ascx" tagname="CandidateShow" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:CandidateShow ID="CandidateShow1" runat="server" />
</asp:Content>
