Imports System.Data.SqlClient

Public Class Reservacion
    Inherits System.Web.UI.Page
    Dim cs As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True"
    Dim Clase As New Conexiones
    Dim dsa As New DataSet
    Dim id As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        RellenarDropDownList()
        If Session("usuario") IsNot Nothing Then

            id = Session("usuario")
            lblIdentidad.Text = id
        Else
            Server.Transfer("~/Default.aspx")
        End If

    End Sub




    Private Sub RellenarDropDownList()
        Dim con As New SqlConnection(cs)
        Dim cmd As New SqlCommand(“Select * from destinos”, con)
        Dim da As New SqlDataAdapter(cmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        DropDownList2.DataTextField = ds.Tables(0).Columns(“nombre_destino”).ToString()
        DropDownList2.DataValueField = ds.Tables(0).Columns(“id_destino”).ToString()
        DropDownList2.DataSource = ds.Tables(0)
        DropDownList2.DataBind()
    End Sub

    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            If Session("usuario") IsNot Nothing Then


                Dim conexion As SqlConnection
                conexion = New SqlConnection("Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True;")
                conexion.Open()
                Dim tarjeta As String


                tarjeta = txtTarjeta.Text

                Dim cadena As String = "INSERT INTO reservacion VALUES( '" & id & "','" & tarjeta & "' , '" & DropDownList2.SelectedValue & "', 0, '" & DropDownList1.SelectedValue & "')"

                Dim comando As SqlCommand
                comando = New SqlCommand(cadena, conexion)
                comando.ExecuteNonQuery()


                Response.Write("<script>alert('Reservacion generada correctamente');</script>")
                conexion.Close()

                Server.Transfer("~/ReservarVuelos.aspx")
            Else
                Server.Transfer("~/Default.aspx")

            End If
        Catch ex As Exception
            Response.Write("<script>alert('" & ex.Message.ToString & "');</script>")
        End Try
    End Sub
End Class