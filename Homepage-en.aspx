<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage-en.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <title>RobertoCedioli</title>
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
                    <a class="navbar-brand" style="color: white;">RobertoCedioli</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="Fotografie-en.aspx" style="color: white;">photomoments</a>
                        </li>
                        <li>
                            <a href="Materolistici-en.aspx" style="color: white;">materolistics</a>
                        </li> 
                        <li>
                            <a href="Quadrimensionali-en.aspx" style="color: white;">quadrimensionals</a>
                        </li>
                        <li>
                            <a href="Contatti-en.aspx" style="color: white;">write me</a>
                        </li>
                        <li>
                            <a href="Homepage.aspx" style="color: white;">IT</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <asp:Repeater ID="backgroundRepeater" runat="server">
            <ItemTemplate>
                <div class="cover-image" style="background-image: url('<%# Eval("Sfondo") %>')"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-10 text-center">
                    <img class="img-responsive" src="img/firma trasp.png" />
                </div>
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>
                <div class="col-lg-6 col-md-6 col-sm-8 col-xs-10 text-center">
                    <p style="color: white;"><%# Eval("FilosofiaEn") %></p>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-2 col-xs-1"></div>                    
                    <br>
                    <br>
                </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>
        
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
