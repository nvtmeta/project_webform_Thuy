<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication7.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ssstuter</title>
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styleProducts.css">
    <link rel="stylesheet" href="css/cart.css">
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fonts/fontawesome-free-5.15.2-web/css/all.min.css">
    <!--slide-->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
    <div class="header">
        <div class="container-fluid nav-list" style="box-shadow: rgb(221 221 221) 2px 2px 5px;">
            <div class="nav-left">
                <ul class="nav-left-1">
                    <li style="padding-top: 10px;">
                        <div style="width: 50px; height: 100px;">
                            <a href="Home.aspx">
                                <img src="img/logo_ssstuter.png" style="max-width: 100%; max-height: 100%" alt="">
                            </a>
                        </div>
                    </li>
                    <li class="nav-des d-lg-block d-none"><a href="Home.aspx"><b>Trang chủ</b> </a></li>
                    <li class="nav-des d-lg-block d-none"><a href="Products2.aspx">Sản phẩm</a></li>
                </ul>
            </div>
            <div class="nav-right">
                <ul class="nav-left-1">
                    <li class="nav-des"><a href="Products2.aspx" style="font-size: 25px"><i class="fas fa-search"></i></a></li>
                    <li class="nav-des"><a class="header-cart" href="javascript:void(0)" onclick="openCart()" style="font-size: 25px"><i class="fas fa-cart-arrow-down"></i>
                        <div class="cart-tag"><span class="total-items-in-cart">0</span> </div>
                    </a></li>
                    <li class="nav-des">
                        <div id="auth_check">
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="swiper-container banner-home">
            <div class="swiper-wrapper" style="max-width: 100%; height: 580px;">
                <div class="swiper-slide" style="background: url(img/bg4.jpg) top center /cover no-repeat;">
                    <div class="slide__content" style="background: rgba(0,0,0,0.1); height: 100%">
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(img/bg3.jpg) top center /cover no-repeat;">
                    <div class="slide__content" style="background: rgba(0,0,0,0.1); height: 100%">
                    </div>
                </div>
                <div class="swiper-slide" style="background: url(img/bg5.jpg) top center /cover no-repeat;">
                    <div class="slide__content" style="background: rgba(0,0,0,0.1); height: 100%">
                    </div>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Arrows -->
        </div>
        <div class="container">
            <div class="product_tittle">
                <h2 style="font-size: 30px; font-weight: bold">Sản phẩm mới</h2>
                <div class="button">
                    <a href="Products2.aspx" class="for_him">
                        <div class="for_him_1" style="clip-path: polygon(0 0, 100% 0, 90% 100%, 0% 100%); background: rgba(0, 0, 0, 0.3); background: rgba(0,0,0,0.3); height: 100%;">
                            <p style="padding-top: 50px; font-size: 40px; color: whitesmoke; font-weight: 500">For Him</p>
                        </div>
                    </a>
                    <a href="Products2.aspx" class="for_her">
                        <div class="for_her_1" style="clip-path: polygon(10% 0%,100% 0%,100% 100%,0% 100%); background: rgba(94, 47, 47, 0.3); background: rgba(0,0,0,0.3); height: 100%;">
                            <p style="padding-top: 50px; font-size: 40px; color: whitesmoke; font-weight: 500">For Her</p>
                        </div>
                    </a>
                </div>
                <ul class="products">
                    <asp:PlaceHolder ID="productRender" runat="server"></asp:PlaceHolder>
                </ul>
            </div>
            <div class="cart">
                <div class="cart-header ">
                    <p>Giỏ hàng</p>
                    <a href="javascript:void(0)" class="close-cart"><i class="fas fa-times"></i></a>

                </div>
                <div class="cart-body cart-items">
                    <!-- giỏ hàng-->
                </div>
                <div class="card-footer">
                    <div class="card-total">
                    </div>
                    <a href="CheckOut.aspx">Thanh toán
                    </a>
                </div>

            </div>
        </div>
    </div>
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="col-lg-2 col-xs-12 text-center">
                    <a href="javascript:void(0)"><i class="fa fa-facebook fa-2x"></i>Facebook</a>
                </div>
                <div class="col-lg-2 col-xs-12 text-center">
                    <a href="javascript:void(0)"><i class="fa fa-twitter fa-2x"></i>Twitter</a>
                </div>
                <div class="col-lg-2 col-xs-12 text-center">
                    <a href="javascript:void(0)"><i class="fa fa-flickr fa-2x"></i>Flickr</a>
                </div>
                <div class="col-lg-2 col-xs-12 text-center">
                    <a href="javascript:void(0)"><i class="fa fa-tumblr fa-2x"></i>Tumblr</a>
                </div>
                <div class="col-lg-2 col-xs-12 text-center">
                    <a href="javascript:void(0)"><i class="fa fa-github fa-2x"></i>Github</a>
                </div>
                <div class="col-lg-2 col-xs-12 text-center">
                    <a href="javascript:void(0)"><i class="fa fa-google-plus fa-2x"></i>Google</a>
                </div>
            </div>
        </div>
        <div class="container" style="border-top: 1px solid grey;">
            <div class="row text-center">
                <div class="col-lg-12 col-lg-offset-3">
                    <ul class="menu">
                        <li>
                            <a href="javascript:void(0)">Home</a>
                        </li>

                        <li>
                            <a href="javascript:void(0)">About</a>
                        </li>

                        <li>
                            <a href="javascript:void(0)">Blog</a>
                        </li>

                        <li>
                            <a href="javascript:void(0)">Gallery</a>
                        </li>

                        <li>
                            <a href="javascript:void(0)">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <div class="copyright">
        <div class="container">
            <div class="text-center">
                <p>Copyright © 2023 by Minh</p>
            </div>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/account_info.js"></script>

    <script src="js/products.js"></script>
    <script src="js/cart.js"></script>

    <script>
        var mySwiper = new Swiper('.swiper-container', {
            speed: 1000,
            effect: 'fade',
            autoplay: {
                delay: 3000
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
</body>
</html>
