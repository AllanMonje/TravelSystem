Public Class LogOut
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("usuario") = Nothing
        Server.Transfer("~/Default.aspx")
    End Sub

End Class