Imports System.Data
Imports System.Data.SqlClient
Public Class _AdminDefault
    Inherits Page


    Protected Sub LogIn(sender As Object, e As EventArgs) Handles search.Click
        Dim objConnection As SqlConnection
        objConnection = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=CMS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")

        Dim objCommand As SqlCommand = New SqlCommand()
        objCommand.Connection = objConnection
        objCommand.CommandText = "select * from admin where username ='" + username.Text + "' AND password ='" + TextBox2.Text + "'"

        Dim da As SqlDataAdapter = New SqlDataAdapter(objCommand)
        Dim ds As DataSet = New DataSet()

        Dim count As Integer = New Integer()
        count = da.Fill(ds, "login")
        If (count > 0) Then
            Session("role") = "admin"
            Response.Redirect("manage.aspx")
        Else
            MsgBox("Invalid username or password !")
        End If

        objConnection.Open()
        objCommand.ExecuteNonQuery()
        objConnection.Close()
    End Sub
End Class