<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication7.Product" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
  <title>Sản phẩm</title>
  <link rel="stylesheet" href="css/styleProducts.css">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">   
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">;
</head>
<body>
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
                <a href="Login.aspx">
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
 <div id="wrapper">
  
    <div class="headline">
    <h3>Women's Clothing</h3>
    </div> 
    <ul class="products">
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_sale-off">   
                <span class="home-product-item_sale-off-percent">5.%</span>
                <span class="home-product-item_sale-off-label">SALE OFF</span>
                <span class="home-product-item_sale-off-tail"></span>
              </div>
              <div class="home-product-item_new">
                <span class="home-product-item_new">NEW</span>
            </div>
            <a href="" class="product-thumb">
              <img src="img/p1.1.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">T-SHIRT WITH CONTRAST SLOGAN</a>
          <div class="product-price">$10.00</div>
          </div>
        </div>
      </li>
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_sale-off">   
                <span class="home-product-item_sale-off-percent">10%</span>
                <span class="home-product-item_sale-off-label">SALE OFF</span>
                <span class="home-product-item_sale-off-tail"></span>
              </div>
            <a href="" class="product-thumb">        
              <img src="img/p2.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">EMBROIDERED DINA RAZIN T-SHIRT</a>
          <div class="product-price">$13.20</div>
          </div>
        </div>
      </li>  
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_new">
                <span class="home-product-item_new">FREESHIP</span>
            </div>
            <a href="" class="product-thumb">
              <img src="img/p3.jpg" alt="" >
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">DISNEY'S PINOCCHIO T-SHIRT</a>
          <div class="product-price">$34.00</div>
          </div>
        </div>
      </li>  
      <li>
        <div class="product-item">
          <div class="product-top">     
        <div class="home-product-item_sale-off">   
            <span class="home-product-item_sale-off-percent">50%</span>
            <span class="home-product-item_sale-off-label">SALE OFF</span>
            <span class="home-product-item_sale-off-tail"></span>
          </div>
            <a href="" class="product-thumb">
              <img src="img/p4.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">EMBROIDERED SILHOUETTE T-SHIRT</a>
          <div class="product-price">$29.70</div>
          </div>
        </div>
      </li>  
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_new">
                <span class="home-product-item_new">HOT</span>
            </div>
            <a href="" class="product-thumb">
              <img src="img/p5.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">GIRL PRINT T-SHIRT</a>
          <div class="product-price">$19.00</div>
          </div>
        </div>
      </li>  
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_sale-off">   
                <span class="home-product-item_sale-off-percent">25%</span>
                <span class="home-product-item_sale-off-label">SALE OFF</span>
                <span class="home-product-item_sale-off-tail"></span>
              </div>
            <a href="" class="product-thumb">
              <img src="img/p6.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">PRINTED POWER LIGHT T-SHIRT</a>
          <div class="product-price">$22.00</div>
          </div>
        </div>
      </li>  
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_new">
                <span class="home-product-item_new">FAVORITE</span>
            </div>
            <a href="" class="product-thumb">
              <img src="img/p7.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">T-SHIRT WITH CONTRAST DESIGNS</a>
          <div class="product-price">$18.90</div>
          </div>
        </div>
      </li>  
      <li>
        <div class="product-item">
          <div class="product-top">
            <div class="home-product-item_sale-off">   
                <span class="home-product-item_sale-off-percent">10%</span>
                <span class="home-product-item_sale-off-label">SALE OFF</span>
                <span class="home-product-item_sale-off-tail"></span>
              </div>
            <div class="home-product-item_new">
                <span class="home-product-item_new">NEW</span>
            </div>
            <a href="" class="product-thumb">    
              <img src="img/p8.jpg" alt="" srcset="">
            </a>
            <a href="" class="buy-now">Buy now</a>
          </div> 
          <div class="product-infor">
            <a href="" class="product-cat">T-shirt</a>
            <a href="" class="product-name">T-SHIRT WITH A LARISSA DE JESÚS NEGRÓN PRINT</a>
          <div class="product-price">$49.99</div>
          </div>
        </div>
      </li>
    </ul>
 
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

  
</body>
</html>