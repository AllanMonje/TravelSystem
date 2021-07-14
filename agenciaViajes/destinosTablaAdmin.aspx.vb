Imports System.Data.SqlClient

Public Class destinosTablaAdmin
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
            Dim sqlDa As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM destinos", sqlCon)
            sqlDa.Fill(dtbl)
        End Using
        If dtbl.Rows.Count > 0 Then
            gvDestinos.DataSource = dtbl
            gvDestinos.DataBind()
        Else
            dtbl.Rows.Add(dtbl.NewRow())
            gvDestinos.DataSource = dtbl
            gvDestinos.DataBind()
            gvDestinos.Rows(0).Cells.Clear()
            gvDestinos.Rows(0).Cells.Add(New TableCell())
            gvDestinos.Rows(0).Cells(0).ColumnSpan = dtbl.Columns.Count
            gvDestinos.Rows(0).Cells(0).Text = "No hay registros a mostrar"
            gvDestinos.Rows(0).Cells(0).HorizontalAlign = HorizontalAlign.Center
        End If
    End Sub

    Protected Sub gvDestinos_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Try

            If e.CommandName.Equals("AddNew") Then

                Using sqlCon As SqlConnection = New SqlConnection(connectionString)

                    Dim query As String = "INSERT INTO destinos (nombre_destino,ciudad,pais,direccion,activo) VALUES (@nombre_destino,@ciudad,@pais,@direccion,@activo)"
                    sqlCon.Open()
                    Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                    sqlCmd.Parameters.AddWithValue("@nombre_destino", (TryCast(gvDestinos.FooterRow.FindControl("txtnombre_destinoFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@ciudad", (TryCast(gvDestinos.FooterRow.FindControl("txtciudadFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@pais", (TryCast(gvDestinos.FooterRow.FindControl("txtpaisFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@direccion", (TryCast(gvDestinos.FooterRow.FindControl("txtdireccionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvDestinos.FooterRow.FindControl("txtactivoFooter"), TextBox)).Text.Trim())
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

    Protected Sub gvDestinos_RowEditing(sender As Object, e As GridViewEditEventArgs)
        gvDestinos.EditIndex = e.NewEditIndex
        PopulateGridview()
    End Sub

    Protected Sub gvDestinos_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        gvDestinos.EditIndex = -1
        PopulateGridview()
    End Sub

    Protected Sub gvDestinos_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "UPDATE destinos SET nombre_destino=@nombre_destino,ciudad=@ciudad,pais=@pais,direccion=@direccion,activo=@activo WHERE id_destino = @id_destino"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)

                sqlCmd.Parameters.AddWithValue("@nombre_destino", (TryCast(gvDestinos.Rows(e.RowIndex).FindControl("txtnombre_destino"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@ciudad", (TryCast(gvDestinos.Rows(e.RowIndex).FindControl("txtciudad"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@pais", (TryCast(gvDestinos.Rows(e.RowIndex).FindControl("txtpais"), TextBox)).Text.Trim())

                sqlCmd.Parameters.AddWithValue("@direccion", (TryCast(gvDestinos.Rows(e.RowIndex).FindControl("txtdireccion"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvDestinos.Rows(e.RowIndex).FindControl("txtactivo"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@id_destino", Convert.ToInt32(gvDestinos.DataKeys(e.RowIndex).Value.ToString()))
                sqlCmd.ExecuteNonQuery()
                gvDestinos.EditIndex = -1
                PopulateGridview()
                lblSuccessMessage.Text = "Actualizado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub

    Protected Sub gvDestinos_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "DELETE FROM  destinos WHERE id_destino = @id_destino"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)
                sqlCmd.Parameters.AddWithValue("@id_destino", Convert.ToInt32(gvDestinos.DataKeys(e.RowIndex).Value.ToString()))
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