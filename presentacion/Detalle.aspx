<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="presentacion.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row tex-center">
        <div class="mb-3">
            <asp:TextBox runat="server" ID="txtId" CssClass="form-control"></asp:TextBox>   
        </div> 
        <div class="mb-3">
            <label for="txtFecha" class="form-label"> Fecha: </label>
            <asp:TextBox runat="server" ID="txtFecha" CssClass="form-control" TextMode="Date"></asp:TextBox>   
        </div> 
        <div class="mb-3">
            <label for="txtScore" class="form-label"> Score: </label>
            <asp:TextBox runat="server" ID="txtScore" CssClass="form-control" />
        </div>  
        <div class="mb-3">
            <label for="txtWords" class="form-label"> Words:</label>
            <asp:TextBox runat="server" ID="txtWords" CssClass="form-control" TextMode="MultiLine" />
        </div>  
        <div class="mb-3">
            <label for="chkHelp" class="form-label"> Helped?</label>
            <asp:CheckBox Text="" runat="server" ID="chkHelp" CssClass="form-control" />
        </div>  
    </div>
</asp:Content>
