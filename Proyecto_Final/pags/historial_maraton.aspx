<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/usuario.Master" AutoEventWireup="true" CodeBehind="historial_maraton.aspx.cs" Inherits="Proyecto_Final.historial_maratones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div class="page-header">
        <h2>Historial de Maratones</h2>
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <table class="table table-striped" id="historial" name="historial">
            <thead>
                <tr>
                    <td><b>Nombre de la Maraton</b></td>
                    <td><b>Posicion Final</b></td>
                    <td><b>Tiempo de llegada</b></td>
                    <td><b>Primer Premio</b></td>
                    <td><b>Segundo Premio</b></td>
                    <td><b>Tercer Premio</b></td>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <script src="../Historial.js" type="text/javascript"></script>
    </form>
</asp:Content>
