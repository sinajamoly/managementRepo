<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="manage.aspx.vb" Inherits="Cloud_Computing2._ManageDefault" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Container Management System</h1>
        <p class="lead">
            <asp:Label ID="Label1" runat="server" Text="Enter Ship Number : "></asp:Label>
            <asp:TextBox runat="server" ID="ship_no" CssClass="form-control" Width="193px" style="margin-left: 0px" /></p>
        <p><asp:Button runat="server" OnClick="LogIn" Text="View Bookings" CssClass="btn btn-default" ID="search" style="margin-left: 0px" /><asp:Button runat="server" Text="Logout" CssClass="btn btn-default" ID="search0" style="margin-left: 0px" /></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="193px" Width="551px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                    <asp:BoundField DataField="ship_no" HeaderText="ship_no" SortExpression="ship_no" />
                    <asp:BoundField DataField="total_containers" HeaderText="total_containers" SortExpression="total_containers" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="company_name" HeaderText="company_name" SortExpression="company_name" />
                    <asp:BoundField DataField="credit_card_no" HeaderText="credit_card_no" SortExpression="credit_card_no" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="SELECT * FROM [reservation] WHERE ([ship_no] = @ship_no)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ship_no" Name="ship_no" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
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
