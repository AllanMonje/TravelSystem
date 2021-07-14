<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="EditarClientes.aspx.vb" Inherits="agenciaViajes.EditarClientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <!DOCTYPE html>
<html>

<head>
<title>Editar usuario</title>
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
			<h1>Editar Usuario</h1>
		</div>
        <div class="clear"> 
		<div class="design-w3l">
			<div class="mail-form-agile">
                <form action="#" method="post">
                 <asp:Label ID="lblIdentidad" runat="server" Text="Identidad " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtIdentidad" runat="server" MaxLength="13" TabIndex="1" Enabled="False"></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lblNombreCompleto" runat="server" Text="Nombre Completo" ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtNombreCompleto" runat="server" MaxLength="60" TabIndex="2" ></asp:TextBox>
                 <br />
                 <br />
                 <asp:Label ID="lblPassword" runat="server" Text="Contraseña " ForeColor="White"></asp:Label>
                 <asp:TextBox ID="txtPassword" runat="server" MaxLength="8" TabIndex="3"></asp:TextBox>
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
				    <asp:Button ID="btnEditarClientes" runat="server" Text="Guardar cambios" />
&nbsp;<br />
                    </form>
			  </div>
         </div>
		</div>
	</div>
</body>
</html>
</asp:Content>
