<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication7._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <asp:GridView ID="ProductsGridView" runat="server" CssClass="grid-view">
    <Columns>
    </Columns>
</asp:GridView>

    <asp:PlaceHolder ID="ProductsPlaceholder" runat="server">
    </asp:PlaceHolder>


    <%--
    <h2>Add New Product</h2>
    <form runat="server" method="post">
        <label for="productName">Product Name:</label>
        <asp:TextBox ID="NewProductNameTextBox" runat="server" /><br />
        <label for="price">Price:</label>
        <asp:TextBox ID="NewPriceTextBox" runat="server" TextMode="Number" /><br />
        <asp:Button ID="AddProductButton" runat="server" Text="Add Product" OnClick="AddProduct_Click" />
    </form>
    --%>

</asp:Content>
