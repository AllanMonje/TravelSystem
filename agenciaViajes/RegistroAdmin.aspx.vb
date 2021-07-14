Public Class RegistroAdmin
    Inherits System.Web.UI.Page
    Dim clase As New Conexiones

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") IsNot Nothing Then

        Else
            Server.Transfer("~/LoginAdmin.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Session("user") IsNot Nothing Then


                clase.Modificaciones("INSERT INTO administradores VALUES('" & txtNombreCompleto.Text & "',
                '" & txtCorreo.Text & "','" & txtPassword.Text & "','" & txtUsuario.Text & "', 1)")


                Response.Write("<script>alert('Registro Exitoso');</script>")
                Server.Transfer("~/LoginAdmin.aspx")
            Else
                Server.Transfer("~/LoginAdmin.aspx")
            End If
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Server.Transfer("~/LoginAdmin.aspx")
    End Sub
End Class