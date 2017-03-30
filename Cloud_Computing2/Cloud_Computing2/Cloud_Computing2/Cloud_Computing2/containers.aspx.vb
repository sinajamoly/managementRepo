Imports System.Data
Imports System.Data.SqlClient
Public Class seats
    Inherits Page
    Dim available_containers As Int16 = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        'MsgBox(Session("flight"))
        Dim objConnection As SqlConnection
        Dim output As New List(Of String)()
        Dim total_containers As Int16 = 0
        objConnection = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=CMS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False")

        Dim objCommand As SqlCommand = New SqlCommand()
        objCommand.Connection = objConnection
        objCommand.CommandText = "select * from reservation where ship_no ='" + Session("ship") + "'"


        objConnection.Open()
        Try
            Dim dr = objCommand.ExecuteReader()
            While dr.Read()
                total_containers += Integer.Parse(dr("total_containers").ToString())
                'output.Add(dr("booking_no").ToString())
            End While
        Catch ex As SqlException
            ' Do some logging or something. 
            MsgBox("There was an error accessing your data. DETAIL: " & ex.ToString())
        End Try
        objConnection.Close()
        available_containers = Session("capacity") - total_containers
        'For i As Integer = 1 To Session("total_seats")
        '    If Not output.Contains(i.ToString) Then
        '        DropDownList1.Items.Add(New ListItem(i.ToString, i.ToString))
        '    End If
        'Next
    End Sub

    Public Sub LogIn(sender As Object, e As EventArgs) Handles search.Click
        Session("selected_con") = container_no.Text.ToString()
        If (available_containers >= container_no.Text.ToString()) Then
            Response.Redirect("payment.aspx")
        Else
            MsgBox("Required amount of containers are not available on this ship.")
        End If
    End Sub
End Class