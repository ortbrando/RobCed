<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Prova.aspx.cs" Inherits="Prova" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>

    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="galleria.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css" />


</head>
<body>
    <div class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="color: #E0E0E0;">RobertoCedioli</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse" style="border-bottom: 1px solid black;">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Materolistici.aspx" style="color: black;">materolistici</a>
                    </li>
                    <li>
                        <a href="Fotografie.aspx" style="color: black;">fotografie</a>
                    </li>
                    <li>
                        <a href="Quadrimensionali.aspx" style="color: black;">quadrimensionali</a>
                    </li>
                    <li>
                        <a href="Contatti.aspx" style="color: black;">contatti</a>
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
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="img/Dettaglio_Homepage.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img src="img/Materolistici1.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img src="img/Materolistici2.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>
                <div class="item">
                    <img src="img/Materolistici3.jpg" alt="...">
                    <div class="carousel-caption">
                        ...
                    </div>
                </div>


            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="fa fa-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="fa fa-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
            <div class="row">
                <div id="links">
                    <div class="col-md-3">
                        <a href="img/Materolistici1.jpg" title="1" data-gallery>
                            <img src="img/Materolistici1.jpg" style="margin-top: 20px; heigth: 10px;" class="img-responsive" alt="1"></a>
                        <h1>Opera</h1>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisici elit,
             
                            <br>
                            sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
             
                            <br>
                            Ut enim ad minim veniam, quis nostrud
                        </p>
                    </div>

                    <div class="col-md-3">
                        <a href="img/Materolistici2.jpg" title="2" data-gallery>
                            <img src="img/Materolistici2.jpg" style="margin-top: 20px; heigth: 10px;" class="img-responsive" alt="2"></a>
                        <h1>Opera</h1>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisici elit,
             
                            <br>
                            sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
             
                            <br>
                            Ut enim ad minim veniam, quis nostrud
                        </p>
                    </div>

                    <div class="col-md-3">
                        <a href="img/Materolistici3.jpg" title="3" data-gallery>
                            <img src="img/Materolistici3.jpg" style="margin-top: 20px; heigth: 10px;" class="img-responsive" alt="3"></a>
                        <h1>Opera</h1>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisici elit,
             
                            <br>
                            sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
             
                            <br>
                            Ut enim ad minim veniam, quis nostrud
                        </p>
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

            </div>
        </div>
    </div>





</body>
</html>

