Imports System.Data
Imports System.Data.SqlClient
Imports Microsoft.VisualBasic

Public Class Conexiones

    Dim CS As String = "Data Source=localhost; Initial Catalog=baseTravel; Integrated Security=True"

    Public Function Consultas(ByVal Comando As String) As DataSet
        Dim Dsa As New DataSet
        Dim SqlConexion As New SqlConnection(CS)
        Dim DA As New SqlDataAdapter(Comando, CS)

        DA.Fill(Dsa)

        Consultas = Dsa

        Dsa.Dispose()
        SqlConexion.Dispose()
        DA.Dispose()

    End Function

    Public Function Max(ByVal Comando As String) As Integer

        Dim Dsa As New DataSet
        Dsa = Consultas(Comando)

        Dim Codigo As Integer

        If DBNull.Value.Equals(Dsa.Tables(0).Rows(0).Item(0)) Then

            Codigo = 1
        Else

            Codigo = Dsa.Tables(0).Rows(0).Item(0) + 1

        End If

        Return Codigo
    End Function
End Class

