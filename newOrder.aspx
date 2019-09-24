<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newOrder.aspx.cs" Inherits="WebAp.newOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <br />
    <br />
    
    <div>
        <h2>Add new Service </h2>  
        
        <asp:LinkButton ID="btnAddServices" runat="server" OnClick="btnAddServices_Click">click here</asp:LinkButton>
        </div>
     <div>
        <h2>Choose from Exsiting Services</h2>
        
       
<asp:DropDownList ID="ServiceDropDownList" DataTextField="ServiceName" DataValueField="ServiceID" runat="server" >

</asp:DropDownList>

        </div>
    <br />
        <asp:Button ID="btnServiceSelect" runat="server" Text="select" OnClick="btnServiceSelect_Click" />
    <br />
        &nbsp;<asp:TextBox ID="txtService" runat="server"></asp:TextBox>
    <br />
    <br />
    
    <div>
        <h2>Add new items</h2>  
        
        <asp:LinkButton ID="btnAddITems" runat="server" OnClick="btnAddItems_Click">click here</asp:LinkButton>
        </div>
     <div>
        <h2>Choose from Exsiting items</h2>
        
         <asp:DropDownList ID="itemDropDownList" DataTextField="itemName" DataValueField="itemID" runat="server"></asp:DropDownList>
     
      
         <br />

      
        </div>
    <asp:Button ID="btnSelectItems" runat="server" Text="Select" OnClick="btnSelectItems_Click" />
    <br />

    <asp:TextBox ID="txtItem" runat="server"></asp:TextBox>
    
    
    <br />
    <br />
    <asp:Button ID="btnComplete" runat="server" Text="complete order" OnClick="btnComplete_Click" /> <asp:Button ID="btnClear" runat="server" Text="clear" OnClick="btnClear_Click" />
    
    
    <br />

   
 
</asp:Content>
