<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Fotografie-en.aspx.cs" Inherits="Fotografie" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width; initial-scale = 1.0; maximum-scale=1.0; user-scalable=no" />
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
    <title>fotomomenti</title>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/galleria.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/carousel.css" />
    <style>
       .icon-bar {
       background-color:black !important;
    }   
    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div class="navbar navbar-fixed-top" style="background-color: white;">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Homepage-en.aspx" style="color: black;">RobertoCedioli</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse" style="">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <a href="Fotografie-en.aspx"  style="color: black; text-decoration: underline;">photomoments</a>
                    </li>
                    <li>
                        <a href="Materolistici-en.aspx" style="color: black;">materolistics</a>
                    </li>   
                    <li>
                        <a href="Quadrimensionali-en.aspx" style="color: black;">fourdimensionals</a>
                    </li>
                    <li>
                        <a href="Contatti-en.aspx" style="color: black;">write me</a>
                    </li>
                    <li>
                        <a href="Fotografie.aspx" style="color: black;">italiano</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <div style="padding-top: 0px;" class="section">
        <!-- Carousel -->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="c10.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c11.gif" alt="...">
                    <div class="carousel-caption">
                    </div>
                </div>
                <div class="item">
                    <img src="c9.gif" alt="...">
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
            <div class="row" style="padding: 15px;">
                <h4 class="text-center" style="padding: 10px;"><asp:Label ID="descrizioneCat" runat="server"></asp:Label></h4>
            </div>
        </div>

        <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-use-bootstrap-modal="false">
                    <!-- The container for the modal slides -->
                    <div class="slides"></div>
                    <!-- Controls for the borderless lightbox -->
                    <h3 class="title"></h3>
                    <a class="prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
                    <a class="next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                    <a class="close">torna indietro</a>
                    <a class="play-pause"></a>
                    <!-- <ol class="indicator"></ol> -->
                    <!-- The modal dialog, which will be used to wrap the lightbox content -->
                    <div class="modal fade">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title"></h4>
                                </div>
                                <div class="modal-body next"></div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default pull-left prev">
                                        <i class="glyphicon glyphicon-chevron-left"></i>
                                        Previous
                   
                                    </button>
                                    <button type="button" class="btn btn-primary next">
                                        Next
                       
                                        <i class="glyphicon glyphicon-chevron-right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

        <div class="container">
            <div class="row">
                    <asp:Repeater ID="repeaterOperas" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 ">
                                <a href="<%# Eval("Preview") %>" title="<%# Eval("TitoloEn") %>" data-gallery>
                                <img src="<%# Eval("Preview") %>" class="hidden-sm img-responsive " alt="<%# Eval("Id") %>"/> </a>
                                <h1>
                                    
                                    <asp:LinkButton ID="Opera" Text='<%# Eval("TitoloEn") %>' runat="server" CommandArgument='<%# Eval("Id") %>' OnClick="Opera_Click"></asp:LinkButton></h1>
                                <p><%# Eval("DescrizioneEn") %></p>
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

