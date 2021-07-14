Imports System.Data.SqlClient

Public Class LoginAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            Dim Conexiones As New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
            Dim ConsultaQuery As New SqlCommand("SELECT 1 FROM administradores WHERE nombre_usuario = @nombreUsuario AND password = @password", Conexiones)
            Dim id As String
            Dim password As String
            Dim DR As SqlDataReader

            ConsultaQuery.Parameters.AddWithValue("@nombreUsuario", SqlDbType.NVarChar).Value = txtUsuario.Text
            ConsultaQuery.Parameters.AddWithValue("@password", SqlDbType.NVarChar).Value = txtPassword.Text

            Conexiones.Open()

            DR = ConsultaQuery.ExecuteReader()

            If (DR.Read()) Then
                id = txtUsuario.Text.Trim
                Session("user") = id

                password = txtPassword.Text.Trim
                Session("pass") = password

                Response.Redirect("/Admin.aspx")
            Else
                Response.Write("<script>alert('Usuario o password incorrecta, intentelo de nuevo!');</script>")
                txtUsuario.Text = ""
                txtPassword.Text = ""
            End If

            Conexiones.Close()
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub
End Class