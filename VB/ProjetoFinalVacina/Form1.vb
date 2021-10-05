
Imports System.Data.SqlClient
Public Class Form1
    Dim liga As SqlConnection = New SqlConnection("Data Source=(localdb)\MSSQLLocalDB;Database=BD20531; 
trusted_connection=true;")
    Dim cmd As SqlCommand
    Dim da As SqlDataAdapter
    Dim dt As DataTable
    Dim sql As String
    Dim resultado As Integer

    Private Sub guardata(sql As String)
        Try
            liga.Open()
            cmd = New SqlCommand()
            With cmd
                .Connection = liga
                .CommandText = sql
                resultado = .ExecuteNonQuery()
            End With
            If resultado > 0 Then
                MsgBox("Os Dados inseridos foram guardados com Sucesso")
            Else
                MsgBox("Erro de Introdução!")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            liga.Close()
        End Try
    End Sub

    Private Sub loadData(sql As String, dtg As DataGridView)
        Try
            liga.Open()
            cmd = New SqlCommand()
            da = New SqlDataAdapter
            dt = New DataTable
            With cmd
                .Connection = liga
                .CommandText = sql
            End With
            With da
                .SelectCommand = cmd
                .Fill(dt)
            End With
            dtg.DataSource = dt

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            liga.Close()
            da.Dispose()
        End Try
    End Sub


    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        sql = "SELECT Nome as Nome,NUtente as NUtente,Localidade as Localidade,Telemovel as Telemovel,Data as Data FROM covid"
        loadData(sql, DataGridView1)
    End Sub

    Private Sub btnguardar_Click(sender As Object, e As EventArgs) Handles btnguardar.Click
        sql = "INSERT INTO covid (Nome, NUtente, Localidade,Telemovel,Data) values ('" & txtnome.Text & "','" & txtutente.Text & "','" & txtlocal.Text & "', '" & txttel.Text & "','" & DateTimePicker1.Value & "')"
        guardata(sql)

        sql = "SELECT Nome as Nome, NUtente as NUtente,Localidade as Localidade,Telemovel as Telemovel, Data as Data FROM covid"
        loadData(sql, DataGridView1)
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        txtnome.Text = ""
        txtutente.Text = ""
        txtlocal.Text = ""
        txttel.Text = ""

    End Sub
End Class
