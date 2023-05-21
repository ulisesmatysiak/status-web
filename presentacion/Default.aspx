<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="presentacion.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <h5>Home </h5>
    </div>

    <div class="row">
        <%--<asp:Repeater runat="server" ID="repetidorDefault">
            <ItemTemplate>--%>
        <div class="col">
            <div class="card text-white mb-3" style="background-color: black">
                <div class="card-header">
                    <h5 class="card-title">Fecha de ejemplo</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Score ejemplo </p>
                    <p class="card-text">Words ejemplo </p>
                    <p class="card-text">
                        Help ?
                                <asp:CheckBox ID="chkHelped" runat="server" Enabled="false" />
                    </p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-dark">Ver en detalle</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-white mb-3" style="background-color: black">
                <div class="card-header">
                    <h5 class="card-title">Fecha de ejemplo</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Score ejemplo </p>
                    <p class="card-text">Words ejemplo </p>
                    <p class="card-text">
                        Help ?
                                <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" />
                    </p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-dark">Ver en detalle</a>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card text-white mb-3" style="background-color: black">
                <div class="card-header">
                    <h5 class="card-title">Fecha de ejemplo</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Score ejemplo </p>
                    <p class="card-text">Words ejemplo </p>
                    <p class="card-text">
                        Help ?
                                <asp:CheckBox ID="CheckBox2" runat="server" Enabled="false" />
                    </p>
                </div>
                <div class="card-footer">
                    <a href="#" class="btn btn-dark">Ver en detalle</a>
                </div>
            </div>
        </div>

        <%--</ItemTemplate>--%>
        <%-- </asp:Repeater>--%>
    </div>
</asp:Content>
