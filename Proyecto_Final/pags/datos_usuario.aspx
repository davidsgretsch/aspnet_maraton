<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/usuario.Master" AutoEventWireup="true" CodeBehind="datos_usuario.aspx.cs" Inherits="Proyecto_Final.pags.datos_usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        <h2>Modificar datos de usuario</h2>
    </div>
     <div class="form-group">
           <asp:Label ID="lblAviso" runat="server" Text="" Font-Bold="true" class="btn-link btn-lg aviso" style="text-decoration:none" ></asp:Label>
      </div>
        <form id="form1" runat="server" role="form" class="form-horizontal">
           <!-- <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Id Usuario" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlId" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>-->
           
           <div>
                <asp:GridView ID="GridViewDatos" runat="server" Width="100%" CssClass="table colortabla table-hover table-bordered gridViewStyle" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="IdUsuario" HeaderText="Id Usuario" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Contrasenia" HeaderText="Password" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="Apellido" HeaderText="Apellido" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs text-center" />
                        <asp:BoundField DataField="FechaNac" HeaderText="Fecha de Nacimiento" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="LugarResidencia" HeaderText="Lugar de Residencia" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs text-center" />
                    </Columns>
                </asp:GridView>
            </div>
            <div class="form-group">
                <asp:Label ID="LblContrasenia" runat="server" Text="Nueva Password"  CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtContrasenia" runat="server" placeholder="Nueva Password" textmode = "password" CssClass="form-control" AutoPostBack="false"></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtContrasenia" ForeColor="Red" Display="Dynamic"> Campo Obligatorio</asp:RequiredFieldValidator>
                </div>
            </div>
           <div class="form-group">
                <asp:Label ID="LblContrasenia2" runat="server" Text="Reingrese Password"  CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtContrasenia2" runat="server" placeholder="Reingrese Password" textmode = "password" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtContrasenia2" ForeColor="Red" Display="Dynamic"> Campo Obligatorio</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Deben coincidir las contraseñas" ControlToCompare="TxtContrasenia" ControlToValidate="TxtContrasenia2" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblNombre" runat="server" Text="Nombre" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombre" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNombre" ForeColor="Red" Display="Dynamic"> Campo Obligatorio</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Debe ingresar solo letras" ValidationExpression="^[a-zA-Z ]*$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblApellido" runat="server" Text="Apellido" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtApellido" runat="server" placeholder="Apellido" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtApellido" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtApellido" ErrorMessage="Debe ingresar solo letras" ValidationExpression="^[a-zA-Z ]*$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblFechaNac" runat="server" Text="Fecha de nacimiento" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtFechaNac" runat="server" placeholder="dd/mm/aaaa" CssClass="form-control"></asp:TextBox>
                </div> 
                <div class="col-lg-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtFechaNac" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtFechaNac" Display="Dynamic" ErrorMessage="Ingrese una fecha valida" ForeColor="Red" ValidationExpression="^([0][1-9]|[12][0-9]|3[01])(\/|-)([0][1-9]|[1][0-2])\2(\d{4})$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblLugarResidencia" runat="server" Text="Lugar de Residencia" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtLugarResidencia" runat="server" placeholder="Lugar de Residencia" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtLugarResidencia" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                </div>
            </div> 
            <div>
            </div>

            <div class="form-group">
                <asp:Button ID="Button1" runat="server" Text="Editar" CssClass="btn btn-success" OnClick="Button1_Click"/>
                <input id="BtnCancelar" type="reset" value="Cancelar" name="Cancelar" class="btn btn-danger"/>
            </div>
        </form>
</asp:Content>