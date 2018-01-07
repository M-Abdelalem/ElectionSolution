<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ElectedAdd.ascx.cs" Inherits="Election.AdminControl.ElectedAdd" %>
<br /><br />
<asp:Label ID="lbl_message" Cssclass="message1" Visible="false" runat="server"></asp:Label>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Elected" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    
    
    
    <EditItemTemplate>
        <%--<span style=""> 
        
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
        <br />
        Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />
        Image:
            <asp:TextBox ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
            <asp:FileUpload ID="fu1" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="fu1" ValidationGroup="1" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        Cardnumber:
        <asp:TextBox ID="CardnumberTextBox" runat="server" Text='<%# Bind("Cardnumber") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CardnumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:TextBox ID="Commission_fkTextBox" Visible="false" runat="server" Text='<%# Bind("Commission_fk") %>' />
        <br />
        Commission name:
           <asp:DropDownList ID="ddl1" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource>
            <asp:RequiredFieldValidator ControlToValidate="ddl1" ValidationGroup="1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="1" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        <br />
        <br />
        </span>--%>
    </EditItemTemplate>
    
    
    
    <InsertItemTemplate>
        <%--<span style=""> 
        <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
        <br />Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Image:
            <asp:TextBox ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
        <asp:FileUpload ID="fu2" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="fu2" ValidationGroup="2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />Cardnumber:
        <asp:TextBox  ID="CardnumberTextBox" runat="server" Text='<%# Bind("Cardnumber") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CardnumberTextBox" ValidationGroup="2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardnumberTextBox"  ErrorMessage="Only numeric allowed."  ValidationExpression="^[0-9]*$" ValidationGroup="2"/>
<asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="CardnumberTextBox" validationexpression="^[0-9]{14}$" ValidationGroup="2" errormessage="Please enter a 4 digit number!" />
         <br />
        <br />Number:
        <asp:TextBox ID="NumberTextBox"  runat="server" Text='<%# Bind("Number") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NumberTextBox" ValidationGroup="2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br /> 
        <asp:TextBox ID="Commission_fkTextBox" Visible="false" runat="server" Text='<%# Bind("Commission_fk") %>' />
        <br />
        Commission name:    
        <asp:DropDownList ID="ddl2" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource>
            <asp:RequiredFieldValidator ControlToValidate="ddl2" ValidationGroup="1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="2" />
        <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        <br />
        <br />
        </span>--%>
        <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
        <div class="form-group ">
                <h4 class="inf">اسم المنتخب</h4>
                <asp:TextBox ID="NameTextBox" class="form-control" placeholder="اسم المنتخب " runat="server" Text='<%# Bind("Name") %>' />
                 <asp:RequiredFieldValidator class="valstyle1" ControlToValidate="NameTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="ادخل اسم المنتخب"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group ">
                <h4  class="inf">الرقم القومى للمنتخب</h4>
                <asp:TextBox ID="CardnumberTextBox" class="form-control" placeholder="الرقم القومى للمنتخب " runat="server" Text='<%# Bind("Cardnumber") %>' />
                <asp:RequiredFieldValidator class="valstyle1" ControlToValidate="CardnumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="ادخل الرقم القومى"></asp:RequiredFieldValidator>      
                <div class="ae">  
            <asp:RegularExpressionValidator class="valstyle11" ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardnumberTextBox"  ErrorMessage="ارقام فقط"  ValidationExpression="^[0-9]*$" ValidationGroup="1"/>
            <asp:RegularExpressionValidator class="valstyle11" runat="server" id="rexNumber" controltovalidate="CardnumberTextBox" validationexpression="^[0-9]{14}$" ValidationGroup="1" errormessage="ادخل 14 رقم" />
            </div>
                </div>
            <div class="form-group ">
                <h4  class="inf">صورة المنتخب</h4>
              <asp:FileUpload ID="fu2" runat="server" />
            <asp:RequiredFieldValidator class="valstyle1" ControlToValidate="fu2" ValidationGroup="1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="ادخل صوره المنتخب"></asp:RequiredFieldValidator>          
            </div>
            <div class="form-group ">
                <h4  class="inf">رقم المنتخب</h4>
                <asp:TextBox ID="NumberTextBox" class="form-control" placeholder="رقم المنتخب " runat="server" Text='<%# Bind("Number") %>' />
        <asp:RequiredFieldValidator class="valstyle1" ControlToValidate="NumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator4" runat="server" ErrorMessage="اخل رقم المنتخب"></asp:RequiredFieldValidator>            
            </div>
            <div class="form-group ">
                <h4  class="inf">لجنة المنتخب</h4>
                <asp:DropDownList ID="ddl2" class="drop" runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource>
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
        Name:
        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
        <br />
        Image:
        <asp:Label ID="ImageLabel" runat="server" Visible="false" Text='<%# Eval("Image") %>' />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="100px" Height="100px" />
        <br />
        Cardnumber:
        <asp:Label ID="CardnumberLabel" runat="server" Text='<%# Eval("Cardnumber") %>' />
        <br />
        Number:
        <asp:Label ID="NumberLabel" runat="server" Text='<%# Eval("Number") %>' />
        <br />
        
        <asp:Label ID="Commission_fkLabel" runat="server" Visible="false" Text='<%# Eval("Commission_fk") %>' />
        Commissionname:
        <asp:Label ID="CommissionnameLabel" runat="server" Text='<%# Eval("Commissionname") %>' />
<br />
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        <br />
        <br />
        </span>--%>
    </ItemTemplate>
    <LayoutTemplate>
        <div id="container">
        <div style="" id="itemPlaceholderContainer" runat="server">
            <span runat="server" id="itemPlaceholder" />
        </div>
            </div>
       <%-- <div style="">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>--%>
    </LayoutTemplate>
    
    
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_Elected" runat="server" DataObjectTypeName="Election.Data.ElectedData" DeleteMethod="DeleteElected" InsertMethod="InsertElected" SelectMethod="SelectAll_Elected" TypeName="Election.Dal.ElectedDal" UpdateMethod="UpdateElected"></asp:ObjectDataSource>

