<!DOCTYPE html>
<html lang="en">
<!-- https://cocoshop.vn/ -->
<!-- http://mauweb.monamedia.net/vanihome/ -->

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sản phẩm</title>
    <!-- Font roboto -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <!-- Icon fontanwesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <!-- Reset css & grid sytem -->
    <link rel="stylesheet" href="./assets/css/library.css">
    <link href="./assets/owlCarousel/assets/owl.carousel.min.css" rel="stylesheet" />
    <!-- Layout -->
    <link rel="stylesheet" href="./assets/css/common.css">
    <!-- index -->
    <link href="./assets/css/home.css" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- Owl caroucel Js-->
    <script src="./assets/owlCarousel/owl.carousel.min.js"></script>

</head>

<body>
    <div class="header scrolling" id="myHeader">
        <div class="grid wide">
            <div class="header__top">
                <div class="navbar-icon">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                <a href="index.php" class="header__logo">
                    <img src="./image/logo.png" width= "80px";  alt="">
                </a>
                <div class="header__search">
                    <div class="header__search-wrap">
                        <input type="text" class="header__search-input" placeholder="Tìm kiếm">
                        <a class="header__search-icon" href="#">
                            <i class="fas fa-search"></i>
                        </a>
                    </div>
                </div>
                <div class="header__account">
                    <a href="#my-Login" class="header__account-login">Đăng Nhập</a>
                    <a href="#my-Register" class="header__account-register">Đăng Kí</a>
                </div>
                <!-- Cart -->
                <div class="header__cart have" href="#">
                    <i class="fas fa-shopping-basket"></i>
                    <div class="header__cart-amount">
                        3
                    </div>
                    <div class="header__cart-wrap">
                        <ul class="order__list">
                            <li class="item-order">
                                <div class="order-wrap">
                                    <a href="product.php" class="order-img">
                                        <img src="./assets/img/product/product1.jpg" alt="">
                                    </a>
                                    <div class="order-main">
                                        <a href="product.php" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                        <div class="order-main-price">2 x 45,000 ₫</div>
                                    </div>
                                    <a href="product.php" class="order-close"><i class="far fa-times-circle"></i></a>
                                </div>
                            </li>
                            <li class="item-order">
                                <div class="order-wrap">
                                    <a href="product.php" class="order-img">
                                        <img src="./assets/img/product/product1.jpg" alt="">
                                    </a>
                                    <div class="order-main">
                                        <a href="product.php" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                        <div class="order-main-price">2 x 45,000 ₫</div>
                                    </div>
                                    <a href="product.php" class="order-close"><i class="far fa-times-circle"></i></a>
                                </div>
                            </li>
                            <li class="item-order">
                                <div class="order-wrap">
                                    <a href="product.php" class="order-img">
                                        <img src="./assets/img/product/product1.jpg" alt="">
                                    </a>
                                    <div class="order-main">
                                        <a href="product.php" class="order-main-name">Áo sơ mi  caro kèm belt caro kèm belt Áo sơ mi caro kèm belt</a>
                                        <div class="order-main-price">2 x 45,000 ₫</div>
                                    </div>
                                    <a href="product.php" class="order-close"><i class="far fa-times-circle"></i></a>
                                </div>
                            </li>
                        </ul>
                        <div class="total-money">Tổng cộng: 120.000đ</div>
                        <a href="cart.php" class="btn btn--default cart-btn">Xem giỏ hàng</a>
                        <a href="pay.php" class="btn btn--default cart-btn orange">Thanh toán</a>
                        <!-- norcart -->
                        <!-- <img class="header__cart-img-nocart" src="http://www.giaybinhduong.com/images/empty-cart.png" alt=""> -->
                    </div>
                </div>
            </div>
        </div>
      