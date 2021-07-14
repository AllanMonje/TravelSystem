Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration

Public Class ActividadesDestinoTablaAdmin
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
            Dim sqlDa As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM actividades_destino", sqlCon)
            sqlDa.Fill(dtbl)
        End Using
        If dtbl.Rows.Count > 0 Then
            gvActividadesDestino.DataSource = dtbl
            gvActividadesDestino.DataBind()
        Else
            dtbl.Rows.Add(dtbl.NewRow())
            gvActividadesDestino.DataSource = dtbl
            gvActividadesDestino.DataBind()
            gvActividadesDestino.Rows(0).Cells.Clear()
            gvActividadesDestino.Rows(0).Cells.Add(New TableCell())
            gvActividadesDestino.Rows(0).Cells(0).ColumnSpan = dtbl.Columns.Count
            gvActividadesDestino.Rows(0).Cells(0).Text = "No hay registros a mostrar"
            gvActividadesDestino.Rows(0).Cells(0).HorizontalAlign = HorizontalAlign.Center
        End If
    End Sub


    Protected Sub gvActividadesDestino_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Try

            If e.CommandName.Equals("AddNew") Then

                Using sqlCon As SqlConnection = New SqlConnection(connectionString)

                    Dim query As String = "INSERT INTO actividades_destino (id_destino,nombre,ubicacion,descripcion,activo) VALUES (@id_destino,@nombre,@ubicacion,@descripcion,@activo)"
                    sqlCon.Open()
                    Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                    sqlCmd.Parameters.AddWithValue("@id_destino", (TryCast(gvActividadesDestino.FooterRow.FindControl("txtid_destinoFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@nombre", (TryCast(gvActividadesDestino.FooterRow.FindControl("txtnombreFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@ubicacion", (TryCast(gvActividadesDestino.FooterRow.FindControl("txtubicacionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@descripcion", (TryCast(gvActividadesDestino.FooterRow.FindControl("txtdescripcionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvActividadesDestino.FooterRow.FindControl("txtactivoFooter"), TextBox)).Text.Trim())
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



    Protected Sub gvActividadesDestino_RowEditing(sender As Object, e As GridViewEditEventArgs)
        gvActividadesDestino.EditIndex = e.NewEditIndex
        PopulateGridview()
    End Sub

    Protected Sub gvActividadesDestino_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        gvActividadesDestino.EditIndex = -1
        PopulateGridview()
    End Sub

    Protected Sub gvActividadesDestino_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "UPDATE actividades_destino SET id_destino=@id_destino,nombre=@nombre,ubicacion=@ubicacion,descripcion=@descripcion,activo=@activo WHERE id_actividad = @id_actividad"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)

                sqlCmd.Parameters.AddWithValue("@id_destino", (TryCast(gvActividadesDestino.Rows(e.RowIndex).FindControl("txtid_destino"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@nombre", (TryCast(gvActividadesDestino.Rows(e.RowIndex).FindControl("txtnombre"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@ubicacion", (TryCast(gvActividadesDestino.Rows(e.RowIndex).FindControl("txtubicacion"), TextBox)).Text.Trim())

                sqlCmd.Parameters.AddWithValue("@descripcion", (TryCast(gvActividadesDestino.Rows(e.RowIndex).FindControl("txtdescripcion"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvActividadesDestino.Rows(e.RowIndex).FindControl("txtactivo"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@id_actividad", Convert.ToInt32(gvActividadesDestino.DataKeys(e.RowIndex).Value.ToString()))
                sqlCmd.ExecuteNonQuery()
                gvActividadesDestino.EditIndex = -1
                PopulateGridview()
                lblSuccessMessage.Text = "Actualizado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub

    Protected Sub gvActividadesDestino_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "DELETE FROM  actividades_destino WHERE id_actividad = @id_actividad"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)
                sqlCmd.Parameters.AddWithValue("@id_actividad", Convert.ToInt32(gvActividadesDestino.DataKeys(e.RowIndex).Value.ToString()))
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