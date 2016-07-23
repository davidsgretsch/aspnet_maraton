<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/usuario.Master" AutoEventWireup="true" CodeBehind="inscripcion_maraton.aspx.cs" Inherits="Proyecto_Final.pags.inscripcion_maraton" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-header">
        <h2>Inscribirse a Maratón</h2>
    </div>
    <div class="form-group">
           <asp:Label ID="lblAviso" runat="server" Text="" Font-Bold="true" class="btn-link btn-lg aviso" style="text-decoration:none" ></asp:Label>
      </div>
        <form id="form1" runat="server" role="form" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="LblMaraton" runat="server" Text="Maratón" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddlListaMaraton" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>              
           </div>
            <div class="col-lg-12">
                <asp:Button ID="Inscribirse" runat="server" Text="Inscribirse" OnClick="Inscribirse_Click" CssClass="btn btn-success"/>
            </div>
        </form>
</asp:Content>
