    
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proyecto_Final.index" %>

<%@ Register Src="~/ucFooter.ascx" TagPrefix="uc1" TagName="ucFooter" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Inicio</title>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>

    <link rel="stylesheet" href="css/bootstrap-social.css"/>
    <link rel="stylesheet" href="css/font-awesome.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
</head>
<body>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navegation-fm">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.aspx" class="navbar-brand">Inicio</a>
                </div>

                <div class="collapse navbar-collapse" id="navegation-fm">
                    <ul class="nav navbar-nav">
                        <li><a href="pags/ultimas_maraton.aspx">Ultima Maratón</a></li>
                    </ul>
                    <div class="navbar-form navbar-right">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/pags/inicioSesion.aspx" CssClass="btn btn-primary">Iniciar Sesión</asp:HyperLink>
                    </div>
                </div>
            </div>
        </nav>
    <header id="myCarousel" class="carousel slide">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <div class="imagen-slider1"></div>
                <div class="carousel-caption">
                    <h2>¡Corre en las grandes Maratones y se el mejor!</h2>
                </div>
            </div>
            <div class="item">
                <div class="imagen-slider2"></div>
                <div class="carousel-caption">
                    <h2>Competí</h2>
                </div>
            </div>
            <div class="item">
                <div class="imagen-slider3"></div>
                <div class="carousel-caption">
                    <h2>Grandes premios para premiarte por participar</h2>
                </div>
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>
    <div class="container-fluid">
        <div class="row inicio-sesion">
            <div class="col-lg-12 text-center">
                <h1>Participa de las grandes Maratones</h1>
                <p>Registrate gratis para poder ser uno de los próximos ganadores</p>
                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/pags/inicioSesion.aspx" runat="server" CssClass="btn btn-primary">Iniciar Sesión</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="~/pags/registro.aspx" runat="server" CssClass="btn btn-success">Registrate</asp:HyperLink>
            </div>
        </div>
        <footer class="text-center">
            <uc1:ucFooter runat="server" ID="ucFooter" />
        </footer>
    </div>
    <script src="js/jquery-1.11.3.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
           $('.carousel').carousel({
               interval: 5000
           })
    </script>
</body>
</html>
