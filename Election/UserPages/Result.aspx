<%@ Page Title="Result" Language="C#" MasterPageFile="~/UserPages/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Election.UserPages.Result" %>
<%@ Register src="../AdminControl/Ctrl_ResultManager.ascx" tagname="Ctrl_ResultManager" tagprefix="uc1" %>
<%@ Register src="../UserControl/Ctrl_Result.ascx" tagname="Ctrl_Result" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        .menu2-trigger {
         background-color:#e31c3d;
        border:0px solid #FAFAFA;
        transition-duration:0.3s;
        border-radius:3px;
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .menu2-trigger a {
                text-shadow: 1px 1px 1px rgb(30, 166, 211);
                margin-right: 20px;
                transition-duration: 0.5s;
                color:rgba(254, 247, 247, 0.89);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc2:Ctrl_Result ID="Ctrl_Result1" runat="server" />
</asp:Content>
