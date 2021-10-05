Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        DataGridView1.Rows.Add("Menu Big Taste Duplo", "7.90")
        DataGridView1.Rows.Add("Big Taste Veg", "6.60")
        DataGridView1.Rows.Add("Double Big Mac", "3.70")
        DataGridView1.Rows.Add("McMenu Double Big Mac", "6.90")
        DataGridView1.Rows.Add("McMenu Double Mac Bacon", "4.45")
    End Sub

    Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick
        TextBox1.Text = DataGridView1.CurrentRow.Cells(0).Value
        TextBox2.Text = DataGridView1.CurrentRow.Cells(1).Value


    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Clear()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox4.Clear()

    End Sub

    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        TextBox4.Text = Val(TextBox3.Text) - Val(TextBox2.Text)

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Form2.Label6.Text = TextBox1.Text
        Form2.Label7.Text = TextBox2.Text
        Form2.Label8.Text = TextBox3.Text
        Form2.Label9.Text = TextBox4.Text
        Form2.Show()
    End Sub
End Class
