<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Opera.aspx.cs" Inherits="Opera" %>

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
    <link href="css/opera.css" rel="stylesheet" type="text/css" />

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
                <a class="navbar-brand" href="Homepage.aspx" style="color: black;">RobertoCedioli</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse" style="">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="Fotografie.aspx" style="color: black;">fotografie</a>
                    </li>
                    <li>
                        <a href="Materolistici.aspx" style="color: black; text-decoration: underline;">materolistici</a>
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

     <div class="section" style="padding-top: 0px;">
      <div class="container" style="padding-left: 50px; padding-right: 50px;">
        <div class="row">
            <br />
           <div class="col-md-1 hidden-sm hidden-xs"></div>
            
          <div class="col-md-3 hidden-sm hidden-xs">
              <asp:Repeater ID="repeaterImages" runat="server">
                <ItemTemplate>
                    <img src="<%# Eval("Immagine") %>" class="hidden-sm img-responsive " />
                    <br />
                </ItemTemplate>
            </asp:Repeater>
          </div>
            <asp:Repeater ID="repeaterPreview" runat="server">
                <ItemTemplate>
                    <div class="col-md-6">
                        <img src="<%# Eval("Preview") %>" class="img-responsive""> <br />
                        <h2><%# Eval("Titolo") %></h2>
                        <p><%# Eval("Descrizione") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
          
            <div class="col-md-2 hidden-sm hidden-xs"></div>
        </div>
      </div>
    </div>
    <div class="hidden-lg hidden-md section">
      <div class="container">
        <div class="row">
          <div class="col-sm-4">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
            class="img-responsive">
          </div>
          <div class="col-sm-4">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
            class="img-responsive">
          </div>
          <div class="col-sm-4">
            <img src="http://pingendo.github.io/pingendo-bootstrap/assets/placeholder.png"
            class="img-responsive">
          </div>
        </div>
      </div>
    </div>





</body>
</html>


