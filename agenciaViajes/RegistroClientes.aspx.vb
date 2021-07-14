Public Class RegistroClientes
    Inherits System.Web.UI.Page
    Dim clase As New Conexiones
    Dim clase2 As New Conexiones

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            clase.Modificaciones("exec modificacionesCliente '" & txtIdentidad.Text & "','" & txtPassword.Text & "','" & txtNombreCompleto.Text & "',
            '" & txtCorreo.Text & "','" & txtTelefono.Text & "',
            '" & txtDireccion.Text & "','" & txtNacionalidad.Text & "', 1")

            clase2.Modificaciones("INSERT INTO tarjetas VALUES('" & txtIdentidad.Text & "', '" & txtTarjeta.Text & "', '" & txtVencimiento.Text & "', '" & txtCodigo.Text & "', 1 )")

            Response.Write("<script>alert('Registro Exitoso');</script>")
            Server.Transfer("~/LoginClientes.aspx")
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Server.Transfer("~/LoginClientes.aspx")
    End Sub
End Class