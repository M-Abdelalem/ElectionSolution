<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommissionUpdate.ascx.cs" Inherits="Election.AdminControl.CommissionUpdate" %>
<br /><br />
<asp:Label ID="lbl_message" Visible="false"  Cssclass="message1" runat="server"></asp:Label>
<div id="search">
<asp:TextBox ID="txt_search" CssClass="form-control1" placeholder="ادخل رقم اللجنة" runat="server"></asp:TextBox>&nbsp;
<asp:LinkButton  ID="lb_search" CssClass="link"  runat="server" ValidationGroup="btn1" OnClick="lb_search_Click" >بحث</asp:LinkButton>
 <asp:RequiredFieldValidator class="valstyle12" ID="RequiredFieldValidator5" ControlToValidate="txt_search" ValidationGroup="btn1" runat="server" ErrorMessage="ادخل رقم اللجنة"></asp:RequiredFieldValidator>
</div>
<br />


<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_CommissionUdate">
    
    <EditItemTemplate>
        <%--<span style="">
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
        Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NumberTextBox" ValidationGroup="1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        Name Of Commission:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DescriptionTextBox" ValidationGroup="1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="تحديث" ValidationGroup="1" />
        <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="الغاء" />
        <br /><br /></span>--%>
         <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
       
            <div class="form-group ">
                <h4  class="inf">رقم اللجنة</h4>
                <asp:TextBox ID="NumberTextBox" class="form-control" placeholder="رقم اللجنة " runat="server" Text='<%# Bind("Number") %>' />
             <asp:RequiredFieldValidator class="valstyle1" ControlToValidate="NumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="ادخل رقم اللجنة"></asp:RequiredFieldValidator>            
            </div>
         <div class="form-group ">
                <h4 class="inf">اسم اللجنة</h4>
                <asp:TextBox ID="DescriptionTextBox"  class="form-control" placeholder="اسم اللجنة " runat="server" Text='<%# Bind("Description") %>' />
                 <asp:RequiredFieldValidator  class="valstyle1" ControlToValidate="DescriptionTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="ادخل اسم اللجنة"></asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="form-group ">
                <asp:LinkButton Class="link " ID="InsertButton" runat="server" CommandName="Insert"  Text="إضافة" ValidationGroup="1" />
                <asp:LinkButton  Class="link " ID="CancelButton" runat="server" CommandName="Cancel" Text="الغاء" />
            </div>
               </div>
    </EditItemTemplate>
    
    
    <ItemTemplate>
        <%--<span style=""> 
        <asp:Label ID="IdLabel" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        Number:
        <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
        <br />
        Name Of Commission:
        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />--%>
        <%--<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />--%>
        <div class="row">
        <h2 class="attrrib"> رقم اللجنة : </h2>
        <h4 class="info"><%# Eval("Number") %></h4>
    </div>
    <div class="row">
        <h2 class="attrrib">  اسم اللجنة  : </h2>
        <h4 class="info"><%# Eval("Description") %>&nbsp; </h4>
    </div>
        <div class="row">
        <asp:LinkButton Class="btn"  ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />
    </div>
<br /><br /></span>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="container">
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
       </div>
            </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_CommissionUdate" runat="server" DataObjectTypeName="Election.Data.CommissionData" SelectMethod="SelectRow_Candidate" TypeName="Election.Dal.CommissionDal" UpdateMethod="UpdateCandidate">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="i" SessionField="CommissionNumber" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>


