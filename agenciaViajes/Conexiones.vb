Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic

Public Class Conexiones

    Dim cs As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=Travel;Integrated Security=True"
    Public Function Consultas(ByVal Comando As String) As DataSet
        Dim dsa As New DataSet
        Dim sqlCnn As New SqlConnection(cs)
        Dim da As New SqlDataAdapter(Comando, sqlCnn)

        da.Fill(dsa)
        Consultas = dsa

        dsa.Dispose()
        sqlCnn.Dispose()
        da.Dispose()
    End Function
    Public Function Max(ByVal Comando As String) As Integer

        Dim dsa As New DataSet
        dsa = Consultas(Comando)

        Dim codigo As Integer
        If DBNull.Value.Equals(dsa.Tables(0).Rows(0).Item(0)) Then
            codigo = 1
        Else
            codigo = dsa.Tables(0).Rows(0).Item(0) + 1
        End If

        Return codigo
    End Function

    Public Function Modificaciones(ByVal Comando As String) As Boolean
        Dim sqlCnn As New SqlConnection(cs)
        Dim sqlCm As New SqlCommand(Comando, sqlCnn)
        sqlCnn.Open()
        sqlCm.ExecuteNonQuery()
        sqlCnn.Dispose()
        sqlCm.Dispose()
        Modificaciones = True
    End Function

End Class

