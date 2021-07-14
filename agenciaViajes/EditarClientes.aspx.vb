Imports System.Data.SqlClient

Public Class EditarClientes
    Inherits System.Web.UI.Page
    Dim id As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("usuario") IsNot Nothing Then
            id = Session("usuario")
            txtIdentidad.Text = id
            traerCliente()
        Else
            Server.Transfer("~/Default.aspx")
        End If
    End Sub
    Protected Sub btnEditarClientes_Click(sender As Object, e As EventArgs) Handles btnEditarClientes.Click
        Try

            If Session("usuario") IsNot Nothing Then


                Dim conexion As SqlConnection
                conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
                conexion.Open()

                Dim cadena As String = "UPDATE clientes SET password='" & txtPassword.Text & "', nombre_completo='" & txtNombreCompleto.Text & "', email='" & txtCorreo.Text & "', telefono= '" & txtTelefono.Text & "', direccion= '" & txtDireccion.Text & "', nacionalidad = '" & txtNacionalidad.Text & "' WHERE identidad_cliente = '" & txtIdentidad.Text & "'  "

                Dim comando As SqlCommand
                comando = New SqlCommand(cadena, conexion)
                comando.ExecuteNonQuery()


                Response.Write("<script>alert('Cambios guardados correctamente');</script>")
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
        Dim cadena3 As String = "SELECT * FROM clientes WHERE identidad_cliente = '" & id & "' "

        comando3 = New SqlCommand(cadena3, conexion)
        Rs = comando3.ExecuteReader()

        Rs.Read()
        txtIdentidad.Text = Rs(0)
        txtNombreCompleto.Text = Rs(2)
        txtPassword.Text = Rs(1)
        txtCorreo.Text = Rs(3)
        txtTelefono.Text = Rs(4)
        txtDireccion.Text = Rs(5)
        txtNacionalidad.Text = Rs(6)
    End Sub

End Class