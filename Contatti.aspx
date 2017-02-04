<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contatti.aspx.cs" Inherits="Contatti" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <title>scrivimi</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <style>
        @media only screen and (max-width: 767px) {
            #contact {
                
            }
            #jumbo {
                 padding-top:2px;
            }
        }
    </style>
</head>
<body>
    <div class="cover">
        <div class="navbar">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Homepage.aspx" style="color: white;">RobertoCedioli</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="Fotografie.aspx" style="color: white;">fotomomenti</a>
                        </li>
                        <li>
                            <a href="Materolistici.aspx" style="color: white;">materolistici</a>
                        </li>
                        <li>
                            <a href="Quadrimensionali.aspx" style="color: white;">quadrimensionali</a>
                        </li>
                        <li>
                            <a href="Contatti.aspx" style="color: white; text-decoration: underline;">scrivimi</a>
                        </li>
                        <li>
                            <a href="Contatti-en.aspx" style="color: white;">english</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <asp:Repeater ID="backgroundRepeater" runat="server">
            <ItemTemplate>
        <div class="cover-image" style="background-image: url('<%# Eval("Sfondo") %>')"></div>
                </ItemTemplate>
        </asp:Repeater>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="contact">
                <div class="jumbotron" id="jumbo" style="background: rgba(54, 54, 54, 0.5);">
                    <h1 style="color: white; margin-bottom: 30px;">scrivimi</h1>
                    <form class="form-horizontal" role="form" runat="server">
                        <div class="form-group">
                            <div class="col-sm-1 col-xs-3">
                                <label for="inputname" class="control-label" style="color: white;">nome</label>
                            </div>
                            <div class="col-sm-5 col-xs-9">
                                <asp:TextBox ID="txbNome" runat="server" CssClass="form-control" Placeholder="nome"></asp:TextBox>
                            </div>
                            <div class="col-sm-1 col-xs-3">
                                <label for="inputEmail" class="control-label" style="color: white;">email</label>
                            </div>
                            <div class="col-sm-5 col-xs-9">
                                <asp:TextBox ID="txbEmail" TextMode="Email" runat="server" CssClass="form-control" Placeholder="email"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-1 col-xs-3">
                                <label for="inputtext" class="control-label" style="color: white;">testo</label>
                            </div>
                            <div class="col-sm-5 col-xs-9">
                                <asp:TextBox ID="txbTesto" runat="server" CssClass="form-control" Placeholder="testo" TextMode="MultiLine" Rows="5" style="resize:none"></asp:TextBox>
                            </div>
                            <div class="col-sm-1 col-xs-3">
                                <label for="inputEmail" class="control-label" style="color: white;">facebook</label>
                            </div>
                            <div class="col-sm-5 col-xs-9">
                                <i class="fa fa-4x fa-facebook-square" aria-hidden="true" style="color: white;"></i>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-1 col-sm-10 col-xs-10">
                                <asp:Button ID="btnContatta" CssClass="btn btn-default" runat="server" OnClick="btnContatta_Click" Text="scrivimi" />
                                <asp:Label ID="lblout" runat="server" Text="" style="color: white; padding-left: 20px;"></asp:Label>
                                <asp:Image ID="emoji" ImageUrl="img/praying-hands.png" Height="20px" Visible="false" runat="server" />
                            </div>
                        </div>
                    </form>
                </div>
                </div>
            </div>
            
        </div>
            
        </div>
</body>

<!--Cookie-->
 <script src="js/cookiechoices.js"></script>
 <script>//<![CDATA[
     document.addEventListener('DOMContentLoaded', function (event) {
         cookieChoices.showCookieConsentBar('Questo sito utilizza cookie tecnici e analytics, anche di terze parti. Per avere maggiori informazioni sui cookie clicca "Maggiori Informazioni".  ',
             'Ok', 'Maggiori Informazioni',
                      'http://www.robertocedioli.com/cookies.aspx#cookies');
     });
     //]]></script>

</html>
