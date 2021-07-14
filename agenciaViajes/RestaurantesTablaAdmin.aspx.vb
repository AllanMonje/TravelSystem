Imports System.Data.SqlClient

Public Class RestaurantesTablaAdmin
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
            Dim sqlDa As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM restaurantes", sqlCon)
            sqlDa.Fill(dtbl)
        End Using
        If dtbl.Rows.Count > 0 Then
            gvRestaurantes.DataSource = dtbl
            gvRestaurantes.DataBind()
        Else
            dtbl.Rows.Add(dtbl.NewRow())
            gvRestaurantes.DataSource = dtbl
            gvRestaurantes.DataBind()
            gvRestaurantes.Rows(0).Cells.Clear()
            gvRestaurantes.Rows(0).Cells.Add(New TableCell())
            gvRestaurantes.Rows(0).Cells(0).ColumnSpan = dtbl.Columns.Count
            gvRestaurantes.Rows(0).Cells(0).Text = "No hay registros a mostrar"
            gvRestaurantes.Rows(0).Cells(0).HorizontalAlign = HorizontalAlign.Center
        End If
    End Sub

    Protected Sub gvRestaurantes_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Try

            If e.CommandName.Equals("AddNew") Then

                Using sqlCon As SqlConnection = New SqlConnection(connectionString)

                    Dim query As String = "INSERT INTO restaurantes (id_destino,nombre,ubicacion,activo) VALUES (@id_destino,@nombre,@ubicacion,@activo)"
                    sqlCon.Open()
                    Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                    sqlCmd.Parameters.AddWithValue("id_destino", (TryCast(gvRestaurantes.FooterRow.FindControl("txtid_destinoFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@nombre", (TryCast(gvRestaurantes.FooterRow.FindControl("txtnombreFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@ubicacion", (TryCast(gvRestaurantes.FooterRow.FindControl("txtubicacionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvRestaurantes.FooterRow.FindControl("txtactivoFooter"), TextBox)).Text.Trim())
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

    Protected Sub gvRestaurantes_RowEditing(sender As Object, e As GridViewEditEventArgs)
        gvRestaurantes.EditIndex = e.NewEditIndex
        PopulateGridview()
    End Sub

    Protected Sub gvRestaurantes_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        gvRestaurantes.EditIndex = -1
        PopulateGridview()
    End Sub


    Protected Sub gvRestaurantes_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "UPDATE restaurantes SET id_destino=@id_destino,nombre=@nombre,ubicacion=@ubicacion,activo=@activo WHERE id_restaurante = @id_restaurante"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)

                sqlCmd.Parameters.AddWithValue("@id_destino", (TryCast(gvRestaurantes.Rows(e.RowIndex).FindControl("txtid_destino"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@nombre", (TryCast(gvRestaurantes.Rows(e.RowIndex).FindControl("txtnombre"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@ubicacion", (TryCast(gvRestaurantes.Rows(e.RowIndex).FindControl("txtubicacion"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvRestaurantes.Rows(e.RowIndex).FindControl("txtactivo"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@id_restaurante", Convert.ToInt32(gvRestaurantes.DataKeys(e.RowIndex).Value.ToString()))
                sqlCmd.ExecuteNonQuery()
                gvRestaurantes.EditIndex = -1
                PopulateGridview()
                lblSuccessMessage.Text = "Actualizado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub



    Protected Sub gvRestaurantes_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "DELETE FROM  restaurantes WHERE id_restaurante = @id_restaurante"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)
                sqlCmd.Parameters.AddWithValue("@id_restaurante", Convert.ToInt32(gvRestaurantes.DataKeys(e.RowIndex).Value.ToString()))
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

    Protected Sub gvRestaurantes_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
End Class