<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="WebAp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class=" container">
    
    
           
                <h1>Add New Service</h1>
            <asp:HiddenField ID="hfServiceID" runat="server" />
    <table>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="service Name"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtServiceName" runat="server"></asp:TextBox>
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
                <asp:Button  ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" style="height: 26px" />
                  <asp:Button  ID="BtnDelete" runat="server" Text="Delete" OnClick="BtnDelete_Click" />
                  <asp:Button  ID="BtnClear" runat="server" Text="Clear" OnClick="BtnClear_Click" />
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
        

         <asp:GridView ID="ServicesIist" runat="server" AutoGenerateColumns="False" >
        <Columns>
     
             <asp:TemplateField HeaderText="Select Services">
                
                 <ItemTemplate>
                      <asp:CheckBox ID="ChKS" runat="server" />
                 </ItemTemplate>
             </asp:TemplateField>
            <asp:BoundField DataField="ServiceName" HeaderText="name " />
            <asp:BoundField DataField="ServiceDescreption" HeaderText=" descreption" />
            <asp:BoundField DataField="ServicePrice" HeaderText="price " />
            <asp:BoundField DataField="ServiceVat" HeaderText="vat " />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%#Eval("ServiceID") %>' OnClick="lnk_Onclick">view</asp:LinkButton>
                </ItemTemplate>
    
            </asp:TemplateField>
           
                
        </Columns>
    </asp:GridView>
         <br />
         <asp:Button ID="btnNewOrder" runat="server" Text="New order" OnClick="btnNewOrder_Click" />
     </div>
</asp:Content>
