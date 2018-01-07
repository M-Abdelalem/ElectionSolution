<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CandidateUpdate.ascx.cs" Inherits="Election.AdminControl.CandidateUpdate" %>
<br /><br />
<asp:Label Cssclass="message1" ID="lbl_message" Visible="false" runat="server"></asp:Label>
<div id="search">
<asp:TextBox ID="txt_search" CssClass="form-control1" placeholder="ادخل رقم المرشح" runat="server"></asp:TextBox>&nbsp;
<asp:LinkButton ID="lb_search" CssClass="link"  runat="server" ValidationGroup="btn1" OnClick="lb_search_Click" >بحث</asp:LinkButton>
<asp:RequiredFieldValidator ControlToValidate="txt_search" class="valstyle12" ValidationGroup="btn1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="ادخل رقم المرشح"></asp:RequiredFieldValidator>
</div>
<br />
<br />
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_CandidateUpload" OnItemInserting="ListView1_ItemInserting" OnItemUpdating="ListView1_ItemUpdating">
    
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
        <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update"  Text="تعديل" ValidationGroup="1" />
        <asp:LinkButton ID="CancelButton" runat="server" CommandName="Cancel" Text="الغاء" />
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
    </EditItemTemplate>
    
    <InsertItemTemplate>
        <%--<span style="">Id:
        <asp:TextBox ID="IdTextBox" runat="server" Text='<%# Bind("Id") %>' />
        <br />Name:
        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
        <br />Number:
        <asp:TextBox ID="NumberTextBox" runat="server" Text='<%# Bind("Number") %>' />
        <br />Image:
        <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
        <br />Information:
        <asp:TextBox ID="InformationTextBox" runat="server" Text='<%# Bind("Information") %>' />
        <br />Commission_fk:
        <asp:TextBox ID="Commission_fkTextBox" runat="server" Text='<%# Bind("Commission_fk") %>' />
        <br />Commissionname:
        <asp:TextBox ID="CommissionnameTextBox" runat="server" Text='<%# Bind("Commissionname") %>' />
        <br />
        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        <br /><br /></span>--%>
        
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
        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="تعديل" />--%>
        
        <div class="row">
        <h2 class="attrrib"> الاسم : </h2>
        <h4 class="info"><%# Eval("Name") %></h4>
    </div>
    <div class="row">
        <h2 class="attrrib">  الرقم الانتخابى : </h2>
        <h4 class="info"><%# Eval("Number") %></h4>
    </div>
    <div class="row">
        <h2 class="attrrib"> الصورة : </h2>
         <asp:Image ID="Image1" class="img" runat="server" ImageUrl='<%# Eval("Image") %>' />
    </div>
    <div class="row">
        <h2 class="attrrib"> الرمز الانتخابى : </h2>
        <h4 class="info">&nbsp; <%# Eval("Information") %></h4>
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
        <%--<div style="">
        </div>--%>
    </LayoutTemplate>
    
</asp:ListView>
<asp:ObjectDataSource ID="Objs_CandidateUpload" runat="server" DataObjectTypeName="Election.Data.CandidateData" SelectMethod="SelectRow1_Candidate" TypeName="Election.Dal.CandidateDal" UpdateMethod="UpdateCandidate">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="" Name="i" SessionField="CandidateNumber" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
