Imports System.Data.SqlClient

Public Class EditarAdmin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("user") IsNot Nothing Then
            traerCliente()
        Else
            Server.Transfer("~/LoginAdmin.aspx")
        End If
    End Sub

    Protected Sub btnEditarAdmin_Click(sender As Object, e As EventArgs) Handles btnEditarAdmin.Click
        Try

            If Session("user") IsNot Nothing Then


                Dim conexion As SqlConnection
                conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
                conexion.Open()

                Dim cadena As String = "UPDATE administradores SET nombre_completo='" & txtNombreCompleto.Text & "', email='" & txtCorreo.Text & "',password='" & txtPassword.Text & "',nombre_usuario= '" & txtUsuario.Text & "' WHERE identidad_cliente = '" & lblIdentidad.Text & "' "

                Dim comando As SqlCommand
                comando = New SqlCommand(cadena, conexion)
                comando.ExecuteNonQuery()


                Response.Write("<script>alert('Cambios registrados correctamente');</script>")
                conexion.Close()

                Server.Transfer("~/Default.aspx")
            Else
                Server.Transfer("~/Default.aspx")

            End If

        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub

    Private Sub traerCliente()
        Dim conexion As SqlConnection
        conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
        conexion.Open()
        Dim comando3 As SqlCommand
        Dim Rs As SqlDataReader
        Dim cadena3 As String = "SELECT * FROM administradores WHERE nombre_usuario = '" & Session("user") & "' "

        comando3 = New SqlCommand(cadena3, conexion)
        Rs = comando3.ExecuteReader()

        Rs.Read()
        lblIdentidad.Text = Rs(0)
        txtNombreCompleto.Text = Rs(1)
        txtPassword.Text = Rs(3)
        txtCorreo.Text = Rs(2)
        txtUsuario.Text = Rs(4)
    End Sub

End Class