<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="LoginAdmin.aspx.vb" Inherits="agenciaViajes.LoginAdmin" %>

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
    <form id="form1" runat="server">
        <div>
            <div class="padding-all">
		<div class="header">
			<h1>Inicio de Sesión de Administrador</h1>
		</div>
        <div class="clear"> 
		<div class="design-w3l">
			<div class="mail-form-agile">
                 <asp:Label ID="lblUsuario" runat="server" Text="Usuario " ForeColor="White"></asp:Label>
                 <br />
                 <asp:TextBox ID="txtUsuario" runat="server" MaxLength="20" TabIndex="1" Width="171px"></asp:TextBox>
                 <br />
                <br />
                 <asp:Label ID="lblPassword" runat="server" Text="Contraseña " ForeColor="White"></asp:Label>
			     <br />
                 <asp:TextBox ID="txtPassword" runat="server" MaxLength="8" TextMode="Password" TabIndex="2" Width="171px"></asp:TextBox>
                 <br />
                <br />
				 <asp:Button ID="Button1" runat="server" Text="Login" />
&nbsp;<br />
                <br />
			  </div>
         </div>
		</div>
	</div>
        </div>
    </form>
</body>
</html>