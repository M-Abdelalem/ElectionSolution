<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ElectedShow.ascx.cs" Inherits="Election.AdminControl.ElectedShow" %>
<br /><br />
<asp:Label class="message1" ID="lbl_message" Visible="false" runat="server"></asp:Label>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Elected" InsertItemPosition="LastItem" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating" DataKeyNames="ID" OnItemDataBound="ListView1_ItemDataBound">  
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
            <asp:RequiredFieldValidator ControlToValidate="CardnumberTextBox" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
<%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardnumberTextBox"  ErrorMessage="Only numeric allowed."  ValidationExpression="^[0-9]*$" ValidationGroup="1"/>
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
        <asp:TextBox ID="IdTextBox" runat="server" Visible="false" Text='<%# Bind("Id") %>' />
        <asp:TextBox ID="Commission_fkTextBox" Visible="false" runat="server" Text='<%# Bind("Commission_fk") %>' />        
        <tr>
        <td class="text-left"><asp:TextBox ID="NameTextBox" class="form-control4" placeholder="اسم المنتخب "    runat="server" Text='<%# Bind("Name") %>' />
            
            <div class="valid"><asp:RequiredFieldValidator class="valstyle11" ControlToValidate="NameTextBox" ValidationGroup="1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="اسم المنتخب"></asp:RequiredFieldValidator></div></td>
        <td class="text-left"><asp:TextBox class="form-control4" placeholder="رقم المنتخب "  ID="CardnumberTextBox" runat="server" Text='<%# Bind("Cardnumber") %>' />
            <div class="valid">
            <asp:RequiredFieldValidator ControlToValidate="CardnumberTextBox" class="valstyle11" ValidationGroup="1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="  رقم المنتخب  "></asp:RequiredFieldValidator>
                <div class="sd">
            <asp:RegularExpressionValidator class="valstyle2" ID="RegularExpressionValidator1" runat="server" ControlToValidate="CardnumberTextBox"  ErrorMessage="ارقام فقط"  ValidationExpression="^[0-9]*$" ValidationGroup="1"/>
            <asp:RegularExpressionValidator class="valstyle2" runat="server" id="rexNumber" controltovalidate="CardnumberTextBox" validationexpression="^[0-9]{14}$" ValidationGroup="1" errormessage="ادخل 14 رقم" />
        </div>
        </div>
        </td>
        <td class="text-left"><asp:TextBox  ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
            <asp:FileUpload ID="fu1"  CssClass="txt1" runat="server" />
            <div class="valid"><asp:RequiredFieldValidator class="valstyle11" ControlToValidate="fu1" ValidationGroup="1" ID="RequiredFieldValidator5" runat="server" ErrorMessage="صوره المنتخب"></asp:RequiredFieldValidator></div></td>
        <td class="text-left"><asp:TextBox class="form-control5" placeholder="رقم المنتخب "  ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
            <div class="valid"><asp:RequiredFieldValidator ControlToValidate="NumberTextBox" ValidationGroup="1" class="valstyle11" ID="RequiredFieldValidator3" runat="server" ErrorMessage="رقم المنتخب"></asp:RequiredFieldValidator></div></td>      
        <td class="text-left"><asp:DropDownList ID="ddl1" CssClass="drop2"   runat="server" DataSourceID="Objs_CommissionName" DataTextField="Description" DataValueField="Id">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="Objs_CommissionName" runat="server" SelectMethod="SelectAll_Commission" TypeName="Election.Dal.CommissionDal"></asp:ObjectDataSource></h4></td>
        <td class="text-left"><h4><asp:LinkButton  ID="UpdateButton" CssClass="a"  runat="server" CommandName="Update" Text="تحديث" ValidationGroup="1" /></h4></td>
        <td class="text-left"><h4><asp:LinkButton   ID="CancelButton" CssClass="a" runat="server" CommandName="Cancel" Text="الغاء" /></h4></td>
    </EditItemTemplate>
    
    
    
    <InsertItemTemplate>
       <%-- <span style=""> 
        <asp:TextBox ID="IdTextBox" Visible="false" runat="server" Text='<%# Bind("Id") %>' />
        <br />Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <asp:RequiredFieldValidator ControlToValidate="NameTextBox" ValidationGroup="2" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Image:
            <asp:TextBox ID="ImageTextBox" Visible="false" runat="server" Text='<%# Bind("Image") %>' />
        <asp:FileUpload ID="fu2" runat="server" />
            <asp:RequiredFieldValidator ControlToValidate="fu2" ValidationGroup="2" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
        <br />Cardnumber:
        <asp:TextBox ID="CardnumberTextBox" runat="server" Text='<%# Bind("Cardnumber") %>' />
            <asp:RequiredFieldValidator ControlToValidate="CardnumberTextBox" ValidationGroup="2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

        <br />Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
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
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" ValidationGroup="2" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        <br />
        <br />
        </span>--%>
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
        <asp:LinkButton ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
        <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
        <br />
        <br />
        </span>--%>
        <tr>
            <td class="text-left">
                <h4><%# Eval("Name") %></h4>
            </td>
            <td class="text-left">
                <h4><%# Eval("Cardnumber") %></h4>
            </td>
            <td class="text-left">
                <h4>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl=<%# string.Format("~/Images/img_elected/{0}",Eval("Image"))%>
                         CssClass="img1" Width="50px" Height="50px" /></h4>
            </td>
            <td class="text-left">
                <h4><%# Eval("Number") %></h4>
            </td>
            <td class="text-left">
                <h4><%# Eval("Commissionname") %></h4>
            </td>
            <td class="text-left">
                <h4>
                    <asp:LinkButton ID="EditButton" CssClass="a" runat="server" CommandName="Edit" Text="تعديل" /></h4>
            </td>
            <td class="text-left">
                <h4>
                    <h4><asp:LinkButton ID="DeleteButton" CssClass="a" runat="server" CommandName="Delete" Text="حذف " /></h4>
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
         <table class="table-fill">
<thead>
<tr>
<th class="text-left" style="width:150px;"><h4>الإسم</h4></th>
<th class="text-left" style="width:150px;"><h4>الرقم القومى <h4></th>
<th class="text-left"><h4>الصوره <h4></th>
<th class="text-left"><h4>الرقم الانتخابى<h4></th>
<th class="text-left"><h4>اللجنة التابع لها<h4></th>
<th class="text-left"><h4>تعديل منتخب<h4></th>
<th class="text-left"><h4>حذف منتخب<h4></th>
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
<asp:ObjectDataSource ID="Objs_Elected" runat="server" DataObjectTypeName="Election.Data.ElectedData" DeleteMethod="DeleteElected" InsertMethod="InsertElected" SelectMethod="SelectAll_Elected" TypeName="Election.Dal.ElectedDal" UpdateMethod="UpdateElected"></asp:ObjectDataSource>

