<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Materolistici-en.aspx.cs" Inherits="Materolistici" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
    <title>materolistici</title>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/galleria.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css" />
    <style>
       .icon-bar {
       background-color:black !important;
    }   
    </style>

</head>
<body>
    <form runat="server">
    <div class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Homepage.aspx" style="color: black;">RobertoCedioli</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse" style="">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Fotografie-en.aspx" style="color: black;">photomoments</a>
                    </li>
                    <li>
                        <a href="Materolistici-en.aspx" style="color: black; text-decoration: underline;">materolistics</a>
                    </li>                 
                    <li>
                        <a href="Quadrimensionali-en.aspx" style="color: black;">quadrimensionals</a>
                    </li>
                    <li>
                        <a href="Contatti-en.aspx" style="color: black;">write me</a>
                    </li>
                    <li>
                        <a href="Materolistici.aspx" style="color: black">IT</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div style="padding-top: 0px;" class="section">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                <li data-target="#carousel-example-generic" data-slide-to="4"></li>
                <li data-target="#carousel-example-generic" data-slide-to="5"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="c4.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c6.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c5.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c1.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c2.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c3.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="fa fa-3x fa-chevron-left hidden-sm hidden-xs" aria-hidden="true"></span>
                <span class="fa fa-1x fa-chevron-left hidden-md hidden-lg" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="fa fa-3x fa-chevron-right hidden-sm hidden-xs" aria-hidden="true"></span>
                <span class="fa fa-1x fa-chevron-right hidden-md hidden-lg" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="container">
            <div class="row">
                <h4 class="text-center"><asp:Label ID="descrizioneCat" runat="server"></asp:Label></h4>
            </div>
            <div class="row">
                    <asp:Repeater ID="repeaterOperas" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 ">
                                <asp:ImageButton ID="OperaPreview" ImageUrl='<%# Eval("Preview") %>' CssClass="img-responsive" CommandArgument='<%# Eval("Id") %>' OnClick="OperaPreview_Click" runat="server" />
                                <h1>
                                    <asp:LinkButton ID="Opera" Text='<%# Eval("Titolo") %>' runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="Opera_Click"></asp:LinkButton></h1>
                                <p><%# Eval("Descrizione") %></p>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

            </div>
        </div>
    </div>




</form>
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

