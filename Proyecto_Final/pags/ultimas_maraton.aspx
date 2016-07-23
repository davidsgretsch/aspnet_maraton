<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/content.Master" AutoEventWireup="true" CodeBehind="ultimas_maraton.aspx.cs" Inherits="Proyecto_Final.pags.ultimas_maraton" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="page-header">
        <h2>Resultado de la última competencia</h2>
    </div>
    <p>La siguiente grilla indica cuales fueron los resultados de la última maratón que se ha realizado.</p>
    <p>¡Tú puedes ser el próximo en estar entre los primeros 10 competidores!</p>
    <div>
        <form id="form1" runat="server" role="form" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="LblMaraton" runat="server" Text="Nombre de Maraton:" CssClass="control-label" ></asp:Label>
                <asp:Label ID="LblNomMaraton" runat="server" CssClass="control-label"></asp:Label>
            </div>
            <div class="col-lg-12">
                <asp:GridView ID="GridViewUM" runat="server" CssClass="table colortabla table-hover table-bordered table-responsive" Width="100%" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="IdMaraton" HeaderText="Id Maraton" HeaderStyle-CssClass="text-center hidden-xs" ItemStyle-CssClass="hidden-xs" />
                        <asp:BoundField DataField="PosicionFinal" HeaderText="Posición Final" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="IdUsuario" HeaderText="Id Usuario" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="NroInscripcion" HeaderText="Nro de Inscripción" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="TiempoLlegada" HeaderText="Tiempo de Llegada" HeaderStyle-CssClass="text-center" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
    </div>
    
    
</asp:Content>
