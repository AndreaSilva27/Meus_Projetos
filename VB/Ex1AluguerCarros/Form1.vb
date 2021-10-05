Public Class Form1
    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim kms As Double = 0.1
        Dim recolha As Date
        Dim entrega As Date
        Dim Dias As Integer
        recolha = CDate(TextBox1.Text)
        entrega = CDate(TextBox2.Text)
        Dias = DateDiff(DateInterval.Day, recolha, entrega)

        Label9.Text = CStr(Dias)
        Label11.Text = ((Dias * 35) & " €")

        Label10.Text = (Val(TextBox4.Text) - Val(TextBox3.Text))
        Label12.Text = ((Val(Label10.Text) * 0.1) & " €")
        Label13.Text = (Val(Label11.Text) + Val(Label12.Text) & " €")
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox1.Clear()
        TextBox2.Clear()
        TextBox3.Clear()
        TextBox4.Clear()
        Label9.Text = ""
        Label10.Text = ""
        Label11.Text = ""
        Label12.Text = ""
        Label13.Text = ""
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Application.Exit()
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Form2.Label2.Text = Label11.Text
        Form2.Label4.Text = Label12.Text
        Form2.Label6.Text = Label13.Text
        Form2.Show()
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Label14.Text = TimeOfDay
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Timer1 = New Timer
        AddHandler Timer1.Tick, AddressOf Timer1_Tick
        Timer1.Start()
    End Sub
End Class
