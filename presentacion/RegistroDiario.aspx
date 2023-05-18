<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegistroDiario.aspx.cs" Inherits="presentacion.RegistroDiario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row tex-center">
        <div class="mb-3">
            <asp:TextBox runat="server" ID="txtId" />
        </div>
        <div class="mb-3">
            <label for="calendario" class="form-label text-white">Fecha: </label>
            <asp:Calendar runat="server" ID="calendario" CssClass="form-control bg-dark text-white"></asp:Calendar>
        </div>
        <div class="mb-3">
            <label for="txtScore" class="form-label text-white">Score: </label>
            <asp:TextBox runat="server" ID="txtScore" CssClass="form-control bg-dark text-white" />
        </div>
        <div class="mb-3">
            <label for="txtWords" class="form-label text-white">Words:</label>
            <asp:TextBox runat="server" ID="txtWords" CssClass="form-control bg-dark text-white" />
        </div>
        <div class="mb-3">
            <label for="chkHelp" class="form-label text-white">Help ?</label>
            <asp:CheckBox Text="" runat="server" ID="chkHelp" CssClass="form-control bg-dark text-white " />
        </div>
        <div>
            <asp:Button ID="btnAceptar" Text="Aceptar" runat="server" CssClass="btn btn-success" OnClick="btnAceptar_Click" />
        </div>
    </div>

</asp:Content>
