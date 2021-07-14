<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="RegistroAdmin.aspx.vb" Inherits="agenciaViajes.RegistroAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!DOCTYPE html>
<html>

<head>
<title>Registro de Administrador</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>

</head>

<body>
	<div class="padding-all" align="center">
		<div class="header">
			<h1>Registro de Administrador</h1>
		</div>
        <div class="clear"> 
		<div class="design-w3l">
			<div class="mail-form-agile">
                <form action="#" method="post">
                 <asp:Label ID="lblNombreCompleto" runat="server" Text="Nombre Completo"></asp:Label>
                 <br />
                 <asp:TextBox ID="txtNombreCompleto" runat="server" MaxLength="60" TabIndex="1" ></asp:TextBox>
                 <br />
                    <br />
                 <asp:Label ID="lblCorreo" runat="server" Text="Correo "></asp:Label>
                 <br />
                    <asp:TextBox ID="txtCorreo" runat="server" MaxLength="60" TabIndex="2"></asp:TextBox>
                 <br />
                    <br />
                    <asp:Label ID="lblUsuario" runat="server" Text="Usuario "></asp:Label>
                 <br />
                    <asp:TextBox ID="txtUsuario" runat="server" MaxLength="20" TabIndex="3"></asp:TextBox>
                 <br />
                    <br />
                 <asp:Label ID="lblPassword" runat="server" Text="Contraseña "></asp:Label>
			     <br />
                 <asp:TextBox ID="txtPassword" runat="server" MaxLength="8" TextMode="Password" TabIndex="4"></asp:TextBox>
                 <br />
                    <br />
				 &nbsp;<asp:Button ID="Button1" runat="server" Text="Registrar" />
                 <br />
                 <br />
			    <asp:Button ID="Button2" runat="server" Text="Iniciar Sesion" />
                    
                </form>
			  </div>
         </div>
		</div>
	</div>
</body>
</html>
</asp:Content>
