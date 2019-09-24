<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="WebAp.OrderList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class=" container">


       <asp:GridView ID="ServicesIist" runat="server" AutoGenerateColumns="False" >
        <Columns>
      
            <asp:BoundField DataField="name" HeaderText="name " />
            <asp:BoundField DataField="price" HeaderText="price " />
            <asp:BoundField DataField="vat" HeaderText="vat " />
            
                
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
