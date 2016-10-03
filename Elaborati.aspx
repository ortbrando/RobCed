<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Elaborati.aspx.cs" Inherits="Elaborati" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Elaborati</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css" />
    <!-- <link rel="stylesheet" href="css/demo.css"/> -->

    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Bootstrap JS is not required, but included for the responsive demo navigation and button states -->
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div id="links">
                <a href="img/download.jpg" title="Banana" data-gallery>
                    <img src="img/download.jpg" style="height: 80px; width: auto;" alt="Banana"></a>
                <a href="img/2.jpg" title="Apple" data-gallery>
                    <img src="img/2.jpg" style="height: 80px; width: auto;" alt="Apple"></a>
                <a href="img/3.jpg" title="Cricetino" data-gallery>
                    <img src="img/3.jpg" style="height: 80px; width: auto;" alt="Cricetino"></a>
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
    </form>
</body>
</html>
