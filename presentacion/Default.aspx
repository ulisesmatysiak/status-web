<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="presentacion.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <div class="card text-white mb-3" style="background-color: black">
                <div class="card-header">
                    <h5 class="card-title">lunes, 1 de Enero de 2000</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Score: 5</p>
                    <p class="card-text">Words: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus eros sed risus tempor, at aliquam purus efficitur. Nullam nec purus ut nisi vulputate suscipit.</p>
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
                    <h5 class="card-title">domingo, 31 de Diciembre de 1999</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Score: 6 </p>
                    <p class="card-text">Words: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus eros sed risus tempor, at aliquam purus efficitur. Nullam nec purus ut nisi vulputate suscipit.</p>
                    <p class="card-text">
                        Help ?
                                <asp:CheckBox ID="CheckBox1" runat="server" Enabled="false" Checked="true" />
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
                    <h5 class="card-title">sábado, 30 de Diciembre de 1999</h5>
                </div>
                <div class="card-body">
                    <p class="card-text">Score: 7 </p>
                    <p class="card-text">Words: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed luctus eros sed risus tempor, at aliquam purus efficitur. Nullam nec purus ut nisi vulputate suscipit.</p>
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
    </div>

    <footer class="text-white">
        <p>En las cards se mostrarán los datos de registro diario en orden desde el último.</p>
        <ul>
            <li>Fecha del registro.</li>
            <li>Score: El puntaje del día.</li>
            <li>Words: En este campo se mostrará lo que escribas sobre tu día. </li>
            <li>Help ? Si fue de ayuda escribir sobre tu día se mostrara tildado, de lo contrario sin tildar.</li>
            <li>Botón de detalle para acceder a la pantalla de Detalle donde se podra eliminar el registro.</li>
        </ul>
    </footer>
    <%--<div class="footer text-white">
        <p>En las cards se mostrarán los datos de registro diario en orden desde el último.</p>
        <ul>
            <li>Fecha del registro.</li>
            <li>Score: El puntaje del día.</li>
            <li>Words: En este campo se mostrará lo que escribas sobre tu día. </li>
            <li>Help ? Si fue de ayuda escribir sobre tu día se mostrara tildado en lo contrario sin tildar.</li>
            <li>Botón de detalle para acceder a la pantalla de Detalle donde se podra eliminar el registro.</li>
        </ul>
    </div>--%>
</asp:Content>
