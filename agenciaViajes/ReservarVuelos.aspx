<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="ReservarVuelos.aspx.vb" Inherits="agenciaViajes.ReservarVuelos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <form action="/" method="post">
            <br />
            <br />
            <br />
            <h1>Reserva vuelos</h1>
            <br />
            <h2>Haz la compra de los boletos necesarios!</h2>
            <br />
            <br />
             <asp:Label ID="lblCodigo" runat="server" Text="Codigo Reservacion: " ForeColor="Black"></asp:Label>
            <asp:Label ID="lblReservacion" runat="server" Text="" ForeColor="Black"></asp:Label>

            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Nombre pasajero: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="txtNombre" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Identidad pasajero: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="txtIdentidadPasajero" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Nivel de boleto: " ForeColor="Black"></asp:Label>

            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="1">Clase economica</asp:ListItem>
                <asp:ListItem Value="2">Clase ejecutiva</asp:ListItem>
                <asp:ListItem Value="3">Primera clase</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br />
              <asp:Label ID="Label5" runat="server" Text="Identidad cliente: " ForeColor="Black"></asp:Label>

            <asp:Label ID="lblIdentidad" runat="server" Width="183px"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label6" runat="server" Text="Numero de tarjeta: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="txtTarjeta" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label3" runat="server" Text="Punto de partida: " ForeColor="Black"></asp:Label>
        
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">Aeropuerto Toncontin, Tegucigalpa</asp:ListItem>
                <asp:ListItem Value="2">Aeropuerto Ramon Villeda Morales, San Pedro Sula</asp:ListItem>
                <asp:ListItem Value="3">Aeropuerto Palmerola, Comayagua</asp:ListItem>
            </asp:DropDownList>
        
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Punto de destino: " ForeColor="Black"></asp:Label>
        
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="1">Aeropuerto X</asp:ListItem>
                <asp:ListItem Value="2">Aeropuerto Y</asp:ListItem>
                <asp:ListItem Value="3">Aeropuerto Z</asp:ListItem>
            </asp:DropDownList>
        
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Fecha partida: " ForeColor="Black"></asp:Label>

            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />

            <asp:Label ID="Label9" runat="server" Text="Fecha regreso: " ForeColor="Black"></asp:Label>

            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
             <asp:Label ID="LabelMonto" runat="server" Text="Monto " ForeColor="Black"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>

            <br />
            <asp:Button ID="Button1" runat="server" Text="Comprar otro boleto" />
            <asp:Button ID="Button2" runat="server" Text="Comprar y terminar" />

        </form>
    </div>
</asp:Content>
