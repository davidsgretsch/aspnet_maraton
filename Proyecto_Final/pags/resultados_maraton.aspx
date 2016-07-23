<%@ Page Title="" Language="C#" MasterPageFile="~/masterpages/administracion.Master" AutoEventWireup="true" CodeBehind="resultados_maraton.aspx.cs" Inherits="Proyecto_Final.pags.resultados_maraton" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
    <div class="page-header">
        <h2>Registro de Resultados de Maratón</h2>
    </div>
        <form id="form1" runat="server" role="form" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="LblMaraton" runat="server" Text="Maratón" CssClass="col-lg-4 control-label"></asp:Label>
                <div class="col-lg-4">
                    <asp:DropDownList ID="ddListaMaraton" runat="server" CssClass="form-control"></asp:DropDownList>
                </div>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Cargar" CssClass="btn btn-success" OnClick="Button1_Click"/>
            <br />
            <br />
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-md-2">
                        <h4>Ingrese los Resultados:</h4>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="LblIdUsuario" runat="server" Text="Id Usuario"></asp:Label>
                        <asp:TextBox ID="TxtIdUsuario" runat="server" CssClass="text-center"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtIdUsuario" ValidationExpression="^[0-9]+$" Display="Dynamic" ErrorMessage="Debe ingresar solo numeros" Font-Bold="True" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="LblPosFinal" runat="server" Text="Posición Final"></asp:Label>
                        <asp:TextBox ID="TxtPosFinal" runat="server" CssClass="text-center"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPosFinal" ValidationExpression="^[0-9]+$" Display="Dynamic" ErrorMessage="Debe ingresar solo numeros" Font-Bold="true" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="LblTLlegada" runat="server" Text="Tiempo de llegada"></asp:Label>
                        <asp:TextBox ID="TxtTLlegada" runat="server" CssClass="text-center"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtTLlegada" ValidationExpression="^[0-9]+$" Display="Dynamic" ErrorMessage="Debe ingresar solo numeros" Font-Bold="true" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-md-2">
                        <asp:Label ID="LblFinalizo" runat="server" Text="Finalizó"></asp:Label>
                        <asp:TextBox ID="TxtFinalizo" runat="server" CssClass="text-center"></asp:TextBox>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-success" OnClick="BtnAceptar_Click"/>
                        <input id="BtnCancelar" type="reset" value="Cancelar" name="Cancelar" class="btn btn-danger"/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblAviso" runat="server" Text="" Font-Bold="true" class="btn-link btn-lg aviso" style="text-decoration:none" ></asp:Label>
            </div>
            <br /><br /><br />
            <div class="col-lg-12">
                <asp:GridView ID="GridViewRM" runat="server" CssClass="table colortabla table-hover table-bordered table-responsive" Width="100%" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="IdUsuario" HeaderText="Id Usuario" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="IdMaraton" HeaderText="Id Maraton" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="NroInscripcion" HeaderText="Nro de Inscripción" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs text-center" />
                        <asp:BoundField DataField="PosicionFinal" HeaderText="Posición Final" HeaderStyle-CssClass="text-center" />
                        <asp:BoundField DataField="TiempoLlegada" HeaderText="Tiempo de llegada" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs text-center" />
                        <asp:BoundField DataField="Finalizo" HeaderText="Finalizó" ItemStyle-CssClass="hidden-xs" HeaderStyle-CssClass="hidden-xs text-center" />
                    </Columns>
                </asp:GridView>
            </div>
        </form>
</asp:Content>
