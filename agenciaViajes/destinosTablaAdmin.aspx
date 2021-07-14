<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeBehind="destinosTablaAdmin.aspx.vb" Inherits="agenciaViajes.destinosTablaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvDestinos" runat="server" AutoGenerateColumns="False" ShowFooter="True" ShowHeaderWhenEmpty="True" OnRowCommand="gvDestinos_RowCommand" OnRowEditing="gvDestinos_RowEditing" OnRowCancelingEdit="gvDestinos_RowCancelingEdit" OnRowUpdating="gvDestinos_RowUpdating" OnRowDeleting="gvDestinos_RowDeleting" BackColor="White" DataKeyNames="id_destino" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="0" Height="300px" Width="240px" HorizontalAlign="Center">
        
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
            <asp:TemplateField HeaderText="Nombre de Destino">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("nombre_destino") %>' runat="server" />
                    
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtnombre_destino" Text='<%# Eval("nombre_destino") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtnombre_destinoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Ciudad">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("ciudad") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtciudad" Text='<%# Eval("ciudad") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtciudadFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Pais">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("pais") %>' runat="server" />

                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtpais" Text='<%# Eval("pais") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtpaisFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Direccion">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("direccion") %>' runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtdireccion" Text='<%# Eval("direccion") %>' runat="server" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtdireccionFooter" runat="server" />
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
