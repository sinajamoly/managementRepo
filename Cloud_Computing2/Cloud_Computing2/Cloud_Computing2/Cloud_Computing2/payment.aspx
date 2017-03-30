<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="payment.aspx.vb" Inherits="Cloud_Computing2.payment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Container Management System</h1>
        <p>&nbsp;</p>
        <p class="lead">
            <asp:Label ID="Label5" runat="server" Text="Ship Number : "></asp:Label>
        </p>
        <p class="lead">
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Width="165px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p class="lead">
            <asp:Label ID="Label4" runat="server" Text="Number of Containers: "></asp:Label>
        </p>
        <p class="lead">
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="165px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p class="lead">
            <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
        </p>
        <p class="lead">
            <asp:TextBox ID="TextBox1" runat="server" Width="165px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p class="lead">
            <asp:Label ID="Label2" runat="server" Text="Company Name : "></asp:Label>
        </p>
        <p class="lead">
            <asp:TextBox ID="TextBox2" runat="server" Width="165px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p class="lead">
            <asp:Label ID="Label3" runat="server" Text="Credit Card # : "></asp:Label>
        </p>
        <p class="lead">
            <asp:TextBox ID="TextBox3" runat="server" Width="165px" style="margin-left: 0px"></asp:TextBox>
        </p>
        <p><asp:Button runat="server" OnClick="LogIn" Text="Proceed" CssClass="btn btn-default" ID="search" style="margin-left: 0px" /></p>
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
