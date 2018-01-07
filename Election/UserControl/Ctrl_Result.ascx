<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_Result.ascx.cs" Inherits="Election.UserControl.Ctrl_Result" %>
    <asp:Label ID="lbl1" runat="server" class="sa" Text="غير متوفر حاليا"></asp:Label>
 <br />
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_ResultUser">
   
    <EditItemTemplate>
        
    </EditItemTemplate>
    
    <InsertItemTemplate>
      
    </InsertItemTemplate>
    <ItemTemplate>
        <tr class="tr1">   
        <td class="text-left"><h4><%# Eval("Candidatename") %></h4></td>
        <td class="text-left"><h4><%# Eval("Commissionname") %></h4></td>
        <td class="text-left"><h4><%# Eval("Votenumber") %></h4></td>      
    </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table class="table-fill">
<thead>
        <tr class="tr1">
<th class="text1-left"><h4>إسم المرشح</h4></th>
<th class="text1-left"><h4>اللجنة التابع لها <h4></th>
<th class="text1-left"><h4>عدد الاصوات الحاصل عليها <h4></th>
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
<asp:ObjectDataSource ID="Objs_ResultUser" runat="server" SelectMethod="SelectResult" TypeName="Election.Dal.Sort"></asp:ObjectDataSource>

