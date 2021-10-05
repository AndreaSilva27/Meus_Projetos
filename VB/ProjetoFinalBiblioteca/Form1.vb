Public Class Biblioteca
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the '_Livros__1_DataSet.Livro' table. You can move, or remove it, as needed.
        Me.LivroTableAdapter.Fill(Me._Livros__1_DataSet.Livro)
        'TODO: This line of code loads data into the '_Livros__1_DataSet.Livro' table. You can move, or remove it, as needed.
        Me.LivroTableAdapter.Fill(Me._Livros__1_DataSet.Livro)

    End Sub

    Private Sub LivroBindingNavigatorSaveItem_Click(sender As Object, e As EventArgs) Handles LivroBindingNavigatorSaveItem.Click
        Me.Validate()
        Me.LivroBindingSource.EndEdit()
        Me.TableAdapterManager.UpdateAll(Me._Livros__1_DataSet)

    End Sub
End Class
