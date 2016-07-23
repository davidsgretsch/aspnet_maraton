<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/content.Master" AutoEventWireup="true" CodeBehind="inicioSesion.aspx.cs" Inherits="Proyecto_Final.inicioSesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <h2>Iniciar Sesión</h2>
        </div>
        <div class="modal-body">
            <form id="form1" runat="server" role="form">
                <div class="form-group">
                    <asp:Label ID="LblUsuario" runat="server" Text="Usuario" CssClass="control-label"></asp:Label>
                    <div class="col-sm-12">
                        <asp:TextBox ID="TxtUsuario" runat="server" CssClass="form-control input-lg" placeholder="Usuario" required></asp:TextBox>
                    </div> 
                </div>
                <br />
                <br />
                <div class="form-group">
                    <asp:Label ID="LblPass" runat="server" Text="Contraseña" CssClass="control-label"></asp:Label>
                    <div class="col-lg-12">
                        <asp:TextBox TextMode="Password" ID="TxtPass" runat="server" CssClass="form-control input-lg" placeholder="Contraseña" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-12">
                        <asp:Label ID="LblError" runat="server" ForeColor="Red" Font-Bold="True" Font-Italic="True" Font-Size="Medium"></asp:Label>
                    </div>
                </div>
                <br />
                <br />
                <br />
                <div class="form-group">
                    <asp:Button ID="Button_Aceptar" runat="server" Text="Aceptar" CssClass="btn botonLogin btn-primary btn-lg btn-block" OnClick="Button_Aceptar_Click"/>
                </div>
            </form>
            <div>
                <span>No tienes una cuenta?</span>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="text-right" NavigateUrl="~/pags/registro.aspx">Registrate</asp:HyperLink>
            </div>
        </div>   
    </div>
</div>
</asp:Content>
