Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Const Valor_hora = 35.0  'Valor constante da mão de obra'
        Dim horas As Double = CDbl(txtHoras.Text)
        Dim MObra As Double = Valor_hora * horas
        Dim partes As Double = CDbl(txtCusto.Text)
        Dim CustoTotal As Double = MObra + partes  'Esta variável vai servir para calcular o Total'
        ListBox1.Items.Clear()
        ListBox1.Items.Add("Cliente: " & txtCliente.Text)
        ListBox1.Items.Add("Valor da Mão de Obra: " & MObra.ToString("C"))
        ListBox1.Items.Add("Valor de Peças: " & partes.ToString("C"))
        ListBox1.Items.Add("Valor Total a Pagar: " & CustoTotal.ToString("C"))




    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ListBox1.Items.Clear()
        txtCliente.Text = " "
        txtHoras.Text = " "
        txtCusto.Text = " "

    End Sub
End Class
