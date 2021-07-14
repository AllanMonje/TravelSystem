Imports System.Data.SqlClient

Public Class ReservarHotel
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

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Try

            If Session("usuario") IsNot Nothing Then


                Dim conexion As SqlConnection
                conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
                conexion.Open()


                Dim precio, precioreserva As Integer

                If DropDownList2.SelectedValue = 1 Then
                    precio = 200
                End If

                If DropDownList2.SelectedValue = 2 Then
                    precio = 400
                End If

                If DropDownList2.SelectedValue = 3 Then
                    precio = 600
                End If

                If DropDownList2.SelectedValue = 4 Then
                    precio = 800
                End If

                precioreserva = Val(TextMonto.Text) + precio

                Dim cadena As String = "INSERT INTO reserva_hotel VALUES( '" & id2 & "','" & TextBox2.Text & "' , '" & DropDownList1.SelectedValue & "','" & DropDownList2.SelectedValue & "', '" & precio & "', '" & TextBox3.Text & "', '" & TextBox4.Text & "', '" & TextBox6.Text & "', '" & lblReservacion.Text & "', 1)"
                Dim comando As SqlCommand


                comando = New SqlCommand(cadena, conexion)
                comando.ExecuteNonQuery()

                Dim cadena2 As String = "UPDATE reservacion SET precio_total = '" & precioreserva & "' WHERE id_reservacion = '" & lblReservacion.Text & "' "
                Dim comando2 As SqlCommand
                comando2 = New SqlCommand(cadena2, conexion)
                comando2.ExecuteNonQuery()


                Response.Write("<script>alert('Reservacion generada correctamente');</script>")
                conexion.Close()

                Server.Transfer("~/ReservacionVer.aspx")
            Else

                Server.Transfer("~/Default.aspx")
            End If
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            If Session("usuario") IsNot Nothing Then


                Dim conexion As SqlConnection
                conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
                conexion.Open()


                Dim precio, precioreserva As Integer

                If DropDownList2.SelectedValue = 1 Then
                    precio = 200
                End If

                If DropDownList2.SelectedValue = 2 Then
                    precio = 400
                End If

                If DropDownList2.SelectedValue = 3 Then
                    precio = 600
                End If

                If DropDownList2.SelectedValue = 4 Then
                    precio = 800
                End If

                precioreserva = Val(TextMonto.Text) + precio

                Dim cadena As String = "INSERT INTO reserva_hotel VALUES( '" & id2 & "','" & TextBox2.Text & "' , '" & DropDownList1.SelectedValue & "','" & DropDownList2.SelectedValue & "', '" & precio & "', '" & TextBox3.Text & "', '" & TextBox4.Text & "', '" & TextBox6.Text & "', '" & lblReservacion.Text & "', 1)"
                Dim comando As SqlCommand


                comando = New SqlCommand(cadena, conexion)
                comando.ExecuteNonQuery()

                Dim cadena2 As String = "UPDATE reservacion SET precio_total = '" & precioreserva & "' WHERE id_reservacion = '" & lblReservacion.Text & "' "
                Dim comando2 As SqlCommand
                comando2 = New SqlCommand(cadena2, conexion)
                comando2.ExecuteNonQuery()


                Response.Write("<script>alert('Reservacion generada correctamente');</script>")
                conexion.Close()

                limpiar()
                traerPrecio()
            Else

                Server.Transfer("~/Default.aspx")
            End If
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub

    Private Sub limpiar()
        TextBox2.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox6.Text = ""

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
        Dim cadena3 As String = "SELECT precio_total FROM reservacion WHERE id_reservacion = '" & lblReservacion.Text & "' "

        comando3 = New SqlCommand(cadena3, conexion)
        Rs = comando3.ExecuteReader()

        Rs.Read()
        TextMonto.Text = Rs(0)
    End Sub
End Class