<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="presentacion.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row g-3">
        <div class="col-md-6">
            <div class="mb-3">
                <label for="txtEmail" class="form-label text-white">Email: </label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" TextMode="Email" Required="" />
            </div>
            <div class="mb-3">
                <label for="txtPass" class="form-label text-white">Password: </label>
                <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password" Required="" />
            </div>
            <asp:Button Text="Acceder" runat="server" ID="btnAcceder" CssClass="btn btn-primary" OnClick="btnAcceder_Click" />
            <a href="/">Cancelar </a>
            <div class="mb-3">
                <asp:Label runat="server" ID="lblMensaje" CssClass="text-danger"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
