Imports System.Data.SqlClient

Public Class ClientesTablaAdmin
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
            Dim sqlDa As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM clientes", sqlCon)
            sqlDa.Fill(dtbl)
        End Using
        If dtbl.Rows.Count > 0 Then
            gvClientes.DataSource = dtbl
            gvClientes.DataBind()
        Else
            dtbl.Rows.Add(dtbl.NewRow())
            gvClientes.DataSource = dtbl
            gvClientes.DataBind()
            gvClientes.Rows(0).Cells.Clear()
            gvClientes.Rows(0).Cells.Add(New TableCell())
            gvClientes.Rows(0).Cells(0).ColumnSpan = dtbl.Columns.Count
            gvClientes.Rows(0).Cells(0).Text = "No hay registros a mostrar"
            gvClientes.Rows(0).Cells(0).HorizontalAlign = HorizontalAlign.Center
        End If
    End Sub

    Protected Sub gvClientes_RowCommand(sender As Object, e As GridViewCommandEventArgs)
        Try

            If e.CommandName.Equals("AddNew") Then

                Using sqlCon As SqlConnection = New SqlConnection(connectionString)

                    Dim query As String = "INSERT INTO clientes (identidad_cliente,password, nombre_completo, email,telefono,direccion, nacionalidad, activo) VALUES (@identidad_cliente, @password, @nombre_completo, @email, @telefono, @direccion, @nacionalidad, @activo)"
                    sqlCon.Open()
                    Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                    sqlCmd.Parameters.AddWithValue("@identidad_cliente", (TryCast(gvClientes.FooterRow.FindControl("txtid_clienteFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@password", (TryCast(gvClientes.FooterRow.FindControl("txtpasswordFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@nombre_completo", (TryCast(gvClientes.FooterRow.FindControl("txtnombreFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@email", (TryCast(gvClientes.FooterRow.FindControl("txtemailFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@telefono", (TryCast(gvClientes.FooterRow.FindControl("txttelefonoFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@direccion", (TryCast(gvClientes.FooterRow.FindControl("txtdireccionFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@nacionalidad", (TryCast(gvClientes.FooterRow.FindControl("txtnacionalidadFooter"), TextBox)).Text.Trim())
                    sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvClientes.FooterRow.FindControl("txtactivoFooter"), TextBox)).Text.Trim())
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

    Protected Sub gvClientes_RowEditing(sender As Object, e As GridViewEditEventArgs)
        gvClientes.EditIndex = e.NewEditIndex
        PopulateGridview()
    End Sub

    Protected Sub gvClientes_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs)
        gvClientes.EditIndex = -1
        PopulateGridview()
    End Sub


    Protected Sub gvClientes_RowUpdating(sender As Object, e As GridViewUpdateEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "UPDATE clientes SET identidad_cliente=@identidad_cliente, password = @password, nombre_completo=@nombre_completo, email= @email, telefono=@telefono, direccion=@direccion, nacionalidad = @nacionalidad,activo=@activo WHERE identidad_cliente = @identidad_cliente"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)


                sqlCmd.Parameters.AddWithValue("@identidad_cliente", (TryCast(gvClientes.FooterRow.FindControl("txtid_clienteFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@password", (TryCast(gvClientes.FooterRow.FindControl("txtpasswordFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@nombre_completo", (TryCast(gvClientes.FooterRow.FindControl("txtnombreFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@email", (TryCast(gvClientes.FooterRow.FindControl("txtemailFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@telefono", (TryCast(gvClientes.FooterRow.FindControl("txttelefonoFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@direccion", (TryCast(gvClientes.FooterRow.FindControl("txtdireccionFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@nacionalidad", (TryCast(gvClientes.FooterRow.FindControl("txtnacionalidadFooter"), TextBox)).Text.Trim())
                sqlCmd.Parameters.AddWithValue("@activo", (TryCast(gvClientes.FooterRow.FindControl("txtactivoFooter"), TextBox)).Text.Trim())
                sqlCmd.ExecuteNonQuery()
                gvClientes.EditIndex = -1
                PopulateGridview()
                lblSuccessMessage.Text = "Actualizado Exitosamente"
                lblErrorMessage.Text = ""
            End Using

        Catch ex As Exception
            lblSuccessMessage.Text = ""
            lblErrorMessage.Text = ex.Message
        End Try
    End Sub



    Protected Sub gvClientes_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        Try

            Using sqlCon As SqlConnection = New SqlConnection(connectionString)
                sqlCon.Open()
                Dim query As String = "DELETE FROM  clientes WHERE identidad_cliente = @identidad_clientes"
                Dim sqlCmd As SqlCommand = New SqlCommand(query, sqlCon)
                sqlCmd.Parameters.AddWithValue("@identidad_cleintes", Convert.ToInt32(gvClientes.DataKeys(e.RowIndex).Value.ToString()))
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