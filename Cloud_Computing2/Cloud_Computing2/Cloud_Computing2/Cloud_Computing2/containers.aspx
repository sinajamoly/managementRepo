<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="containers.aspx.vb" Inherits="Cloud_Computing2.seats" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Flight Reservation System</h1>
        <p class="lead">
            <asp:Label ID="Label1" runat="server" Text="Choose your seat : "></asp:Label>
            <asp:TextBox runat="server" ID="container_no" CssClass="form-control" Width="193px" style="margin-left: 0px" />
        </p>
        <p><asp:Button runat="server" OnClick="LogIn" Text="Proceed" CssClass="btn btn-default" ID="search" style="margin-left: 0px" />
            
        </p>
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
