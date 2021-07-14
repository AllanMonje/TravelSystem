<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="RegistroClientes.aspx.vb" Inherits="agenciaViajes.RegistroClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!DOCTYPE html>
<html>

<head>
<title>Registro Clientes</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Master  Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../css/style1.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Cormorant+SC:300,400,500,600,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body>
	<div class="padding-all" align="center">
		<div class="header">
			<h1>Registro de Clientes</h1>
		</div>
        <div class="clear"> 
		<div class="design-w3l">
			<div class="mail-form-agile">
                <form action="#" method="post">
                 <asp:Label ID="lblIdentidad" runat="server" Text="Identidad " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtIdentidad" runat="server" MaxLength="13" TabIndex="1"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lblNombreCompleto" runat="server" Text="Nombre Completo" ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtNombreCompleto" runat="server" MaxLength="60" TabIndex="2" ></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lblPassword" runat="server" Text="Contraseña " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtPassword" runat="server" MaxLength="8" TextMode="Password" TabIndex="3"></asp:TextBox>
                 <br />
                 <br />
                
                 <asp:Label ID="lblCorreo" runat="server" Text="Correo " ForeColor="White"></asp:Label>
                 <br />
                    <asp:TextBox ID="txtCorreo" runat="server" MaxLength="60" TabIndex="4"></asp:TextBox>
                 <br />
                    <br />
                 <asp:Label ID="lblTelefono" runat="server" Text="Telefono " ForeColor="White"></asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server" MaxLength="20" TabIndex="5"></asp:TextBox>
                 <br />
                    <br />
                 <asp:Label ID="lblDireccion" runat="server" Text="Dirección" ForeColor="White"></asp:Label>
                 <br />
                    <asp:TextBox ID="txtDireccion" runat="server" MaxLength="150" TabIndex="6"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lblNacionalidad" runat="server" Text="Nacionalidad " ForeColor="White"></asp:Label>
                 <br />
                    <asp:TextBox ID="txtNacionalidad" runat="server" MaxLength="45" TabIndex="7"></asp:TextBox>
                 <br />
                    <br />
                    <h3>Informacion de Tarjeta</h3>
                 <asp:Label ID="lblTarjeta" runat="server" Text="Numero de tarjeta " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtTarjeta" runat="server" MaxLength="20" TabIndex="8"></asp:TextBox>
			     <br />
                 <br />
                 <asp:Label ID="Label1" runat="server" Text="Fecha de Vencimiento" ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtVencimiento" runat="server" MaxLength="7" PlaceHolder="YY-MM-D" TabIndex="9"></asp:TextBox>
			     <br />
                 <br />
                 <asp:Label ID="Label2" runat="server" Text="Codigo de Seguridad " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtCodigo" runat="server" MaxLength="3" TabIndex="10"></asp:TextBox>
			     <br />
                 <br />
				 &nbsp;<asp:Button ID="Button1" runat="server" Text="Registrar" />
                 <br />
				 &nbsp;<asp:Button ID="Button2" runat="server" Text="Iniciar Sesion" />
                 
                    </form>
			  </div>
         </div>
		</div>
	</div>
</body>
</html>
</asp:Content>
