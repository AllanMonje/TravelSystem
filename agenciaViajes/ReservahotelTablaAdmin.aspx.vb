Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration



Public Class ReservahotelTablaAdmin
    Inherits System.Web.UI.Page



    Private connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            PopulateGridview()
        End If

    End Sub
    Private Sub PopulateGridview()
        Dim dtbl As DataTable = New DataTable()
        Using sqlCon As SqlConnection = New SqlConnection(connectionString)
            sqlCon.Open()
            Dim sqlDa As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM reserva_hotel", sqlCon)
            sqlDa.Fill(dtbl)
        End Using
        If dtbl.Rows.Count > 0 Then
            gvReservahotel.DataSource = dtbl
            gvReservahotel.DataBind()
        Else
            dtbl.Rows.Add(dtbl.NewRow())
            gvReservahotel.DataSource = dtbl
            gvReservahotel.DataBind()
            gvReservahotel.Rows(0).Cells.Clear()
            gvReservahotel.Rows(0).Cells.Add(New TableCell())
            gvReservahotel.Rows(0).Cells(0).ColumnSpan = dtbl.Columns.Count
            gvReservahotel.Rows(0).Cells(0).Text = "No hay registros a mostrar"
            gvReservahotel.Rows(0).Cells(0).HorizontalAlign = HorizontalAlign.Center
        End If
    End Sub

    Protected Sub gvReservahotel_RowCommand(ByVal sender As Object, ByVal e As GridViewCommandEventArgs)
        Try

            If e.CommandName.Equals("AddNew") Then

                Using sqlCon As SqlConnection = New SqlConnection(connectionString)

                    Dim query As String = "INSERT INTO reserva_hotel (identidad_cliente,numero_tarjeta,nombre_hotel,tipo_habitacion,precio,dias_hospedaje,fecha_ingreso,fecha_salida,id_reservacion,activo) VALUES (@identidad_cliente,@numero_tarjeta,@nombre_hotel,@tipo_habitacion,@precio,@dias_hospedaje,@fecha_ingreso,@fecha_salida,@id_reservacion,@activo)"
                    sqlCon.Open()
                    Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                    sqlCmd.Parameters.AddWithValue("@identidad_cliente", (TryCast(gvReservahotel.FooterRow.FindControl("txtidentidad_clienteFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@numero_tarjeta", (TryCast(gvReservahotel.FooterRow.FindControl("txtnumero_tarjetaFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@nombre_hotel", (TryCast(gvReservahotel.FooterRow.FindControl("txtnombre_hotelFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@tipo_habitacion", (TryCast(gvReservahotel.FooterRow.FindControl("txttipohabitacionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@precio", (TryCast(gvReservahotel.FooterRow.FindControl("txtprecioFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@dias_hospedaje", (TryCast(gvReservahotel.FooterRow.FindControl("txtdias_hospedajeFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@fecha_ingreso", (TryCast(gvReservahotel.FooterRow.FindControl("txtfecha_ingresoFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@fecha_salida", (TryCast(gvReservahotel.FooterRow.FindControl("txtfecha_salidaFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@id_reservacion", (TryCast(gvReservahotel.FooterRow.FindControl("txtid_reservacionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvReservahotel.FooterRow.FindControl("txtactivoFooter"), TextBox)).Text.Trim())
                    sqlCmd.ExecuteNonQuery()
                    PopulateGridview()
                    lblSuccessMessage.Text = "Nuevo Registro Añadido"
                    lblErrorMessage.Text = ""
                End Using
            End If

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub

    Protected Sub gvReservahotel_RowEditing(ByVal sender As Object, ByVal e As GridViewEditEventArgs)
        gvReservahotel.EditIndex = e.NewEditIndex
        PopulateGridview()
    End Sub

    Protected Sub gvReservahotel_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        gvReservahotel.EditIndex = -1
        PopulateGridview()
    End Sub

    Protected Sub gvReservahotel_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "UPDATE reserva_hotel SET dias_hospedaje=@dias_hospedaje,fecha_ingreso=@fecha_ingreso,fecha_salida=@fecha_salida,activo=@activo WHERE id_reservahotel = @id_reservahotel"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)

                sqlCmd.Parameters.AddWithValue("@dias_hospedaje", (TryCast(gvReservahotel.Rows(e.RowIndex).FindControl("txtdias_hospedaje"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@fecha_ingreso", (TryCast(gvReservahotel.Rows(e.RowIndex).FindControl("txtfecha_ingreso"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@fecha_salida", (TryCast(gvReservahotel.Rows(e.RowIndex).FindControl("txtfecha_salida"), TextBox)).Text.Trim())

                sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvReservahotel.Rows(e.RowIndex).FindControl("txtactivo"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@id_reservahotel", Convert.ToInt32(gvReservahotel.DataKeys(e.RowIndex).Value.ToString()))
                sqlCmd.ExecuteNonQuery()
                gvReservahotel.EditIndex = -1
                PopulateGridview()
                lblSuccessMessage.Text = "Actualizado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub

    Protected Sub gvReservahotel_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "DELETE FROM  reserva_hotel WHERE id_reservahotel = @id_reservahotel"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)
                sqlCmd.Parameters.AddWithValue("@id_reservahotel", Convert.ToInt32(gvReservahotel.DataKeys(e.RowIndex).Value.ToString()))
                sqlCmd.ExecuteNonQuery()
                PopulateGridview()
                lblSuccessMessage.Text = "Eliminado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub
End Class
