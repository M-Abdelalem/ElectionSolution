<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_ElectionManager.ascx.cs" Inherits="Election.AdminControl.Ctrl_ElectionManager" %>
<br /><br />
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Election">
 
    
    <ItemTemplate>
        <%--<span style=""> 
        <asp:Label ID="IdLabel" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
        <asp:Label ID="Elected_fkLabel" Visible="false" runat="server" Text='<%# Eval("Elected_fk") %>' />
        <asp:Label ID="Candidate_fkLabel" Visible="false" runat="server" Text='<%# Eval("Candidate_fk") %>' />
        <asp:Label ID="Commission_fkLabel" Visible="false" runat="server" Text='<%# Eval("Commission_fk") %>' />
        Elected Number:
        <asp:Label ID="ElectedNumber1Label" runat="server" Text='<%# Eval("ElectedNumber1") %>' />
        <br />
        Elected Name:
        <asp:Label ID="ElectedName1Label" runat="server" Text='<%# Eval("ElectedName1") %>' />
        <br />
        Candidate Number:
        <asp:Label ID="CandidateNumber1Label" runat="server" Text='<%# Eval("CandidateNumber1") %>' />
        <br /> 
        Candidate Name:
        <asp:Label ID="CandidateName1Label" runat="server" Text='<%# Eval("CandidateName1") %>' />
        <br />
        Commission Number:
        <asp:Label ID="CommissionNumber1Label" runat="server" Text='<%# Eval("CommissionNumber1") %>' />       
        <br />       
        Commission Name:
        <asp:Label ID="CommissionName1Label" runat="server" Text='<%# Eval("CommissionName1") %>' />
        <br />
        <br />
        </span>--%>
        <tr>
     
        <td class="text-left"><h4><%# Eval("ElectedNumber1") %></h4></td>
        <td class="text-left"><h4><%# Eval("ElectedName1") %></h4></td>
        <td class="text-left"><h4><%# Eval("CandidateNumber1") %></h4></td>      
        <td class="text-left"><h4><%# Eval("CandidateName1") %></h4></td>
        <td class="text-left"><h4><%# Eval("CommissionNumber1") %></h4></td>      
        <td class="text-left"><h4><%# Eval("CommissionName1") %></h4></td>
    </tr>
    </ItemTemplate>
    <LayoutTemplate>
          <table class="table-fill">
<thead>
        <tr>
<th class="text-left"><h4>رقم المنتخب</h4></th>
<th class="text-left"><h4>إسم المنتخب <h4></th>
<th class="text-left"><h4>رقم المرشح <h4></th>
<th class="text-left"><h4>إسم المرشح<h4></th>
<th class="text-left"><h4>رقم اللجنة<h4></th>
<th class="text-left"><h4>إسم اللجنة<h4></th>
</tr>
 </thead>
        <tbody class="table-hover"> 
        <div style="" id="itemPlaceholderContainer" runat="server">
            <span runat="server" id="itemPlaceholder" />
        </div>
            </tbody>
              </table>
        <%--<div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>--%>
    </LayoutTemplate>
    
    
    
    
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_Election" runat="server" SelectMethod="SelectAll_Election" TypeName="Election.Dal.ElectionDal"></asp:ObjectDataSource>

