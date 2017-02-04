<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gestione.aspx.cs" Inherits="Services_Gestione" MasterPageFile="~/Services/AdminPanel.master" %>

<asp:Content runat="server" ContentPlaceHolderID="Gestione">
    <div class="section">
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header" style="color: blue;">Gestione
                        <br>
                </h1>
                <asp:Label ID="lblError" runat="server"></asp:Label>
                <div class="row">
                    <div class="col-md-8">
                        <asp:DropDownList ID="ddlCategoria" AutoPostBack="true" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategoria_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                    <div class="col-md-4">
                        <asp:CheckBox ID="visibile" Text="Opere nascoste" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <asp:Repeater ID="repeaterOpere" runat="server" OnItemDataBound="repeaterOpere_ItemDataBound">
        <HeaderTemplate><div class="row"></HeaderTemplate>
        <ItemTemplate>
         <div class="col-md-2" style="padding-bottom: 50px;">
             <asp:LinkButton ID="btnCancella" runat="server" OnClick="btnCancella_Click" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-default btn-block"><i class="fa fa-trash-o" aria-hidden="true"></i> Cancella</asp:LinkButton>
             <asp:LinkButton ID="btnNascondi" runat="server" OnClick="btnNascondi_Click" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-default btn-block"><i class="fa fa-eye-slash" aria-hidden="true"></i> Nascondi</asp:LinkButton>
             <asp:LinkButton ID="btnModifica" runat="server" OnClick="btnModifica_Click" CommandArgument='<%# Eval("Id") %>' CssClass="btn btn-default btn-block"><i class="fa fa-pencil" aria-hidden="true"></i> Modifica</asp:LinkButton>

             <asp:Repeater ID="repeaterFoto" runat="server">
                 <ItemTemplate>
                    <img src="<%# Eval("Immagine") %>" style="padding-top: 5px;" class="img-responsive">
                 </ItemTemplate>
             </asp:Repeater>
         </div>
            <div class="col-md-4" style="padding-bottom: 50px;">
                <div class="form-group">
                    <label>Titolo italiano</label><asp:TextBox ID="tbTitoloIt" runat="server" CssClass="form-control" Text='<%# Eval("TitoloIt") %>'></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Titolo inglese</label><asp:TextBox ID="tbTitoloEn" runat="server" CssClass="form-control" Text='<%# Eval("TitoloEn") %>'></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Descrizione italiano</label><asp:TextBox ID="tbDescrizioneIt" runat="server" CssClass="form-control" Text='<%# Eval("DescrizioneIt") %>'></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Descrizione inglese</label><asp:TextBox ID="tbDescrizioneEn" runat="server" CssClass="form-control" Text='<%# Eval("DescrizioneEn") %>'></asp:TextBox>
                </div>
                <img src="<%# Eval("Preview") %>" class="img-responsive">
            </div>
            <asp:HiddenField Value='<%# Eval("Id") %>' runat="server" ID="hidden" />
        </ItemTemplate>
        <FooterTemplate></div></FooterTemplate>
    </asp:Repeater>
        
    

</asp:Content>
