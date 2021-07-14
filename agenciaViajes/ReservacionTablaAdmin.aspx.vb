Imports System.Data.SqlClient



Public Class ReservacionTablaAdmin
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
            Dim sqlDa As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM reservacion", sqlCon)
            sqlDa.Fill(dtbl)
        End Using
        If dtbl.Rows.Count > 0 Then
            gvReservacionTablaAdmin.DataSource = dtbl
            gvReservacionTablaAdmin.DataBind()
        Else
            dtbl.Rows.Add(dtbl.NewRow())
            gvReservacionTablaAdmin.DataSource = dtbl
            gvReservacionTablaAdmin.DataBind()
            gvReservacionTablaAdmin.Rows(0).Cells.Clear()
            gvReservacionTablaAdmin.Rows(0).Cells.Add(New TableCell())
            gvReservacionTablaAdmin.Rows(0).Cells(0).ColumnSpan = dtbl.Columns.Count
            gvReservacionTablaAdmin.Rows(0).Cells(0).Text = "No hay registros a mostrar"
            gvReservacionTablaAdmin.Rows(0).Cells(0).HorizontalAlign = HorizontalAlign.Center
        End If
    End Sub

    Protected Sub gvReservacionTablaAdmin_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Try

            If e.CommandName.Equals("AddNew") Then

                Using sqlCon As SqlConnection = New SqlConnection(connectionString)

                    Dim query As String = "INSERT INTO reservacion (identidad_cliente,numero_tarjeta,id_destino,precio_total,estado_reservacion) VALUES (@identidad_cliente,@numero_tarjeta,@id_destino,@precio_total,@estado_reservacion)"
                    sqlCon.Open()
                    Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                    sqlCmd.Parameters.AddWithValue("@identidad_cliente", (TryCast(gvReservacionTablaAdmin.FooterRow.FindControl("txtidentidad_clienteFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@numero_tarjeta", (TryCast(gvReservacionTablaAdmin.FooterRow.FindControl("txtnumero_tarjetaFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@id_destino", (TryCast(gvReservacionTablaAdmin.FooterRow.FindControl("txtid_destinoFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@precio_total", (TryCast(gvReservacionTablaAdmin.FooterRow.FindControl("txtprecio_totalFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@estado_reservacion", (TryCast(gvReservacionTablaAdmin.FooterRow.FindControl("txtestado_reservacionFooter"), TextBox)).Text.Trim())
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

    Protected Sub gvReservacionTablaAdmin_RowEditing(sender As Object, e As GridViewEditEventArgs)
        gvReservacionTablaAdmin.EditIndex = e.NewEditIndex
        PopulateGridview()

    End Sub

    Protected Sub gvReservacionTablaAdmin_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        gvReservacionTablaAdmin.EditIndex = -1
        PopulateGridview()
    End Sub

    Protected Sub gvReservacionTablaAdmin_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "UPDATE reservacion SET identidad_cliente=@identidad_cliente,numero_tarjeta=@numero_tarjeta,id_destino=@id_destino,precio_total=@precio_total,estado_reservacion=@estado_reservacion WHERE id_reservacion = @id_reservacion"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)

                sqlCmd.Parameters.AddWithValue("@identidad_cliente", (TryCast(gvReservacionTablaAdmin.Rows(e.RowIndex).FindControl("txtidentidad_cliente"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@numero_tarjeta", (TryCast(gvReservacionTablaAdmin.Rows(e.RowIndex).FindControl("txtnumero_tarjeta"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@id_destino", (TryCast(gvReservacionTablaAdmin.Rows(e.RowIndex).FindControl("txtid_destino"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@precio_total", (TryCast(gvReservacionTablaAdmin.Rows(e.RowIndex).FindControl("txtprecio_total"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@estado_reservacion", (TryCast(gvReservacionTablaAdmin.Rows(e.RowIndex).FindControl("txtestado_reservacion"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@id_reservacion", Convert.ToInt32(gvReservacionTablaAdmin.DataKeys(e.RowIndex).Value.ToString()))
                sqlCmd.ExecuteNonQuery()
                gvReservacionTablaAdmin.EditIndex = -1
                PopulateGridview()
                lblSuccessMessage.Text = "Actualizado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub

    Protected Sub gvReservacionTablaAdmin_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "DELETE FROM  reservacion WHERE id_reservacion = @id_reservacion"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)
                sqlCmd.Parameters.AddWithValue("@id_reservacion", Convert.ToInt32(gvReservacionTablaAdmin.DataKeys(e.RowIndex).Value.ToString()))
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