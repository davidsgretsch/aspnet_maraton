<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/administracion.Master" AutoEventWireup="true" CodeBehind="creacion_maraton.aspx.cs" Inherits="Proyecto_Final.pags.creacion_maraton" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="page-header">
        <h2>Creación de Maratones</h2>
    </div>
    <form id="form1" runat="server" role="form" class="form-horizontal">
        <div class="form-group">
             <asp:Label ID="lblAviso" runat="server" Text="" Font-Bold="true" class="btn-link btn-lg aviso" style="text-decoration:none" ></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="LblNombre" runat="server" Text="Nombre" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control" Placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="col-lg-12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtNombre" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Debe ingresar solo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblPaticipantes" runat="server" Text="Participantes" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:TextBox ID="TxtParticipantes" runat="server" CssClass="form-control" Placeholder="Cant.max de participantes"></asp:TextBox>
            </div>
            <div class="col-lg-12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtParticipantes" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtParticipantes" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" ValidationExpression="^[0-9]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblSalida" runat="server" Text="Lugar de Salida" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:TextBox ID="TxtSalida" runat="server" CssClass="form-control" Placeholder="Lugar de Salida"></asp:TextBox>
            </div>
            <div class="col-lg-12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtSalida" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtSalida" ErrorMessage="Debe ingresar solo letras" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(\s*[a-zA-Z]*)*[a-zA-Z]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblUserEspera" runat="server" Text="En espera" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:TextBox ID="TxtUserEspera" runat="server" CssClass="form-control" Placeholder="Cant.de usuarios en espera"></asp:TextBox>
            </div>
            <div class="col-lg-12">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtUserEspera" ForeColor="Red" Display="Dynamic">Campo Obligatorio</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtUserEspera" ErrorMessage="Debe ingresar solo numeros" ForeColor="Red" ValidationExpression="^[0-9]+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblPremio1" runat="server" Text="1° Premio" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:DropDownList ID="ddlPremio1" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblPremio2" runat="server" Text="2° Premio" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:DropDownList ID="ddlPremio2" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblPremio3" runat="server" Text="3° Premio" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:DropDownList ID="ddlPremio3" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="LblComienzo" runat="server" Text="Fecha/Hora Comienzo" CssClass="col-lg-4 control-label"></asp:Label>
            <div class="col-lg-4">
                <asp:TextBox ID="TxtComienzo" runat="server" CssClass="form-control" Placeholder="dd/mm/aaaa hh:mm"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo Obligatorio" ControlToValidate="TxtComienzo" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Ingresar fecha posterior a la actual" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TxtComienzo" Display="Dynamic" ForeColor="Red"></asp:CustomValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Button ID="Button1" runat="server" Text="Crear Maratón" OnClick="Button1_Click" CssClass="btn btn-success" />
            <input id="BtnCancelar" type="reset" value="Cancelar" name="Cancelar" class="btn btn-danger" />
        </div>
    </form>
</asp:Content>