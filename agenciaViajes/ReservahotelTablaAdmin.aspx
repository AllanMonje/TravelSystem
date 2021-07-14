<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="ReservahotelTablaAdmin.aspx.vb" Inherits="agenciaViajes.ReservahotelTablaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvReservahotel" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True" OnRowCommand="gvReservahotel_RowCommand" OnRowEditing="gvReservahotel_RowEditing" OnRowCancelingEdit="gvReservahotel_RowCancelingEdit" OnRowUpdating="gvReservahotel_RowUpdating" OnRowDeleting="gvReservahotel_RowDeleting" BackColor="White" DataKeyNames="id_reservahotel" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" Height="300px" Width="240px" HorizontalAlign="Justify">
        
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
            <asp:TemplateField HeaderText="Identidad Cliente">
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

            <asp:TemplateField HeaderText="Nombre Hotel">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("nombre_hotel") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnombre_hotel" Text='<%# Eval("nombre_hotel") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnombre_hotelFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Tipo de Habitación">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("tipo_habitacion") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txttipo_habitacion" Text='<%# Eval("tipo_habitacion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txttipohabitacionFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Precio">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("precio") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtprecio" Text='<%# Eval("precio") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtprecioFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Días de Hospedaje">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("dias_hospedaje") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtdias_hospedaje" Text='<%# Eval("dias_hospedaje") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtdias_hospedajeFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Fecha de Ingreso">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("fecha_ingreso") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtfecha_ingreso" Text='<%# Eval("fecha_ingreso") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtfecha_ingresoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Fecha de Salida">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("fecha_salida") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtfecha_salida" Text='<%# Eval("fecha_salida") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtfecha_salidaFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="ID Reservación">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("id_reservacion") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtid_reservacion" Text='<%# Eval("id_reservacion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtid_reservacionFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Estado de Reserva">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("activo") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtactivo" Text='<%# Eval("activo") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtactivoFooter" runat="server" />
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
