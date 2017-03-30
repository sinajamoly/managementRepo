Imports System.Data
Imports System.Data.SqlClient
Public Class payment
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        TextBox5.Text = Session("ship")
        TextBox4.Text = Session("selected_con")
    End Sub

    Public Sub LogIn(sender As Object, e As EventArgs) Handles search.Click
        Dim objConnection As SqlConnection
        objConnection = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=CMS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")

        Dim objCommand As SqlCommand = New SqlCommand()
        objConnection.Open()
        objCommand.Connection = objConnection
        objCommand.CommandText = "insert into reservation(ship_no,total_containers,name,company_name,credit_card_no) values('" + Session("ship") + "','" + Session("selected_con") + "','" + TextBox1.Text.ToString() + "','" + TextBox2.Text.ToString() + "','" + TextBox3.Text.ToString() + "')"
        objCommand.ExecuteScalar()
        MsgBox("Container(s) Successfully Reserved !")
        objConnection.Close()
    End Sub
End Class