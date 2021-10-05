Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If TextBox1.Text = "andrea" And TextBox2.Text = "1234" Then
            MessageBox.Show("Benvindo ao Sistema do IEFP")

        Else
            MessageBox.Show("Usuário Inválido!")

        End If



    End Sub
End Class
