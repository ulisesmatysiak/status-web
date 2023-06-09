﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegistroUsuario.aspx.cs" Inherits="presentacion.RegistroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-4">
            <h2>Creá tu perfil</h2>
            <div class="mb-3">
                <label for="txtEmail" class="form-label text-white">Email </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" />
            </div>
            <div class="mb-3">
                <label for="txtPass" class="form-label text-white">Password </label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPass" TextMode="Password" />
            </div>
            <asp:Button Text="Registrarse" runat="server" CssClass="btn btn-primary" ID="btnRegistrarse" OnClick="btnRegistrarse_Click"/>
            <a href="/">Cancelar</a>
            <div class="mb-3">
                <asp:Label ID="lblMensaje" runat="server" CssClass="text-danger" />
            </div>
        </div>
    </div>
</asp:Content>
