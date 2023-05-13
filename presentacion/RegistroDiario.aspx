<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="RegistroDiario.aspx.cs" Inherits="presentacion.Daily" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row tex-center">
        <div class="mb-3">
            <label for="calendario" class="form-label"> Fecha: </label>
            <asp:Calendar runat="server" ID="calendario" CssClass="form-control"></asp:Calendar>   
        </div> 
        <div class="mb-3">
            <label for="txtScore" class="form-label"> Score: </label>
            <asp:TextBox runat="server" ID="txtScore" CssClass="form-control" />
        </div>  
        <div class="mb-3">
            <label for="txtWords" class="form-label"> Words:</label>
            <asp:TextBox runat="server" ID="txtWords" CssClass="form-control" />
        </div>  
        <div class="mb-3">
            <label for="chkHelp" class="form-label"> Helped?</label>
            <asp:CheckBox Text="" runat="server" ID="chkHelp" CssClass="form-control" />
        </div>  
    </div>
</asp:Content>
