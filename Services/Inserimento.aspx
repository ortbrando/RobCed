<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inserimento.aspx.cs" Inherits="Services_Inserimento" MasterPageFile="~/Services/AdminPanel.master" %>

<asp:Content ContentPlaceHolderID="Inserimento" runat="server">
    <div class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Inserisci nuova opera</h1>
                    <h2>relativa alla categoria<asp:DropDownList AutoPostBack="true" ID="ddlCategoria" runat="server" CssClass="form-control"></asp:DropDownList></h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <label class="control-label">Foto dell'Opera</label>
                        <asp:FileUpload ID="fuc4" CssClass="btn btn-default" runat="server" />
                    </div>
                    <div class="form-group">
                        <label class="control-label">Titolo IT</label>
                        <asp:TextBox ID="tbTitoloIt" runat="server" placeholder="Titolo in Italiano" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="exampleInputEmail1">Titolo EN</label>
                        <asp:TextBox ID="tbTitoloEn" runat="server" placeholder="Titolo in Inglese" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="exampleInputEmail1">Descrizione IT</label>
                        <asp:TextBox ID="tbDescrizioneIt" runat="server" TextMode="MultiLine" placeholder="Descrizione in Italiano" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="exampleInputPassword1">Descrizione EN</label>
                        <asp:TextBox ID="tbDescrizioneEn" runat="server" TextMode="MultiLine" placeholder="Descrizione in Inglese" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label">Dettaglio 1</label>
                        <asp:FileUpload ID="fuc1" CssClass="btn btn-default" runat="server" />
                        <br />
                        <label class="control-label">Dettaglio 2</label>
                        <asp:FileUpload ID="fuc2" CssClass="btn btn-default" runat="server" />
                        <br />
                        <label class="control-label">Dettaglio 3</label>
                        <asp:FileUpload ID="fuc3" CssClass="btn btn-default" runat="server" />
                        <br />
                    </div>
                    <hr />
                    <div class="form-group">
                        <asp:Button ID="btnInserisci" runat="server" Text="Conferma" OnClick="btnInserisci_Click" CssClass="btn btn-default" />
                        <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
