Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Marca, Cor, Combustível As String

        If RadioButton1.Checked Then
            Marca = "BMW"
        ElseIf RadioButton2.Checked Then
            Marca = "Audi"

        Else
            Marca = "Mercedes"
        End If

        If RadioButton4.Checked Then
            Cor = "Branco"
        ElseIf RadioButton5.Checked Then
            Cor = "Preto"
        ElseIf RadioButton6.Checked Then
            Cor = "Prata"
        Else
            Cor = "Vermelho"
        End If

        If RadioButton8.Checked Then
            Combustível = "Gasolina"
        ElseIf RadioButton9.Checked Then
            Combustível = "Gasóleo"

        Else
            Combustível = "Elétrico"
        End If

        Label5.Text = Marca
        Label6.Text = Cor
        Label8.Text = Combustível

    End Sub
End Class
