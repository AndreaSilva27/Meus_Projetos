Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Const Valor_iva = 0.23  'Valor constante da mão de obra'

        Dim valor As Double = CDbl(txtCusto.Text) ' Valor dos Serviços'

        Dim CustoTotal As Double = valor + (valor * Valor_iva)  'Esta variável vai servir para calcular o Total com Iva'
        ListBox1.Items.Clear()
        ListBox1.Items.Add("Cliente: " & txtCliente.Text) 'Adiciona o cliente na listbox'
        ListBox1.Items.Add("Valor dos Serviços: " & valor.ToString("C")) 'Adiciona o valor dos serviços'
        ListBox1.Items.Add("Valor do IVA 23%: " & Valor_iva.ToString("C")) 'Adiciona o valor do iva'
        ListBox1.Items.Add("Valor Total a Pagar: " & CustoTotal.ToString("C")) 'Apresenta o custo total'

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        ListBox1.Items.Clear()   'Limpar a listbox'
        txtCliente.Text = " "
        txtCusto.Text = " "
    End Sub
End Class
