<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/content.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="Proyecto_Final.registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="page-header">
        <h2>Registrate</h2>
    </div>
        <form id="form1" runat="server" role="form" class="form-horizontal">
            <div class="form-group">
                 <asp:Label ID="lblAviso" runat="server" Text="" Font-Bold="true" class="btn-link btn-lg aviso" style="text-decoration:none" ></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="LblNombreReg" runat="server" Text="Nombre" CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtNombreReg" runat="server" CssClass="form-control" placeholder="Nombre" required></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtNombreReg" ErrorMessage="Debe ingresar solo letras" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblApellido" runat="server" Text="Apellido" CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtApellidoReg" runat="server" CssClass="form-control" placeholder="Apellido" required></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtApellidoReg" ErrorMessage="Debe ingresar solo letras" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblFechNac" runat="server" Text="Fecha de Nacimiento"  CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtFechNac" runat="server" CssClass="form-control" placeholder="dd/mm/aaaa" required></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtFechNac" Display="Dynamic" ErrorMessage="Debe ingresar valores válidos" ForeColor="Red" ValidationExpression="^([0][1-9]|[12][0-9]|3[01])(\/|-)([0][1-9]|[1][0-2])\2(\d{4})$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblLugarResidencia" runat="server" Text="Lugar de Residencia" CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtLugarResidencia" runat="server" CssClass="form-control" placeholder="Lugar de Residencia" required></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtLugarResidencia" ErrorMessage="Debe ingresar solo letras" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblEmail" runat="server" Text="Email" CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Email" required></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtEmail" Display="Dynamic" ErrorMessage="Debe ingresar valores válidos" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$"></asp:RegularExpressionValidator>
                </div> 
            </div>
            <div class="form-group">
                <asp:Label ID="LblPassword1" runat="server" Text="Contraseña" CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtPassword1" runat="server" TextMode="Password" CssClass="form-control" placeholder="Contraseña" required></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="LblPassword2" runat="server" Text="Repetir Contraseña" CssClass="control-label col-lg-4"></asp:Label>
                <div class="col-lg-4">
                    <asp:TextBox ID="TxtPassword2" runat="server" TextMode="Password" CssClass="form-control" placeholder="Repetir Contraseña" required></asp:TextBox>
                </div>
                <div class="col-lg-12">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Contraseñas diferentes" ControlToCompare="TxtPassword1" ControlToValidate="TxtPassword2" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-success" OnClick="BtnAceptar_Click" />
                <input id="BtnCancelar" type="reset" value="Cancelar" name="Cancelar" class="btn btn-danger"/>
            </div>
        </form>

</asp:Content>
