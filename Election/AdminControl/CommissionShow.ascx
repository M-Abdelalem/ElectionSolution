<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CommissionShow.ascx.cs" Inherits="Election.AdminControl.CommissionShow" %>
<br /><br />
<asp:Label ID="lbl_message" Cssclass="message1" runat="server" Visible="false" Text=""></asp:Label>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Commission" InsertItemPosition="LastItem" DataKeyNames="Id" OnItemUpdating="ListView1_ItemUpdating" OnItemDataBound="ListView1_ItemDataBound">
    
    <EditItemTemplate>
       
        <%--<asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
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
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
         <tr>
     
        <td class="text-left"><asp:TextBox class="form-control3" placeholder="رقم اللجنة " ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
        <asp:RequiredFieldValidator class="valstyle1" ID="RequiredFieldValidator1" ControlToValidate="NumberTextBox" ValidationGroup="1" runat="server" ErrorMessage="ادخل رقم اللجنة"></asp:RequiredFieldValidator></td>
        <td class="text-left"> <asp:TextBox ID="DescriptionTextBox" class="form-control3" placeholder="إسم اللجنة "  runat="server" Text='<%# Bind("Description") %>' />
        <asp:RequiredFieldValidator class="valstyle1" ID="RequiredFieldValidator2"  ControlToValidate="DescriptionTextBox" ValidationGroup="1" runat="server" ErrorMessage="ادخل اسم اللجنة"></asp:RequiredFieldValidator></h4></td>
        <td class="text-left"><h4> <asp:LinkButton ID="UpdateButton" CssClass="a" runat="server" CommandName="Update" Text="تحديث" ValidationGroup="1" /></h4></td>        
        <td class="text-left"><h4><asp:LinkButton ID="CancelButton" CssClass="a" runat="server" CommandName="Cancel" Text="الغاء" /></h4></td>
    </tr>
    </EditItemTemplate>
    
    <InsertItemTemplate>
<%--        <span style="">
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
        Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NumberTextBox" ValidationGroup="2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Name Of Commission:
        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="DescriptionTextBox" ValidationGroup="2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="2" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        <br /><br /></span>--%>
    </InsertItemTemplate>
    <ItemTemplate>
        
        <tr>
        <td class="text-left"><h4><%# Eval("Number") %></h4></td>
        <td class="text-left"><h4><%# Eval("Description") %></h4></td>
        <td class="text-left"><h4><asp:LinkButton CssClass="a" ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" /></h4></td>
        <td class="text-left"><h4><asp:LinkButton CssClass="a" ID="DeleteButton" runat="server" CommandName="Delete" Text="حذف" /></h4></td>
    </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table class="table-fill">
<thead>
<tr>
<th class="text-left"><h4>رقم اللجنة </h4></th>
<th class="text-left"><h4>إسم اللجنة <h4></th>
    <th class="text-left"><h4>تعديل اللجنة </h4></th>
<th class="text-left"><h4>حذف اللجنة <h4></th>
</tr>
 </thead>
        <tbody class="table-hover">
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
            </tbody>
           </table> 
        <%--<div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <%--<asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />--%>
                <%--</Fields>
            </asp:DataPager>
        </div>--%>--%>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_Commission" runat="server" DataObjectTypeName="Election.Data.CommissionData" DeleteMethod="DeleteCommission" InsertMethod="InsertCommission" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal" UpdateMethod="UpdateCandidate"></asp:ObjectDataSource>
<asp:ObjectDataSource ID="Objs_Commissiom" runat="server"></asp:ObjectDataSource>

