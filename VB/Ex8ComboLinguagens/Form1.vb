Public Class Form1
    Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged
        Dim Linguagens As String
        Linguagens = ComboBox1.Text
        MessageBox.Show("Você escolheu " & Linguagens)
        Label2.Text = ("Você escolheu " & Linguagens)
    End Sub
End Class
