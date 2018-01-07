<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommissionDelete.ascx.cs" Inherits="Election.AdminControl.CommissionDelete" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<br /><br />
<style>
.modalBackground
{
    background-color:Gray;
    filter:alpha(opacity=50);
    opacity:0.7;
}
.pnlBackGround
{
 position:fixed;
    top:10%;
    left:10px;
    width:300px;
    height:125px;
    text-align:center;
    background-color:rgba(255, 255, 255, 0.74);
    border:solid 3px rgba(0, 0, 0, 0.81);
    border-radius:10px;
}
    h3 {
        padding: 10px;
        font-size: 24px;
        color: rgb(170, 35, 35);
    }
    .btn121 {

       padding:15px;
        font-size: 15px;
        color: black;
        text-decoration:none;
       display:inline-table;
        margin-left:5px;
        padding: 10px 10px 10px 10px;
        
    }
        .btn121 :hover {
            background-color:rgb(170, 35, 35);
            border-radius:5px;
            color: white;
        }
</style>
<asp:Label ID="lbl_message" Cssclass="message1" runat="server" Text="" Visible="False"></asp:Label>
<div id="search">
<asp:LinkButton ID="LinkButton1" CssClass="link"   ValidationGroup="btn1" runat="server" OnClick="LinkButton1_Click">حذف</asp:LinkButton>
<asp:TextBox ID="txt_delete" CssClass="form-control1" ValidationGroup="btn1" placeholder="ادخل الرقم اللجنة" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" class="valstyle12" runat="server" ValidationGroup="btn1" ControlToValidate="txt_delete" ErrorMessage="ادخل رقم اللجنة"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txt_delete" class="valstyle12" ValidationGroup="btn1" runat="server" ErrorMessage="ادخل رقم المرشح"></asp:RequiredFieldValidator>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
<asp:Panel ID="Panel1" CssClass="pnlBackGround" runat="server">
<h3>هل تريد حذف العنصر</h3>
<asp:LinkButton ID="btn_ok" Class="btn121" ValidationGroup="btn1"  runat="server" OnClick="btn_ok_Click"><h2>موافق</h2></asp:LinkButton>
<asp:LinkButton ID="btn_notok" Class="btn121" runat="server"><h2>إلغاء</h2></asp:LinkButton>
</asp:Panel>
<asp:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground"  runat="server" CancelControlID="btn_notok" PopupControlID="Panel1" TargetControlID="LinkButton1"></asp:ModalPopupExtender>
</div>