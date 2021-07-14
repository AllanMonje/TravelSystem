<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="ClientesTablaAdmin.aspx.vb" Inherits="agenciaViajes.ClientesTablaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvClientes" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True" OnRowCommand="gvClientes_RowCommand" OnRowEditing="gvClientes_RowEditing" OnRowCancelingEdit="gvClientes_RowCancelingEdit" OnRowUpdating="gvClientes_RowUpdating" OnRowDeleting="gvClientes_RowDeleting" BackColor="White" DataKeyNames="identidad_cliente" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" Height="300px" Width="240px" HorizontalAlign="Center">
      
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
            <asp:TemplateField HeaderText="Identidad">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("identidad_cliente") %>' runat="server" />
                    
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtid_cliente" Text='<%# Eval("identidad_cliente") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtid_clienteFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Password">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("password") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtpassword" Text='<%# Eval("password") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtpasswordFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Nombre">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("nombre_completo") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnombre" Text='<%# Eval("nombre_completo") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnombreFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

             <asp:TemplateField HeaderText="Correo">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("email") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtemail" Text='<%# Eval("email") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtemailFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Telefono">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("telefono") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txttelefono" Text='<%# Eval("telefono") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txttelefonoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Direccion">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("direccion") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnombre" Text='<%# Eval("direccion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtdireccionFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Nacionalidad">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("nacionalidad") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnacion" Text='<%# Eval("nacionalidad") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnacionalidadFooter" runat="server" />
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
