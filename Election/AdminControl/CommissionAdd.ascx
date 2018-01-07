<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommissionAdd.ascx.cs" Inherits="Election.AdminControl.CommissionAdd" %>
<br /><br />
<asp:Label Cssclass="message1" ID="lbl_message" runat="server" Visible="False" ></asp:Label>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Commission" InsertItemPosition="LastItem" DataKeyNames="Id">
    
    <EditItemTemplate>
       <%-- <span style="">
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
        Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NumberTextBox" ValidationGroup="1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        Name Of Commission:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DescriptionTextBox" ValidationGroup="1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="1" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        <br /><br /></span>--%>
    </EditItemTemplate>
    
    <InsertItemTemplate>
        <%--<span style="">
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
        Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NumberTextBox" ValidationGroup="2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Name Of Commission:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DescriptionTextBox" ValidationGroup="2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="اضافة" ValidationGroup="2" />
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
    </InsertItemTemplate>
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
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
<br /><br /></span>--%>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="container">
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
            </div>
        <div style="">
            <%--<asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>--%>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_Commission" runat="server" DataObjectTypeName="Election.Data.CommissionData" DeleteMethod="DeleteCommission" InsertMethod="InsertCommission" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal" UpdateMethod="UpdateCandidate"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="Objs_Commissiom" runat="server"></asp:ObjectDataSource>

