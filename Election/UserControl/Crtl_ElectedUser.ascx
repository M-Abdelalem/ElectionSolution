<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Crtl_ElectedUser.ascx.cs" Inherits="Election.UserControl.Crtl_ElectedUser" %>
<%--<%@ Register Src="../AdminControl/Ctrl_CandidateManager.ascx" TagName="Ctrl_CandidateManager" TagPrefix="uc1" %>--%>
<div class="timer" >
    <div class="timername">
            <asp:Label ID="Label4" class="sq" runat="server" Text=" متبقى من الوقت لانتهاء الانتخاب : "></asp:Label>
    </div>
    <div class="td1">
            <asp:Label ID="Label3" class="texta" runat="server" Text="ثوانى"></asp:Label>         
            <asp:Label ID="Label2" class="texta" runat="server" Text="دقائق"></asp:Label>
            <asp:Label ID="Label1" class="texta" runat="server" Text="ساعات"></asp:Label>
    </div>
          <div class="td2">
            <asp:Label ID="lbl_second" class="textb" Text="1" runat="server"></asp:Label>               
              <asp:Label ID="lbl_minute" class="textb" Text="1" runat="server"></asp:Label>
            <asp:Label ID="lbl_hour" class="textb" Text="1" runat="server"></asp:Label>            
                      
               </div> 
            
        </div>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="Button1" ValidationGroup="1" runat="server" Text="Show" OnClick="Button2_Click" />

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Card Number" ValidationGroup="1"></asp:RequiredFieldValidator>
<p>
    <asp:Label ID="lbl_message" runat="server"></asp:Label>
</p>
<asp:ListView ID="ListView1" runat="server" DataSourceID="Objs_Candidate" GroupItemCount="3" DataKeyNames="Id" OnItemDataBound="ListView1_ItemDataBound" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
    
    
    
    
    <GroupTemplate>
        <tr id="itemPlaceholderContainer" runat="server">
            <td id="itemPlaceholder" runat="server"></td>
        </tr>
    </GroupTemplate>
    
    
    
    <ItemTemplate>
        <td runat="server" Class="div21" style="">
            <div class="s11">                          
            <div class="info11">
                    <div class="info12">
                        <div class="ho">
                            <i class="attib11">إسم المرشح :</i>
                            <asp:Label CssClass="information1" ID="Label5" runat="server" Text='<%# Eval("Name") %>' />
                        </div>
                        <div class="ho">
                            <i class="attib11">رقم المرشح :</i>
                            <asp:Label ID="Label6" CssClass="information12" runat="server" Text='<%# Eval("Number") %>' />
                        </div>
                        <div class="ho">
                            <i class="attib11">رمز المرشح :</i> 
                             <asp:Label ID="Label7" CssClass="information12" runat="server" Text='<%# Eval("Information") %>' />                    
                        </div>
                    </div>
                     <div class="image11"> <asp:Image runat="server"  ID="Image1"  Class="image12"    ImageUrl='<%# Eval("Image") %>' />
                    </div>      
                    </div>     
            <div class="votebutton">
                    <asp:LinkButton ID="LinkButton1" CssClass="vote" OnClick="LinkButton1_Click" runat="server">تصويت</asp:LinkButton>   
                </div>
                </div>              
        </td>
        <asp:Label Visible="false" ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <asp:Label ID="Commission_fkLabel" Visible="false" runat="server" Text='<%# Eval("Commission_fk") %>' />
        <asp:Label ID="ImageLabel" runat="server" Visible="false" Text='<%# Eval("Image") %>' />
    </ItemTemplate>
    <LayoutTemplate>               
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" >
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
    </LayoutTemplate>

    

    

    

</asp:ListView>
<asp:ObjectDataSource ID="Objs_Candidate" runat="server" SelectMethod="SelectRow_Candidate" TypeName="Election.Dal.CandidateDal">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="0" Name="i" SessionField="Commission_FK" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>

