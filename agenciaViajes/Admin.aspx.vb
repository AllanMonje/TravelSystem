Public Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Session("user") = "allmonje" And Session("pass") = "123456" Then
            Server.Transfer("~/RegistroAdmin.aspx")
        Else
            Response.Write("No tiene permisos")
            Server.Transfer("~/Admin.aspx")

        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Server.Transfer("~/InicioAdmin.aspx")
    End Sub
End Class