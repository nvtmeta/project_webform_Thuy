<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication7.ShoppingCart" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="shortcut icon" href="#">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart </title>
    <link rel="stylesheet" href="css/styleIndex.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">;
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

</head>

<body>
    <div class="app-container">
        <div class="app-bg">
            <div class="left-side"></div>
            <div class="right-side"></div>
        </div>
        <header>
            <nav>
                <ul>
                    <li class="btn home">
                        <a href="./">
                            <img src="./icons/home.png" alt="">
                        </a>
                    </li>

                    <li>
                        <a href="Product.aspx">
                            Products
                        </a>
                    </li>
                    <li class="active">
                        <a href="#">
                            About
                        </a>
                    </li>
                    <li>
                        <a href="login.html">
                            Login
                        </a>
                    </li>

                    <li>
                        <div class="shopping-bag">
                            <a href="#">
                                <img src="./icons/bag.png" alt="cart">
                                Cart
                                <div class="total-items-in-cart">
                                    0
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>


            </nav>



        </header>
        <main>
            <div class="content">
                <div class="products-preview">
                    <div class="products-container">
                        <div class="product">
                            <img src="./img/t1.png" alt="t-shirt 1">
                        </div>
                        <div class="product">
                            <img src="./img/t2.png" alt="t-shirt 2">
                        </div>
                        <div class="product">
                            <img src="./img/t4.png" alt="t-shirt 3">
                        </div>
                    </div>
                    <div class="more-details">
                        <div class="see-more-btn">
                            <img src="./icons/right-arrow.png" alt="">
                            Details
                        </div>
                        <div class="description">
                            <small>New Season</small>
                            <h1>Men Tees - <small>$</small>29.99</h1>
                            <h1>Summer T-shirt</h1>
                        </div>
                    </div>
                </div>
                <div class="model">

                    <div class="product">
                        <img src="./img/t3.png" alt="t-shirt 4">
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div class="products-list">
        <div class="products">
            <!-- render porducts here -->
        </div>
        <div class="cart">
            <div class="cart-header">
                <div class="column1">Item</div>
                <div class="column2">Unit price</div>
                <div class="column3">Units</div>
            </div>
            <div class="cart-items">
                <!-- render cart items here -->
            </div>
            <div class="cart-footer">
                <div class="subtotal">
                    Subtotal (0 items): $0
                </div>
                <div class="checkout">
                    Proceed to checkout
                </div>
                <div class="closeShopping">
                    <h4>Close</h4>
                </div>
            </div>
        </div>

    </div>

    <footer>
        <div class="footer-top">
           <div class="container">
             <div class="col-lg-2 col-xs-12 text-center">
                 <a href="#"><i class="fa fa-facebook fa-2x"></i>Facebook</a>
             </div>
              <div class="col-lg-2 col-xs-12 text-center">
                 <a href="#"><i class="fa fa-twitter fa-2x"></i>Twitter</a>
             </div>
              <div class="col-lg-2 col-xs-12 text-center">
                 <a href="#"><i class="fa fa-flickr fa-2x"></i>Flickr</a>
             </div>
              <div class="col-lg-2 col-xs-12 text-center">
                 <a href="#"><i class="fa fa-tumblr fa-2x"></i>Tumblr</a>
             </div>
              <div class="col-lg-2 col-xs-12 text-center">
                 <a href="#"><i class="fa fa-github fa-2x"></i>Github</a>
             </div>
              <div class="col-lg-2 col-xs-12 text-center">
                 <a href="#"><i class="fa fa-google-plus fa-2x"></i>Google</a>
             </div>
           </div>
        </div>

        <div class="container" style="border-top:1px solid grey;">
            <div class="row text-center">
                <div class="col-lg-6 col-lg-offset-3">
                    <ul class="menu">
                        <li>
                            <a href="#">Home</a>
                        </li>

                        <li>
                            <a href="#">About</a>
                        </li>

                        <li>
                            <a href="#">Blog</a>
                        </li>

                        <li>
                            <a href="#">Gallery</a>
                        </li>

                        <li>
                            <a href="#">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    
    
    <div class="copyright">
       <div class="container">
       
         <div class="row text-center">
             <p>Copyright © 2023 by Minh</p>
         </div>
         
        </div>
    </div>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <script src="./products.js"></script>
    <script src="./app.js"></script>
</body>

</html>