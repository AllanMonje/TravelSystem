<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="ReservacionTablaAdmin.aspx.vb" Inherits="agenciaViajes.ReservacionTablaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="gvReservacionTablaAdmin" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True" OnRowCommand="gvReservacionTablaAdmin_RowCommand" OnRowEditing="gvReservacionTablaAdmin_RowEditing" OnRowCancelingEdit="gvReservacionTablaAdmin_RowCancelingEdit" OnRowUpdating="gvReservacionTablaAdmin_RowUpdating" OnRowDeleting="gvReservacionTablaAdmin_RowDeleting" BackColor="White" DataKeyNames="id_reservacion" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" Height="300px" Width="240px" HorizontalAlign="Center">
        
        <%-- Theme Properties --%>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

        <Columns>
            <asp:TemplateField HeaderText="ID Cliente">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("identidad_cliente") %>' runat="server" />
                    
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtidentidad_cliente" Text='<%# Eval("identidad_cliente") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtidentidad_clienteFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Numero de Tarjeta">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("numero_tarjeta") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnumero_tarjeta" Text='<%# Eval("numero_tarjeta") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnumero_tarjetaFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ID Destino">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("id_destino") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtid_destino" Text='<%# Eval("id_destino") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtid_destinoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Precio Total">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("precio_total") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtprecio_total" Text='<%# Eval("precio_total") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtprecio_totalFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Estado de Reservación">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("estado_reservacion") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtestado_reservacion" Text='<%# Eval("estado_reservacion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtestado_reservacionFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

           


            <asp:TemplateField>
                <ItemTemplate>
                     <asp:ImageButton ImageUrl="/images/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                     <asp:ImageButton ImageUrl="/images/trash.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="/images/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                        <asp:ImageButton ImageUrl="/images/delete.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:ImageButton ImageUrl="/images/add.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>

                    </FooterTemplate>
                
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
    <br />
    <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
</asp:Content>
