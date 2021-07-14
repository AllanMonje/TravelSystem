<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="ActividadesDestinoTablaAdmin.aspx.vb" Inherits="agenciaViajes.ActividadesDestinoTablaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:GridView ID="gvActividadesDestino" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True" OnRowCommand="gvActividadesDestino_RowCommand" OnRowEditing="gvActividadesDestino_RowEditing" OnRowCancelingEdit="gvActividadesDestino_RowCancelingEdit" OnRowUpdating="gvActividadesDestino_RowUpdating" OnRowDeleting="gvActividadesDestino_RowDeleting" BackColor="White" DataKeyNames="id_actividad" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" Height="300px" Width="240px" HorizontalAlign="Center">
        
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

            <asp:TemplateField HeaderText="Nombre de Destino">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("nombre") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnombre" Text='<%# Eval("nombre") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnombreFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Ubicacion">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("ubicacion") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtubicacion" Text='<%# Eval("ubicacion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtubicacionFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Descripcion">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("descripcion") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtdescripcion" Text='<%# Eval("descripcion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtdescripcionFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Activo">
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
