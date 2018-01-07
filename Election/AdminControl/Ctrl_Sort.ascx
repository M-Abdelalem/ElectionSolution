<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Sort.ascx.cs" Inherits="Election.AdminControl.Ctrl_Sort" %>
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
<asp:LinkButton ID="lb_sort" CssClass="link1"   runat="server" OnClick="lb_sort_Click" Visible="False">عرض الفرز للمستخدم</asp:LinkButton>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
<asp:Panel ID="Panel1" Visible="false" CssClass="pnlBackGround" runat="server">
<h3>هل تريدعرض الفرز</h3>
<asp:LinkButton ID="btn_ok" Class="btn121" ValidationGroup="btn1"  runat="server" OnClick="btn_ok_Click"><h2>موافق</h2></asp:LinkButton>
<asp:LinkButton ID="btn_notok" Class="btn121" runat="server"><h2>إلغاء</h2></asp:LinkButton>
</asp:Panel>
<asp:ModalPopupExtender ID="ModalPopupExtender1" BackgroundCssClass="modalBackground"  runat="server" CancelControlID="btn_notok" PopupControlID="Panel1" TargetControlID="lb_sort"></asp:ModalPopupExtender>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Sort">
    
    
    <ItemTemplate>
       <%-- <span style="">
        <asp:Label ID="Candidate_fkLabel" Visible="false" runat="server" Text='<%# Eval("Candidate_fk") %>' />

        <asp:Label ID="Commission_fkLabel" Visible="false" runat="server" Text='<%# Eval("Commission_fk") %>' />

        Candidatename:
        <asp:Label ID="CandidatenameLabel" runat="server" Text='<%# Eval("Candidatename") %>' />
        <br />
        Commissionname:
        <asp:Label ID="CommissionnameLabel" runat="server" Text='<%# Eval("Commissionname") %>' />
        <br />
        Votenumber:
        <asp:Label ID="VotenumberLabel" runat="server" Text='<%# Eval("Votenumber") %>' />
        <br />
        <br />
        </span>--%>
        <tr>   
        <td class="text-left"><h4><%# Eval("Candidatename") %></h4></td>
        <td class="text-left"><h4><%# Eval("Commissionname") %></h4></td>
        <td class="text-left"><h4><%# Eval("Votenumber") %></h4></td>      
    </tr>
    </ItemTemplate>
    <LayoutTemplate>
         <table class="table-fill">
<thead>
        <tr>
<th class="text-left"><h4>إسم المرشح</h4></th>
<th class="text-left"><h4>اللجنة التابع لها <h4></th>
<th class="text-left"><h4>عدد الاصوات الحاصل عليها <h4></th>
</tr>
 </thead>
        <tbody class="table-hover"> 
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
            </tbody>
            </table>
        <div style="">
        </div>
    </LayoutTemplate>
    
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_Sort" runat="server" SelectMethod="SelectSort" TypeName="Election.Dal.Sort"></asp:ObjectDataSource>




