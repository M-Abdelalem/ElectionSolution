<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EndElection.ascx.cs" Inherits="Election.AdminControl.StartAndEndElection" %>
<br /><br />
<style>
    .valstyle13 {
    background-color:rgba(237, 28, 36, 0.59);
    color:rgb(255, 255, 255);
    font-size:12px;
    padding:5px 0px 5px 0;
    border-radius:2px;
    text-align:center;
}
</style>
<div id="container1">
    <div id="title"><asp:Label ID="lbl_title" class="text"  runat="server" Text="تحديد مده الانتخابات"></asp:Label></div>
<div id="smh">
    <i class="text1">ثوانى</i>
    <i class="text1">دقائق</i>
    <i class="text1">ساعات</i></div>
    <div id="a">
    <asp:Label ID="lbl_sec" class="text2" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="lbl_min" class="text2" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="lbl_ho" class="text2" runat="server" Visible="False"></asp:Label>    
    </div>
<br />
<div id="smh1">
<asp:TextBox ID="txt_second"  class="control" placeholder="ثوانى " runat="server" TextMode="Number" Wrap="False" style="margin-bottom: 1px">0</asp:TextBox>
<asp:RangeValidator class="valstyle13" ValidationGroup="ae12" ID="RangeValidator1" MaximumValue="60" MinimumValue="0" ControlToValidate="txt_second" runat="server" ErrorMessage="الثوانى من 0 الى 60 "></asp:RangeValidator>
&nbsp;<asp:TextBox ID="txt_minute"  class="control" placeholder="دقائق " runat="server" TextMode="Number" Wrap="False">0</asp:TextBox>
<asp:RangeValidator class="valstyle13" ValidationGroup="ae12" ID="RangeValidator2" MaximumValue="60" MinimumValue="0" ControlToValidate="txt_minute" runat="server" ErrorMessage=" الدقائق من 0 الى 60"></asp:RangeValidator>
&nbsp;<asp:TextBox ID="txt_hour"  class="control" placeholder="ساعات " runat="server"  TextMode="Number" Wrap="False">0</asp:TextBox>
<asp:RangeValidator class="valstyle13" ValidationGroup="ae12" ID="RangeValidator3" MaximumValue="24" MinimumValue="0" ControlToValidate="txt_hour" runat="server" ErrorMessage=" الساعات من 0 الى 24"></asp:RangeValidator>    
</div>   
<div id="btn">
    &nbsp;<asp:LinkButton ID="btn_start" CssClass="a" ValidationGroup="ae12"  runat="server" OnClick="statr">بدأ الانتخابات</asp:LinkButton>
    <asp:LinkButton ID="LinkButton1" CssClass="a"  runat="server" Visible="False" OnClick="LinkButton1_Click">معرفة الوقت المتبقى </asp:LinkButton>
    <br />
</div>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>

<asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate><asp:Timer ID="Timer1" runat="server" Interval="900" OnTick="Timer1_Tick"  EnableViewState="False">
</asp:Timer></ContentTemplate></asp:UpdatePanel>
<asp:UpdatePanel ID="UpdatePanel2" runat="server"></asp:UpdatePanel>
    </div>


