<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterClientes.Master" CodeBehind="ReservarHotel.aspx.vb" Inherits="agenciaViajes.ReservarHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center">
        <form action="/" method="post">
            <br />
            <br />
            <br />
            <h1>Reserva tu Hotel</h1>
            <br />
            <h3>Haz la compra de las habitaciones necesarias!</h3>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Reservacion: " ForeColor="Black"></asp:Label>
            <asp:Label ID="lblReservacion" runat="server" Text="" ForeColor="Black"></asp:Label>
             
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" Text="Identidad cliente: " ForeColor="Black"></asp:Label>

            <asp:Label ID="lblIdentidad" runat="server" Width="183px"></asp:Label>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="Numero de tarjeta: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />

             <asp:Label ID="Label8" runat="server" Text="Hotel: " ForeColor="Black"></asp:Label>

            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="1">Hotel 1</asp:ListItem>
                <asp:ListItem Value="2">Hotel 2</asp:ListItem>
                <asp:ListItem Value="3">Hotel 3</asp:ListItem>
                <asp:ListItem Value="4">Hotel 4</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br />

            <asp:Label ID="Label4" runat="server" Text="Tipo de habitacion: " ForeColor="Black"></asp:Label>

            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem Value="1">Habitacion individual</asp:ListItem>
                <asp:ListItem Value="2">habitacion doble</asp:ListItem>
                <asp:ListItem Value="3">Habitacion triple</asp:ListItem>
                <asp:ListItem Value="4">Suit</asp:ListItem>
            </asp:DropDownList>
            
            <br />
            <br />
              <asp:Label ID="Label5" runat="server" Text="Dias de hospedaje: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server" Width="183px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label6" runat="server" Text="Fecha de ingreso: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="TextBox4" runat="server" PlaceHolder="YYYY-MM-DD" Width="183px"></asp:TextBox>
            <br />
            <br />

            
            <asp:Label ID="Label9" runat="server" Text="Fecha salida: " ForeColor="Black"></asp:Label>

            <asp:TextBox ID="TextBox6" runat="server" PlaceHolder="YYYY-MM-DD" Width="183px"></asp:TextBox>
            <br />
            <br />

            <asp:Label ID="Label7" runat="server" Text="Estado: " ForeColor="Black"></asp:Label>
        
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem Value="1">Guardado</asp:ListItem>
                <asp:ListItem Value="0">Cancelado</asp:ListItem>
            </asp:DropDownList>
        
            <br />
            <br />
      
             <asp:Label ID="LabelMonto" runat="server" Text="Monto: " ForeColor="Black"></asp:Label>
            <asp:TextBox ID="TextMonto" runat="server" Enabled="False"></asp:TextBox>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Reservar otra habitacion" />
            <asp:Button ID="Button2" runat="server" Text="Reservar y terminar" />

        </form>
    </div>
</asp:Content>
