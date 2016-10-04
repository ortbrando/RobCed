<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gestione.aspx.cs" Inherits="Services_Gestione" MasterPageFile="~/Services/AdminPanel.master" %>

<asp:Content runat="server" ContentPlaceHolderID="Gestione">
    <div class="section">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header" style="color: blue;">Gestione
                        <br>
                </h1>
                <asp:DropDownList ID="ddlCategoria" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategoria_SelectedIndexChanged"></asp:DropDownList>
            </div>
        </div>
    </div>
    
    <asp:Repeater ID="repeaterOpere" runat="server" OnItemDataBound="repeaterOpere_ItemDataBound">
        <ItemTemplate>
         <div class="col-md-1">
             <asp:Repeater ID="repeaterFoto" runat="server">
                 <ItemTemplate>
                    <img src="<%# Eval("Immagine") %>" class="img-responsive">
                 </ItemTemplate>
             </asp:Repeater>
         </div>
            <div class="col-md-4">
                <h4><%# Eval("Titolo") %></h4>
                <h4>TitoloEng</h4>
                <h4><%# Eval("Descrizione") %></h4>
                <h4>Descrizione</h4>
                <img src="<%# Eval("Preview") %>" class="img-responsive">
            </div>
            <div class="col-md-1">
                <a class="btn btn-primary">Click me</a>
                <a class="btn btn-primary">Click me</a>
            </div>
            <asp:HiddenField Value='<%# Eval("Id") %>' runat="server" ID="hidden" />
        </ItemTemplate>

    </asp:Repeater>
        
    

</asp:Content>
