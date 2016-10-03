<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contatti.aspx.cs" Inherits="Contatti" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="cover">
        <div class="navbar">
            <div class="container">
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
                            <a href="Materolistici.aspx" style="color: white;">materolistici</a>
                        </li>
                        <li>
                            <a href="Fotografie.aspx" style="color: white;">fotografie</a>
                        </li>
                        <li>
                            <a href="Quadrimensionali.aspx" style="color: white;">quadrimensionali</a>
                        </li>
                        <li>
                            <a href="Contatti.aspx" style="color: white;">contatti</a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style="color: white;">IT&nbsp;<i class="fa fa-caret-down"></i></a>
                            <ul class="dropdown-menu" role="menu">
                                <li>
                                    <a href="#">EN</a>
                                </li>
                                <li>
                                    <a href="#">ES</a>
                                </li>
                                <li>
                                    <a href="#">RU</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="cover-image" style="background-image: url('img/Dettaglio_Homepage.jpg')"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jumbotron" style="background: rgba(54, 54, 54, 0.5);">
                    <h1 style="color: white; margin-bottom: 60px;">contattami</h1>
                    <h3 style="color: white;">E-Mail</h3>
                    <form class="form-horizontal" role="form" runat="server">
                        <div class="form-group">
                            <div class="col-sm-1">
                                <label for="inputEmail3" class="control-label" style="color: white;">Nome</label>
                            </div>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" id="inputEmail3" placeholder="Nome">
                            </div>
                            <div class="col-sm-1">
                                <label for="inputEmail3" class="control-label" style="color: white;">Email</label>
                            </div>
                            <div class="col-sm-5">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-1">
                                <label for="inputEmail3" class="control-label" style="color: white;">Testo</label>
                            </div>
                            <div class="col-sm-11">
                                <asp:TextBox ID="tbTesto" runat="server" CssClass="form-control" Placeholder="Testo" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-1 col-sm-10">
                                <button type="submit" class="btn btn-default">Invia</button>
                            </div>
                        </div>
                        <!--
                        <h3 style="color: white;">Telefono</h3>
                        <div class="form-group">
                            <div class="col-sm-offset-0 col-sm-1">
                                <a href="#"><i class="fa fa-3x fa-fw fa-phone-square text-inverse"></i></a>
                            </div>
                            <div class="col-sm-offset-0 col-sm-4">
                                <p style="color: white;">3486440700</p>
                            </div>
                        </div>
                        -->
                    </form>
                </div>
                </div>
            </div>
            
        </div>
            
        </div>
</body>
</html>
