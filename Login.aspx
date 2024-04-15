<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication7.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ssstuter</title>
    <link href="https://fonts.googleapis.com/css2?family=Barlow:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/styleProducts.css">
    <link rel="stylesheet" href="css/login.css">
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
                <li class="nav-des  d-lg-block d-none"><a href="Home.aspx" > Trang chủ </a></li>
                <li class="nav-des  d-lg-block d-none"><a href="Products2.aspx">Sản phẩm</a></li>
            </ul>
        </div>
        <div class="nav-right">
            <ul class="nav-left-1">
                <li class="nav-des"><a href="Products2.aspx" style="font-size:25px"><i class="fas fa-search"></i></a></li>
            </ul>
        </div>
    </div>
</div>
<div class="content">
    <div class="bg">
        <form class="login-form">
            <div class="bg-content">
                <div class="bg-content-first">
                    <div class="bg-content-first-general">
                        <p class="login_tittle">Đăng nhập</p>
                        <div id="error_msg" class="text-center text-danger" style="font-weight: bold"></div>
                        <div class="login_name">
                            <span></span>
                            <span><input type="text" placeholder="User name" name="user" id="username"></span>
                            <span><i class="fas fa-user"></i></span>
                        </div>
                        <div class="login_name">
                            <span></span>
                            <span><input type="password" placeholder="Pass word" name="password" id="password"></span>
                            <span><i class="fas fa-key"></i></span>
                        </div>
                        <div class="button_login">
                            <button type="submit" class="" >Log in</button>
                        </div>
                        <div class="login_name">
                            Don't have an account? <a href="regist.html"> Sign Up</a>
                        </div>
                    </div>

                </div>
            </div>
        </form>

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
            <div class="col-lg-12 col-lg-offset-3">
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
        <div class="text-center">
            <p>Copyright © 2023 by Minh</p>
        </div>

    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script><script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
    // Tạo mảng chứa tài khoản và mật khẩu với vị trí tài khoản và mật khẩu tương ứng
    var available_user_name = Array("namdo","nguyenmy","linhleo"),
        available_user_pass = Array("123456","123456","123456");
    const form = document.querySelector('.login-form');
    const err_msg = document.getElementById('error_msg');
    // submit form
    form.addEventListener('submit', function (e) {
        e.preventDefault(); // Ngăn sự kiện gửi đi
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        if (username !='' && password !=''){
            // Kiểm tra phần tử có trong mảng không
            if (available_user_name.includes(username)) {
                // Kiểm tra vị trí của tài khoản mật khẩu trong mảng có giống nhau không
                if (available_user_name.indexOf(username) == available_user_pass.indexOf(password)){
                    // Nếu giống thì đăng nhập thành công back về trang chủ
                    console.log("Đăng nhập thành công")
                    window.location.href='Home.aspx';
                    const user = {
                        username: username,
                        password: password,
                    }
                    // Lưu giỏ hàng vào local storage theo key "accountInfo"
                    localStorage.setItem("accountInfo", JSON.stringify(user));
                    err_msg.innerText= '';
                }else {
                    // sai in ra lỗi
                    err_msg.innerText = 'Tài khoản hoặc mật khẩu sai!';
                }
            }else {
                // sai in ra lỗi
                err_msg.innerText = 'Tài khoản không tồn tại!';
            }
        }else {
            err_msg.innerText = 'Vui lòng điền đầy đủ thông tin!';
        }

    });
</script>
</body>
</html>










\
