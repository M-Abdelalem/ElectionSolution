<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CandidateAdd.ascx.cs" Inherits="Election.AdminControl.CandidateAdd" %>
<br /><br />
<asp:Label ID="lbl_message" CssClass="message1" runat="server" Visible="False"></asp:Label>
<asp:ObjectDataSource ID="Objs_Candidate" runat="server" DataObjectTypeName="Election.Data.CandidateData" DeleteMethod="DeleteCandidate" InsertMethod="InsertCandidate" SelectMethod="SelectAll_Candidate" TypeName="Election.Dal.CandidateDal" UpdateMethod="UpdateCandidate"></asp:ObjectDataSource>

<asp:ListView  ID="ListView1" runat="server" DataSourceID="Objs_Candidate" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating" DataKeyNames="ID">
<EditItemTemplate>
        <%--<span style="">
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
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="1" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        <br /><br /></span>--%>
    </EditItemTemplate>
    
    <InsertItemTemplate>
        <%--<span style="">
        <asp:TextBox Visible="false" ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
        <br />Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NumberTextBox" ValidationGroup="2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ></asp:RequiredFieldValidator>
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
        <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
        <div class="form-group ">
                <h4 class="inf">اسم المرشح</h4>
                <asp:TextBox ID="NameTextBox" required=""   oninvalid="this.setCustomValidity('Please Enter valid email')"   class="form-control" placeholder="اسم المرشح " runat="server" Text='<%# Bind("Name") %>' />
                 <asp:RequiredFieldValidator Class="valstyle1" ControlToValidate="NameTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="ادخل اسم المرشح"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group ">
                <h4  class="inf">رقم المرشح</h4>
                <asp:TextBox ID="NumberTextBox"  class="form-control" placeholder="رقم المرشح " runat="server" Text='<%# Bind("Number") %>' />
             <asp:RequiredFieldValidator Class="valstyle1"  ControlToValidate="NumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="ادخل رقم المرشح"></asp:RequiredFieldValidator>            
            </div>
            <div class="form-group ">
                <h4  class="inf">صورة المرشح</h4>
              <asp:FileUpload ID="fu2" runat="server" />
            <asp:RequiredFieldValidator Class="valstyle1" ControlToValidate="fu2" ValidationGroup="1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="ادخل صوره المرشح"></asp:RequiredFieldValidator>          
            </div>
            <div class="form-group ">
                <h4  class="inf">رمز المرشح</h4>
                <asp:TextBox ID="InformationTextBox" class="form-control" placeholder="رمز المرشح " runat="server" Text='<%# Bind("Information") %>' />
        <asp:RequiredFieldValidator Class="valstyle1" ControlToValidate="InformationTextBox" ValidationGroup="1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="ادخل رمز المرشح"></asp:RequiredFieldValidator>            
            </div>
            <div class="form-group ">
                <h4  class="inf">لجنة المرشح</h4>
                <asp:DropDownList ID="ddl2" class="drop" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource>
            </div>
            <br />
            <div class="form-group ">
                <asp:LinkButton Class="link " ID="InsertButton" runat="server" CommandName="Insert"  Text="إضافة" ValidationGroup="1" />
                <asp:LinkButton  Class="link " ID="CancelButton" runat="server" CommandName="Clear" Text="الغاء" />
            </div>
               </div>
    </InsertItemTemplate>
    <ItemTemplate>
        <%--<span style="">
        <asp:Label Visible="false" ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
       
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        <br />
        Number:
        <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
        <br />
        Image:
        <asp:Label ID="ImageLabel" runat="server" Visible="false" Text='<%# Eval("Image") %>' />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="100px" Height="100px" />
        <br />
        Information:
        <asp:Label ID="InformationLabel" runat="server" Text='<%# Eval("Information") %>' />
        <br />
        <asp:Label ID="Commission_fkLabel" Visible="false" runat="server" Text='<%# Eval("Commission_fk") %>' />
        Commissionname:
        <asp:Label ID="CommissionnameLabel" runat="server" Text='<%# Eval("Commissionname") %>' />
        <br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />--%>
<%--<br /><br /></span>--%>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="container">
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
            </div>
        <%--<div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>--%>
    </LayoutTemplate>
</asp:ListView>