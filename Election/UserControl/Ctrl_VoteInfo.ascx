<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Ctrl_VoteInfo.ascx.cs" Inherits="Election.UserControl.Ctrl_VoteInfo" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource1">
     
    <ItemTemplate>
        <%--<span style="background-color: #E0FFFF;color: #333333;">
        <asp:Label ID="IdLabel" runat="server" Visible="false" Text='<%# Eval("Id") %>' />
       
        <asp:Label ID="Elected_fkLabel" runat="server" Visible="false" Text='<%# Eval("Elected_fk") %>' />
        
        <asp:Label ID="Candidate_fkLabel" runat="server" Visible="false" Text='<%# Eval("Candidate_fk") %>' />
      
        <asp:Label ID="Commission_fkLabel" Visible="false" runat="server" Text='<%# Eval("Commission_fk") %>' />
        ElectedNumber1:
        <asp:Label ID="ElectedNumber1Label" Visible="false" runat="server" Text='<%# Eval("ElectedNumber1") %>' />
        <br />
        CandidateNumber1:
        <asp:Label ID="CandidateNumber1Label" Visible="false" runat="server" Text='<%# Eval("CandidateNumber1") %>' />
        <br />
        CommissionNumber1:
        <asp:Label Visible="false" ID="CommissionNumber1Label" runat="server" Text='<%# Eval("CommissionNumber1") %>' />
        <br />
        ElectedName1:
        <asp:Label Visible="false" ID="ElectedName1Label" runat="server" Text='<%# Eval("ElectedName1") %>' />
        <br />
        CandidateName1:
        <asp:Label Visible="false" ID="CandidateName1Label" runat="server" Text='<%# Eval("CandidateName1") %>' />
        <br />
        CommissionName1:
        <asp:Label ID="CommissionName1Label" runat="server" Text='<%# Eval("CommissionName1") %>' />
        <br />
        <br />
        </span>--%>
        <div class="infor" style="max-height:50px;">
            <div class="d1">
            <i class="a123">اسم المنتخب :</i>
            <i class="a456"><%# Eval("ElectedName1") %></i>
            </div>
            <div class="d1">
            <i class="a123">اللجنة التابع لها :</i>
            <i class="a456"><%# Eval("CommissionName1") %></i>
            </div>
            <div class="d1">
            <i class="a123">المرشح الذى قمت بالتصويت له :</i>
            <i class="a456"><%# Eval("CandidateName1") %></i>
            </div>
        </div>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
            <span runat="server" id="itemPlaceholder" />
        </div>
        <%--<div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>--%>
    </LayoutTemplate>
    
    
    
</asp:ListView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="SelectRow_Candidate" TypeName="Election.Dal.ElectionDal">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="" Name="id" SessionField="ID" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>


