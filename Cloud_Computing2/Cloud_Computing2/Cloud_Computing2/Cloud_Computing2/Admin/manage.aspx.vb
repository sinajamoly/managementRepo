Imports System.Data
Imports System.Data.SqlClient
Public Class _ManageDefault
    Inherits Page


    Protected Sub LogIn(sender As Object, e As EventArgs) Handles search.Click
        Dim objConnection As SqlConnection
        objConnection = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=CMS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")

        Dim objCommand As SqlCommand = New SqlCommand()
        objCommand.Connection = objConnection
        objCommand.CommandText = "select * from bookings where ship_no ='" + ship_no.Text + "'"

        Dim da As SqlDataAdapter = New SqlDataAdapter(objCommand)
        Dim ds As DataSet = New DataSet()

        Dim count As Integer = New Integer()
        count = da.Fill(ds, "bookings")
        If (count > 0) Then
            GridView1.Visible = True
        End If

        objConnection.Open()
        objCommand.ExecuteNonQuery()
        objConnection.Close()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
    End Sub

    Protected Sub GridView1_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles GridView1.RowCommand
    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub SqlDataSource1_Load(sender As Object, e As EventArgs) Handles SqlDataSource1.Load
        If Not Session("role") = "admin" Then
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub Logout(sender As Object, e As EventArgs) Handles search0.Click
        Session("role") = ""
        Response.Redirect("Default.aspx")
    End Sub
End Class