<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="Cloud_Computing2._AdminDefault" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Container Management System</h1>
        <p class="lead">
            <asp:Label ID="Label1" runat="server" Text="Enter UserName : "></asp:Label>
            <asp:TextBox runat="server" ID="username" CssClass="form-control" Width="193px" style="margin-left: 0px" /></p>
       <p class="lead">
            <asp:Label ID="Label2" runat="server" TextMode="Password" Text="Enter Password : "></asp:Label>
            <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" Width="193px" style="margin-left: 0px" />
        </p>
        <p><asp:Button runat="server" OnClick="LogIn" Text="Login" CssClass="btn btn-default" ID="search" style="margin-left: 0px" /></p>
    </div>

    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
