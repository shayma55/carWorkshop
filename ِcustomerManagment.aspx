<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ِcustomerManagment.aspx.cs" Inherits="WebAp._ِcustomerManagment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="containor">







        
                <h1>Enter Customer Information </h1>
            
    <table>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Customer ID"></asp:Label>
                </td>
           <td>
               <asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox>
                </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Customer Name"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox>
            </td>
             <td colspan="3">
               <asp:Label ID="Label2" runat="server" Text="phone Number"></asp:Label> 
            </td>
            <td colspan="4">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            </td>
              <td colspan="5">
                 <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label> 
            </td>
             <td colspan="6">
                 <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>

        </tr>
        </table>
           <h1>Enter Car Information </h1>
        <asp:HiddenField ID="hfCarId" runat="server" />
        <table>
         
         <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="plate"></asp:Label>
            </td>
            <td colspan="2">
                <asp:TextBox ID="txtPlate" runat="server"></asp:TextBox>  
            </td>
               <td colspan="3">
               <asp:Label ID="Label8" runat="server" Text="Body Number"></asp:Label>
            </td>
              <td colspan="4">
               <asp:TextBox ID="txtBodyNo" runat="server"></asp:TextBox>
            </td>
               <td colspan="5">
               <asp:Label ID="Label6" runat="server" Text="color"></asp:Label>
            </td>
              <td colspan="6">
               <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="make"></asp:Label>
            </td>
            <td colspan="2">
                <asp:DropDownList ID="DropDownMake" runat="server"  DataTextField="make" DataValueField="make"></asp:DropDownList>
            </td>
               <td colspan="3">
               <asp:Label ID="Label10" runat="server" Text="Model"></asp:Label>
            </td>
              <td colspan="4">
                  <asp:DropDownList ID="DropDownModel" runat="server" DataTextField="model" DataValueField="model"></asp:DropDownList>
            </td>
               <td colspan="5">
               <asp:Label ID="Label11" runat="server" Text="Style"></asp:Label>
            </td>
              <td colspan="6">
                  <asp:DropDownList ID="DropDownStyle" runat="server" DataTextField="style" DataValueField="style"></asp:DropDownList>
            </td>
              <td colspan="5">
               <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
            </td>
              <td colspan="6">
                  <asp:DropDownList ID="DropDownYear" runat="server" DataTextField="year" DataValueField="year"></asp:DropDownList>
            </td>
        </tr>
         
         <tr>
            <td>
              
            </td>
            <td colspan="2">
                <br />
                <asp:Button  ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click"  />
                  <asp:Button  ID="BtnDelete" runat="server" Text="Delete" />
                  <asp:Button  ID="BtnClear" runat="server" Text="Clear" OnClick="BtnClear_Click"  />
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

      
        

    </div>
</asp:Content>