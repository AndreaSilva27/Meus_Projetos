Public Class Form1
    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        DataGridView1.Rows.Add("Coimbra", "20.00")
        DataGridView1.Rows.Add("Aveiro", "22.00")
        DataGridView1.Rows.Add("Viseu", "27.00")
        DataGridView1.Rows.Add("Porto", "30.00")
        DataGridView1.Rows.Add("Braga", "35.00")
        DataGridView1.Rows.Add("Faro", "28.00")
        DataGridView1.Rows.Add("Évora", "31.00")

    End Sub

    Private Sub DataGridView1_CellContentClick(sender As Object, e As DataGridViewCellEventArgs) Handles DataGridView1.CellContentClick
        TextBox1.Text = DataGridView1.CurrentRow.Cells(0).Value
        TextBox2.Text = DataGridView1.CurrentRow.Cells(1).Value
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Form2.Label6.Text = TextBox1.Text
        Form2.Label7.Text = TextBox2.Text
        Form2.Label8.Text = TextBox3.Text
        Form2.Label9.Text = TextBox4.Text
        Form2.Label11.Text = TextBox5.Text
        Form2.Show()

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Clear()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox4.Clear()
        TextBox5.Clear()

    End Sub

    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        TextBox4.Text = Val(TextBox3.Text) - Val(TextBox2.Text) * Val(TextBox5.Text)
    End Sub

    Private Sub TextBox5_TextChanged(sender As Object, e As EventArgs) Handles TextBox5.TextChanged

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class
