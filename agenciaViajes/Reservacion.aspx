<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="Reservacion.aspx.vb" Inherits="agenciaViajes.Reservacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <form action="/" method="post">
            <br />
            <br />
            <br />
            <h1>Reservaciones</h1>
            <br />
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Identidad cliente: " ForeColor="Black"></asp:Label>

            <asp:Label ID="lblIdentidad" runat="server" Width="183px"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Numero de tarjeta: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="txtTarjeta" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Destino: " ForeColor="Black"></asp:Label>

            <asp:DropDownList ID="DropDownList2" runat="server">
              
            </asp:DropDownList>
            <br />
            <br />

            <asp:Label ID="Label3" runat="server" Text="Estado de reservacion: " ForeColor="Black"></asp:Label>
        
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">Guardada</asp:ListItem>
                <asp:ListItem Value="2">Cancelada</asp:ListItem>
                <asp:ListItem Value="3">Reprogramada</asp:ListItem>
            </asp:DropDownList>
        
            <br />

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Guardar" />

        </form>
    </div>
</asp:Content>
