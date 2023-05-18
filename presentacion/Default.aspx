<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="presentacion.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row">
        <h5>Home </h5>
    </div>

    <div class="row">
        <asp:Repeater runat="server" ID="repetidor">
            <ItemTemplate>
                <div class="col">
                    <div class="card text-white mb-3" style="background-color:black">
                        <div class="card-header">
                            <h5 class="card-title"><%#Eval("Fecha","{0:D}") %></h5>
                        </div>
                        <div class="card-body">
                            <p class="card-text">Score: <%#Eval("Score") %></p>
                            <p class="card-text"><%#Eval("Words") %></p>
                            <p class="card-text">
                                Help ?
                                <asp:CheckBox ID="chkHelped" runat="server" Checked='<%# Convert.ToBoolean(Eval("Helped")) %>' Enabled="false" />
                            </p>           
                        </div>
                        <div class="card-footer">
                            <a href="Detalle.aspx?id=<%#Eval("Id") %>" class="btn btn-dark">Ver en detalle</a>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
    
