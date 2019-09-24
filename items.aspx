<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="items.aspx.cs" Inherits="WebAp.items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <div class=" container">
    
    
           
                <h1>Add New items</h1>
            <asp:HiddenField ID="hfItemID" runat="server" />
    <table>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="items Name"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtItemsName" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            </td>
        </tr>
          <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="size"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="price"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Vat"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtVat" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
              
            </td>
            <td colspan="2">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            </td>
        </tr>
            <tr>
            <td>
              
            </td>
            <td colspan="2">
                
                <asp:Label ID="lblSucessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
            </td>
        </tr>
           <tr>
            <td>
              
            </td>
            <td colspan="2">
              
                <asp:Label ID="lblerrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>


            
      

         <br />
        

         <asp:GridView ID="itemsIist" runat="server" AutoGenerateColumns="False"  >
        <Columns>
     
             <asp:TemplateField HeaderText="Select items">
                
                 <ItemTemplate>
                      <asp:CheckBox ID="ChKS" runat="server" />
                 </ItemTemplate>
             </asp:TemplateField>
            <asp:BoundField DataField="ItemName" HeaderText="name " />
            <asp:BoundField DataField="ItemDescription" HeaderText=" description" />
            <asp:BoundField DataField="ItemSize" HeaderText=" size" />
            <asp:BoundField DataField="ItemPrice" HeaderText="price " />
            <asp:BoundField DataField="ItemVat" HeaderText="vat " />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%#Eval("ItemID") %>' OnClick="lnk_Onclick">view</asp:LinkButton>
                </ItemTemplate>
    
            </asp:TemplateField>
           
                
        </Columns>
    </asp:GridView>
         <br />
        
     </div>
</asp:Content>
