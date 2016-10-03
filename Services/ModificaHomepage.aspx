<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModificaHomepage.aspx.cs" Inherits="Services_ModificaHomepage" MasterPageFile="~/Services/AdminPanel.master" %>

<asp:Content ContentPlaceHolderID="ModificaHomepage" runat="server">
    <div class="container">
        <h1>Modifica homepage</h1>
        <h3>Modifica sfondo</h3>
        <hr />
        <asp:FileUpload ID="FileUploadControl" runat="server" />
        <br />
        <br />

        <h3>Modifica descrizione della Filosofia</h3>
        <hr />
        <asp:TextBox ID="tbFilosofia" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
        
        <h3>Conferma</h3>
        <asp:Button ID="Modifica" runat="server" Text="Conferma Modifiche" CssClass="btn btn-default" OnClick="Modifica_Click" />
        <asp:Label runat="server" ID="StatusLabel" />

    </div>
</asp:Content>
