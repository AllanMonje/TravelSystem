﻿Public Class LogOut1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("user") = Nothing
        Server.Transfer("~/LoginAdmin.aspx")
    End Sub

End Class