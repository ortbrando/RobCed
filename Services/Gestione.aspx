<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gestione.aspx.cs" Inherits="Services_Gestione" MasterPageFile="~/Services/AdminPanel.master" %>

<asp:Content runat="server" ContentPlaceHolderID="Gestione">
    <div class="section">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header" style="color: blue;">Gestione
                        <br>
                    </h1>
                </div>
            </div>
    </div>
    <div class="section">
            <div class="row">
                <div class="col-md-6">
                    <h1>Modifica Opere</h1>
                    <div class="btn-group btn-group-lg">
                            <asp:DropDownList id="ddl1" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="populateSubcatParam1"  runat="server"></asp:DropDownList>
                    </div>
                    <div class="btn-group btn-group-lg">
                            <asp:DropDownList id="ddl2" CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList>
                    </div>
                        <div class="form-group">
                            <label class="control-label" for="exampleInputEmail1">Nome</label>
                            <asp:TextBox runat="server" ID="tb1" CssClass="form-control" Placeholder="Nuova sottocategoria"></asp:TextBox>
                        </div>
                        <asp:Button type="submit" Text="Modifica" OnClick="editSubcat" CssClass="btn btn-default" runat="server"></asp:Button>
                        <asp:Label ID="lbl1" runat="server"></asp:Label>
                </div>
                <div class="col-md-6">
                    <h1>Elimina Opere
                           
                        <br>
                    </h1>
                    <div class="btn-group btn-group-lg">
                        <asp:DropDownList id="ddl3" CssClass="form-control"  runat="server" AutoPostBack="true" OnSelectedIndexChanged="populateSubcatParam1"></asp:DropDownList>
                    </div>
                    <div class="btn-group btn-group-lg">
                        <asp:DropDownList id="ddl4" CssClass="form-control" AutoPostBack="true" runat="server"></asp:DropDownList>
                    </div>
                    
                        <div class="form-group">
                            <label class="control-label" for="exampleInputEmail1">Nome</label>
                            <asp:TextBox runat="server" ID="tb2" CssClass="form-control" Placeholder="Nuovo argomento"></asp:TextBox>
                        </div>
                        <asp:Button type="submit" Text="Modifica" CssClass="btn btn-default" runat="server"></asp:Button>
                        <asp:Label ID="lbl2" runat="server"></asp:Label>
                    
                </div>
            </div>
    </div>

</asp:Content>