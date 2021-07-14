Imports System.Data.SqlClient

Public Class ReservacionVer
    Inherits System.Web.UI.Page
    Dim dsa As New DataSet
    Dim id2 As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("usuario") IsNot Nothing Then

            id2 = Session("usuario")
            lblIdentidad.Text = id2
            traerReservacionActual()
            traerPrecio()
        Else
            Server.Transfer("~/Default.aspx")
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Server.Transfer("~/Default.aspx")
    End Sub

    Private Sub traerReservacionActual()
        Dim conexion As SqlConnection
        conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
        conexion.Open()
        Dim comando3 As SqlCommand
        Dim Rs As SqlDataReader
        Dim cadena3 As String = "SELECT MAX(id_reservacion) FROM reservacion WHERE identidad_cliente = '" & id2 & "' "

        comando3 = New SqlCommand(cadena3, conexion)
        Rs = comando3.ExecuteReader()

        Rs.Read()
        lblReservacion.Text = Rs(0)
    End Sub

    Private Sub traerPrecio()
        Dim conexion As SqlConnection
        conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
        conexion.Open()
        Dim comando3 As SqlCommand
        Dim Rs As SqlDataReader
        Dim cadena3 As String = "SELECT identidad_cliente, numero_tarjeta, id_destino, precio_total, estado_reservacion FROM reservacion WHERE id_reservacion = '" & lblReservacion.Text & "' "

        comando3 = New SqlCommand(cadena3, conexion)
        Rs = comando3.ExecuteReader()

        Rs.Read()
        lblIdentidad.Text = Rs(0)
        lblTarjeta.Text = Rs(1)
        lblDestino.Text = Rs(2)
        lblPrecio.Text = Rs(3)
        lblEstado.Text = Rs(4)
    End Sub

End Class