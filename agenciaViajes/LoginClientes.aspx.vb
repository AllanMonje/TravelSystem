Imports System.Data.SqlClient

Public Class LoginClientes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub txtPassword_TextChanged(sender As Object, e As EventArgs) Handles txtPassword.TextChanged

    End Sub


    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("/RegistroClientes.aspx")
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            Dim id As String
            Dim Conexiones As New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
            Dim ConsultaQuery As New SqlCommand("SELECT 1 FROM clientes WHERE identidad_cliente = @identidadCliente AND password = @password", Conexiones)

            Dim DR As SqlDataReader

            ConsultaQuery.Parameters.AddWithValue("@identidadCliente", SqlDbType.Int).Value = txtIdentidad.Text
            ConsultaQuery.Parameters.AddWithValue("@password", SqlDbType.NVarChar).Value = txtPassword.Text

            Conexiones.Open()

            DR = ConsultaQuery.ExecuteReader()

            If (DR.Read()) Then
                id = txtIdentidad.Text.Trim
                Session("usuario") = id
                Server.Transfer("~/Reservacion.aspx")

            Else
                Response.Write("<script>alert('Usuario o password incorrecta, intentelo de nuevo!');</script>")
                txtIdentidad.Text = ""
                txtPassword.Text = ""
            End If

            Conexiones.Close()
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub

End Class