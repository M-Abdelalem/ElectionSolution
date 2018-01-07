<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ElectedUpdate.ascx.cs" Inherits="Election.AdminControl.Elected_Update" %>
<br /><br />
<asp:Label class="message1" Visible="false" ID="lbl_message" runat="server"></asp:Label>
<div id="search">
<asp:TextBox ID="txt_search" CssClass="form-control1" placeholder="ادخل الرقم القومى للمنتخب" runat="server"></asp:TextBox>&nbsp;
<asp:LinkButton ID="lb_search" CssClass="link"  runat="server" ValidationGroup="btn1" OnClick="lb_search_Click" >بحث</asp:LinkButton>
<asp:RequiredFieldValidator class="valstyle12" ID="RequiredFieldValidator1"  runat="server" ValidationGroup="btn1" ControlToValidate="txt_search" ErrorMessage="ادخل الرقم القومى للمنتخب"></asp:RequiredFieldValidator>

</div>
<div class="er">
<asp:RegularExpressionValidator class="valstyle12" ID="RegularExpressionValidator1" runat="server"  ControlToValidate="txt_search"  ErrorMessage="أرقام فقط"  ValidationExpression="^[0-9]*$" ValidationGroup="btn1"/>
<asp:RegularExpressionValidator class="valstyle12" runat="server" id="rexNumber" controltovalidate="txt_search" validationexpression="^[0-9]{14}$" ValidationGroup="btn1" errormessage="ادخل 14 رقم" />
</div>
<br />

<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Update" DataKeyNames="Id" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    
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
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardnumberTextBox"  ErrorMessage="Only numeric allowed."  ValidationExpression="^[0-9]*$" ValidationGroup="1"/>
<asp:RegularExpressionValidator runat="server" id="rexNumber" controltovalidate="CardnumberTextBox" validationexpression="^[0-9]{14}$" ValidationGroup="1" errormessage="Please enter a 4 digit number!" />
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
        <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" ValidationGroup="1" />
        <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
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
    </EditItemTemplate>
    
    
    <ItemTemplate>
        <span style="">
        
       <%-- <asp:Label ID="IdLabel" Visible="false" runat="server" Text='<%# Eval("Id") %>' />
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
        <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        <br />
        <br />
        </span>--%>
             <div class="row">
        <h2 class="attrrib"> الاسم : </h2>
        <h4 class="info"><%# Eval("Name") %></h4>
    </div>
    <div class="row">
        <h2 class="attrrib">  الرقم القومى : </h2>
        <h4 class="info"><%# Eval("Cardnumber") %></h4>
    </div>
    <div class="row">
        <h2 class="attrrib"> الصورة : </h2>
         <asp:Image ID="Image1" class="img" runat="server" ImageUrl='<%# Eval("Image") %>' />
    </div>
    <div class="row">
        <h2 class="attrrib"> الرقم الانتخابى : </h2>
        <h4 class="info"> <%# Eval("Number") %></h4>
    </div>
    <div class="row">
        <h2 class="attrrib"> اللجنة التابع لها :</h2>
        <h4 class="info"><%# Eval("Commissionname") %></h4>
    </div>
    <div class="row">
        <asp:LinkButton Class="btn"  ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />
    </div>
 
    </ItemTemplate>
    <LayoutTemplate>
        <div id="container">
        <div id="itemPlaceholderContainer" runat="server" style="">
            <span runat="server" id="itemPlaceholder" />
        </div>
        </div>
    </LayoutTemplate>
    
</asp:ListView>
<p>
    <asp:ObjectDataSource ID="Objs_Update" runat="server" DataObjectTypeName="Election.Data.ElectedData" SelectMethod="SelectRow_Elected" TypeName="Election.Dal.ElectedDal" UpdateMethod="UpdateElected">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="i" SessionField="CardNumber" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</p>

