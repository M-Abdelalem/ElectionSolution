﻿<%@ Page Title="Ok" Language="C#" MasterPageFile="~/UserPages/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Ok.aspx.cs" Inherits="Election.UserPages.Ok" %>
<%@ Register src="../UserControl/Ctrl_VoteInfo.ascx" tagname="Ctrl_VoteInfo" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        .menu1-trigger {
         background-color:#e31c3d;
        border:0px solid #FAFAFA;
        transition-duration:0.3s;
        border-radius:3px;
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .menu1-trigger a {
                text-shadow: 1px 1px 1px rgb(30, 166, 211);
                margin-right: 20px;
                transition-duration: 0.5s;
                color:rgba(254, 247, 247, 0.89);
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <i class="sa">تم الانتهاء من التصويت 
        </i>
        <uc1:Ctrl_VoteInfo ID="Ctrl_VoteInfo1" runat="server" />
</asp:Content>

