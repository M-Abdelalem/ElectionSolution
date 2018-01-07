<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CandidateShow.ascx.cs" Inherits="Election.AdminControl.CandidateShow" %>
<br /><br />
    <asp:Label Cssclass="message1" ID="lbl_message" Visible="False" runat="server"></asp:Label>
<asp:ObjectDataSource ID="Objs_Candidate" runat="server" DataObjectTypeName="Election.Data.CandidateData" DeleteMethod="DeleteCandidate" InsertMethod="InsertCandidate" SelectMethod="SelectAll_Candidate" TypeName="Election.Dal.CandidateDal" UpdateMethod="UpdateCandidate"></asp:ObjectDataSource>

<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Candidate" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating" DataKeyNames="ID" OnItemDataBound="ListView1_ItemDataBound" OnLoad="Page_Load">
<EditItemTemplate>
       <%-- <span style="">
        <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />            
            <asp:RequiredFieldValidator ControlToValidate="NumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        Image:
        <asp:TextBox ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
            <asp:FileUpload ID="fu1" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="ImageTextBox" ValidationGroup="1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        Information:
        <asp:TextBox ID="InformationTextBox" runat="server" Text='<%# Bind("Information") %>' />
        <asp:RequiredFieldValidator ControlToValidate="InformationTextBox" ValidationGroup="1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>        
        <br />
        <asp:TextBox Visible="false" ID="Commission_fkTextBox" runat="server" Text='<%# Bind("Commission_fk") %>' />     
        Commissionname:
        <asp:DropDownList ID="ddl1" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource>
        <br />
        <asp:LinkButton ID="UpdateButton"  runat="server" CommandName="Update" Text="تعديل" ValidationGroup="1" />
        <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="الغاء" />
        <br /><br /></span>--%>
     <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
    <asp:TextBox ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
        <asp:TextBox Visible="false" ID="Commission_fkTextBox" runat="server" Text='<%# Bind("Commission_fk") %>' />        
     <tr>
     
        <td class="text11-left"><asp:TextBox class="form-control2" placeholder="اسم المرشح " ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator class="valstyle2" ControlToValidate="NameTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="اسم المرشح مطلوب"></asp:RequiredFieldValidator></td>
        <td class="text-left"><asp:TextBox class="form-control2" placeholder="رقم المرشح " ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />            
            <asp:RequiredFieldValidator  class="valstyle2" ControlToValidate="NumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="رقم المرشح مطلوب"></asp:RequiredFieldValidator></td>
        <td class="text-left"><h4><asp:FileUpload ID="fu1" CssClass="txt1" runat="server" />
            <asp:RequiredFieldValidator  class="valstyle2" ControlToValidate="fu1" ValidationGroup="1" ID="RequiredFieldValidator3" runat="server" ErrorMessage=" صوره المرشح مطلوب"></asp:RequiredFieldValidator></td>
        <td class="text-left"><asp:TextBox  class="form-control2" placeholder="رمز المرشح "  ID="InformationTextBox" runat="server" Text='<%# Bind("Information") %>' />
        <asp:RequiredFieldValidator  class="valstyle2" ControlToValidate="InformationTextBox" ValidationGroup="1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="رمز المرشح مطلوب"></asp:RequiredFieldValidator></td>      
        <td class="text-left"><asp:DropDownList ID="ddl1" CssClass="drop1" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource></h4></td>
        <td class="text-left"><h4><asp:LinkButton  ID="UpdateButton" CssClass="a"  runat="server" CommandName="Update" Text="تحديث" ValidationGroup="1" /></h4></td>
        <td class="text-left"><h4><asp:LinkButton  ID="CancelButton" CssClass="a" runat="server" CommandName="Cancel" Text="الغاء" /></h4></td>
    </tr>
    </EditItemTemplate>
    
    <InsertItemTemplate>
        <%--<span style="">
        <asp:TextBox Visible="false" ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
        <br />Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NumberTextBox" ValidationGroup="2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Image:
        <asp:TextBox ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
            <asp:FileUpload ID="fu2" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="fu2" ValidationGroup="2" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Information:
        <asp:TextBox ID="InformationTextBox" runat="server" Text='<%# Bind("Information") %>' />
            <asp:RequiredFieldValidator ControlToValidate="InformationTextBox" ValidationGroup="2" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        
        <asp:TextBox Visible="false" ID="Commission_fkTextBox" runat="server" Text='<%# Bind("Commission_fk") %>' />
        <br />
        Commissionname:
        <asp:DropDownList ID="ddl2" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource>
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="2" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        <br /><br /></span>--%>
    </InsertItemTemplate>
    <ItemTemplate>
<tr>
     
        <td class="text11-left"><h4><%# Eval("Name") %></h4></td>
        <td class="text-left"><h4><%# Eval("Number") %></h4></td>
        <td class="text-left"><h4> <asp:Image ID="Image1" runat="server" CssClass="img1" ImageUrl='<%# Eval("Image") %>' Width="50px" Height="50px" /></h4></td>
        <td class="text-left"><h4><%# Eval("Information") %></h4></td>      
        <td class="text-left"><h4><%# Eval("Commissionname") %></h4></td>
        <td class="text-left"><h4><asp:LinkButton ID="EditButton" CssClass="a"  runat="server" CommandName="Edit" Text="تعديل" /></h4></td>
        <td class="text-left"><h4><asp:LinkButton ID="DeleteButton" CssClass="a" OnClick="DeleteButton_Click" runat="server" CommandName="Delete" Text="حذف" /></h4></td>
    </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table class="table-fill">
<thead>
<tr>
<th class="text-left"><h4>الإسم</h4></th>
<th class="text-left"><h4>الرقم الانتخابى <h4></th>
<th class="text-left"><h4>الصوره <h4></th>
<th class="text-left"><h4>الرمز الانتخابى<h4></th>
<th class="text-left"><h4>اللجنة التابع لها<h4></th>
<th class="text-left"><h4>تعديل مرشح<h4></th>
<th class="text-left"><h4>حذف مرشح<h4></th>
</tr>
 </thead>
        <tbody class="table-hover">    
               <div id="itemPlaceholderContainer" runat="server" style="">
                 <span runat="server" id="itemPlaceholder" />
                </div>    
                </tbody>       
            </table>
            <%--<asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>--%>
    </LayoutTemplate>
</asp:ListView>

