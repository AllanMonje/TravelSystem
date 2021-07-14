<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="LoginClientes.aspx.vb" Inherits="agenciaViajes.LoginClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>
<html>

<head>
<title> Inicio de Sesión Clientes</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<div class="padding-all">
		<div class="header">
			<h1>Inicio de Sesión de Clientes</h1>
		</div>
        <div class="clear"> 
		<div class="design-w3l">
			<div class="mail-form-agile">
                 <asp:Label ID="lblIdentidad" runat="server" Text="Identidad " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtIdentidad" runat="server" MaxLength="13" TabIndex="1"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lblPassword" runat="server" Text="Contraseña " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtPassword" runat="server" MaxLength="8" TextMode="Password" TabIndex="2"></asp:TextBox>
			     <br />
                 <br />
				 <asp:Button ID="Button1" runat="server" Text="Login" /> 
                 <br />
                 <asp:LinkButton ID="LinkButton1" runat="server">Registro</asp:LinkButton>
			    
			  </div>
         </div>
		</div>
	</div>
</body>
</html>


</asp:Content>
