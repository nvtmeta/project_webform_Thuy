<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products2.aspx.cs" Inherits="WebApplication7.Products2" %>

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
<div class="header" >
    <div class="container-fluid nav-list" style="box-shadow: rgb(221 221 221) 2px 2px 5px;">
        <div class="nav-left">
            <ul class="nav-left-1" >
                <li style="padding-top: 10px;">
                    <div style="width:50px; height:100px;">
                        <a href="Home.aspx">
                            <img src="img/logo_ssstuter.png" style="max-width:100%; max-height:100%" alt="">
                        </a>
                    </div>
                </li>
                <li class="nav-des d-lg-block d-none"><a href="Home.aspx" > Trang chủ </a></li>
                <li class="nav-des d-lg-block d-none"><a href="Products2.aspx"><b>Sản phẩm</b></a></li>
            </ul>
        </div>
        <div class="nav-right">
            <ul class="nav-left-1">
                <li class="nav-des"><a href="Products2.aspx" style="font-size:25px"><i class="fas fa-search"></i></a></li>
                <li class="nav-des"><a class="header-cart" href="javascript:void(0)" onclick="openCart()" style="font-size:25px"><i class="fas fa-cart-arrow-down"></i> <div class="cart-tag"><span class="total-items-in-cart">0</span> </div></a> </li>
                <li class="nav-des">
                    <div id="auth_check">

                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="content">
    <div class="swiper-container">
        <div  style="max-width: 100%;height: 220px;background:url(img/bg6.jpg)   center /cover no-repeat  ;">
            <div  style="background: rgba(0,0,0,0.1);height: 100%;position: relative;">
                <h1 style="position: absolute; top: 35%;right:45%; color: white;font-weight: 900;">Sản phẩm</h1>
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-white"></div>
        <!-- Add Arrows -->
    </div>
    <div class="container">
        <ul class="products">
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_sale-off">-->
<!--                            <span class="home-product-item_sale-off-percent">5.%</span>-->
<!--                            <span class="home-product-item_sale-off-label">SALE OFF</span>-->
<!--                            <span class="home-product-item_sale-off-tail"></span>-->
<!--                        </div>-->
<!--                        <div class="home-product-item_new">-->
<!--                            <span class="home-product-item_new">NEW</span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/productgirl1.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">T-SHIRT WITH CONTRAST SLOGAN</a>-->
<!--                        <div class="product-price text-danger">$10.00</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_sale-off">-->
<!--                            <span class="home-product-item_sale-off-percent">10%</span>-->
<!--                            <span class="home-product-item_sale-off-label">SALE OFF</span>-->
<!--                            <span class="home-product-item_sale-off-tail"></span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/productgirl2.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">EMBROIDERED DINA RAZIN T-SHIRT</a>-->
<!--                        <div class="product-price text-danger">$13.20</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_new">-->
<!--                            <span class="home-product-item_new">FREESHIP</span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/productgirl3.jpg" alt="" >-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">DISNEY'S PINOCCHIO T-SHIRT</a>-->
<!--                        <div class="product-price text-danger">$34.00</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_sale-off">-->
<!--                            <span class="home-product-item_sale-off-percent">50%</span>-->
<!--                            <span class="home-product-item_sale-off-label">SALE OFF</span>-->
<!--                            <span class="home-product-item_sale-off-tail"></span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/productgirl4.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">EMBROIDERED SILHOUETTE T-SHIRT</a>-->
<!--                        <div class="product-price text-danger">$29.70</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_new">-->
<!--                            <span class="home-product-item_new">HOT</span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/productgirl5.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">GIRL PRINT T-SHIRT</a>-->
<!--                        <div class="product-price text-danger">$19.00</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_sale-off">-->
<!--                            <span class="home-product-item_sale-off-percent">25%</span>-->
<!--                            <span class="home-product-item_sale-off-label">SALE OFF</span>-->
<!--                            <span class="home-product-item_sale-off-tail"></span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/productman2.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">PRINTED POWER LIGHT T-SHIRT</a>-->
<!--                        <div class="product-price text-danger">$22.00</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_new">-->
<!--                            <span class="home-product-item_new">FAVORITE</span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/p7.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">T-SHIRT WITH CONTRAST DESIGNS</a>-->
<!--                        <div class="product-price text-danger">$18.90</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
<!--            <li>-->
<!--                <div class="product-item">-->
<!--                    <div class="product-top">-->
<!--                        <div class="home-product-item_sale-off">-->
<!--                            <span class="home-product-item_sale-off-percent">10%</span>-->
<!--                            <span class="home-product-item_sale-off-label">SALE OFF</span>-->
<!--                            <span class="home-product-item_sale-off-tail"></span>-->
<!--                        </div>-->
<!--                        <div class="home-product-item_new">-->
<!--                            <span class="home-product-item_new">NEW</span>-->
<!--                        </div>-->
<!--                        <a href="" class="product-thumb">-->
<!--                            <img src="img/p8.jpg" alt="" srcset="">-->
<!--                        </a>-->
<!--                        <a href="" class="buy-now"><i class="fas fa-cart-plus"></i></a>-->
<!--                    </div>-->
<!--                    <div class="product-infor">-->
<!--                        <a href="" class="product-cat">T-shirt</a>-->
<!--                        <a href="" class="product-name">T-SHIRT WITH A LARISSA DE JESÚS NEGRÓN PRINT</a>-->
<!--                        <div class="product-price text-danger">$49.99</div>-->
<!--                    </div>-->
<!--                </div>-->
<!--            </li>-->
        </ul>
        <div class="cart">
            <div class="cart-header ">
                <p>Giỏ hàng</p>
                <a href="javascript:void(0)" class="close-cart"><i class="fas fa-times"></i></a>
                
            </div>
            <div class="cart-body cart-items">
                <!-- giỏ hàng-->
                <!--                <div class="cart-item">-->
                <!--                    <div class="item-image" >-->
                <!--                        <img src="img/productgirl2.jpg" alt="${item.name}">-->
                <!--                    </div>-->
                <!--                    <div class="item-info" >-->
                <!--                        <p>EMBROIDERED DINA RAZIN T-SHIRT</p>-->
                <!--                        <div class="units">-->
                <!--                            <div>Số lượng: </div>-->
                <!--                            <div class="btn minus" >-</div>-->
                <!--                            <div class="number">333</div>-->
                <!--                            <div class="btn plus" >+</div>-->
                <!--                        </div>-->
                <!--                        <div class="unit-price">-->
                <!--                            <small>$</small>555.555-->
                <!--                        </div>-->

                <!--                    </div>-->


                <!--                </div>-->
                <!-- giỏ hàng-->
            </div>
            <div class="card-footer">
                <div class="card-total">
                    <!--  <p>Thành tiền:</p>-->
                    <!-- <p>449,000</p>-->
                </div>
                <a href="CheckOut.aspx">
                    Thanh toán
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
    <div class="container" style="border-top:1px solid grey;">
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

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="js/account_info.js"></script>
<script src="js/products.js"></script>
<script src="js/cart.js"></script>
</body>
</html>