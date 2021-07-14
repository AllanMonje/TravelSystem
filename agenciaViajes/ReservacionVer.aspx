<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="ReservacionVer.aspx.vb" Inherits="agenciaViajes.ReservacionVer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <form action="/" method="post">
            <br />
            <br />
            <br />
            <h1>Reservacion Final</h1>
            <br />
            <br />
            <br />

            <asp:Label ID="Label6" runat="server" Text="Codigo Reservacion: " ForeColor="Black"></asp:Label>

            <asp:Label ID="lblReservacion" runat="server" Width="183px"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Identidad cliente: " ForeColor="Black"></asp:Label>

            <asp:Label ID="lblIdentidad" runat="server" Width="183px"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Numero de tarjeta: " ForeColor="Black"></asp:Label>

            <asp:Label ID="lblTarjeta" runat="server" Width="183px"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Destino: " ForeColor="Black"></asp:Label>
            <asp:Label ID="lblDestino" runat="server" Text="" ForeColor="Black"></asp:Label>
>
            <br />
            <br />

            <asp:Label ID="Label3" runat="server" Text="Estado de reservacion: " ForeColor="Black"></asp:Label>
            <asp:Label ID="lblEstado" runat="server" Text="" ForeColor="Black"></asp:Label>
        
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Monto total" ForeColor="Black"></asp:Label>
            <asp:Label ID="lblPrecio" runat="server" Text="" ForeColor="Black"></asp:Label>
        
            <br />

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Terminar" />

        </form>
    </div>
</asp:Content>
