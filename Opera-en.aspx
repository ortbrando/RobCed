<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Opera-en.aspx.cs" Inherits="Opera" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>

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
    <div class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button"style="color: black;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
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
                        <a href="Fotografie.aspx" style="color: black;">photomoments</a>
                    </li>
                    <li>
                        <a href="Materolistici.aspx" style="color: black;">materolistics</a>
                    </li>
                    <li>
                        <a href="Quadrimensionali.aspx" style="color: black;">quadrimensionals</a>
                    </li>
                    <li>
                        <a href="Contatti.aspx" style="color: black;">write me</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
     <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-use-bootstrap-modal="false">
                    <!-- The container for the modal slides -->
                    <div class="slides"></div>
                    <!-- Controls for the borderless lightbox -->
                    <h3 class="title"></h3>
                    <a class="prev">‹</a>
                    <a class="next">›</a>
                    <a class="close">×</a>
                    <a class="play-pause"></a>
                    <ol class="indicator"></ol>
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

     <div class="section" style="padding-top: 0px;">
      <div class="container" style="padding-left: 50px; padding-right: 50px;">
        <div class="row">
            <div id="links">
            <br />
           <div class="col-md-1 hidden-sm hidden-xs">
           </div> 
           <div class="col-md-4 hidden-sm hidden-xs">
              
              <asp:Repeater ID="repeaterImages" runat="server">
                <ItemTemplate>
                    <a href="<%# Eval("Immagine") %>" title="<%# Eval("Id") %>" data-gallery>
                    <img src="<%# Eval("Immagine") %>" class="hidden-sm img-responsive " alt="<%# Eval("Id") %>"/> </a>
                    <br />
                </ItemTemplate>
            </asp:Repeater>
               
           </div>
            <asp:Repeater ID="repeaterPreview" runat="server">
                <ItemTemplate>
                    <div class="col-md-7 col-sm-12 col-xs-12">
                        <a href="<%# Eval("Preview") %>" title="<%# Eval("TitoloEn") %>" data-gallery>
                        <img src="<%# Eval("Preview") %>" class="img-responsive"" alt="<%# Eval("Titolo") %>" /><br /> </a>
                        <h2><%# Eval("TitoloEn") %> </h2>
                        <p><%# Eval("DescrizioneEn") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
                
          
            <!-- <div class="col-md-1 hidden-sm hidden-xs"></div> -->
                </div>
        </div>
      </div>
    </div>

    <div class="section" style="padding-top: 0px;">
      <div class="container" style="padding-left: 50px; padding-right: 50px;">
          <div class="row hidden-lg hidden-md">
          <asp:Repeater ID="repeaterMobile" runat="server">
              <ItemTemplate>
                  <div class=" hidden-lg hidden-md col-sm-4 col-xs-12">
                  <img src="<%# Eval("Immagine") %>" class="img-responsive" alt="<%# Eval("Id") %>"> <br />
                  </div>
              </ItemTemplate>
          </asp:Repeater>
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


