﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="presentacion.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <h5> Home </h5>
    </div>

    <div class="row">
        <asp:Repeater runat="server" ID="repetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card text-white bg-secondary mb-3">
                        <div class="row g-0">
                            <div class="col-md-4">
                                <h5 class="card-title">Fecha: <%#Eval("Fecha") %></h5>
                                <%--<asp:Calendar runat="server" CssClass="card-title" ID="calendario"></asp:Calendar>--%>
                            </div>
                            <div class="col-md-8">
                                <div class="card-body">
                                    <h5 class="card-title">Score: <%#Eval("Score") %></h5>
                                    <p class="card-text">Words: <%#Eval("Words") %></p>
                                    <p class="card-text">Helped: <%#Eval("Helped") %></p>
                                    <%--<asp:CheckBox CssClass="card-text" Text="<%#Eval("Helped") %>" runat="server" />--%>
                                    <a href="Detalle.aspx?id=<%#Eval("Id") %>" class="btn btn-info">Ver en detalle</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
