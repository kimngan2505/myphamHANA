<?php
include 'inc/header.php';
//include 'inc/slider.php';
?>
    <div class="main">
        <div class="grid wide">
            <div class="main__breadcrumb">
                <div class="breadcrumb__item">
                    <a href="#" class="breadcrumb__link">Trang chủ</a>
                </div>
                <div class="breadcrumb__item">
                    <a href="#" class="breadcrumb__link">Giới thiệu</a>
                </div>
            </div>
            <div class="row">
                <div class="col l-6 m-12 s-12">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3928.841326247381!2d105.76816912192618!3d10.029949537382908!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a0895a51d60719%3A0x9d76b0035f6d53d0!2sCan%20Tho%20University!5e0!3m2!1sen!2s!4v1684147189704!5m2!1sen!2s"
                     width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="col l-6 m-12 s-12">
                    <div class="contact__wrap">
                        <div class="contact__img">
                            <img src="http://mauweb.monamedia.net/vanihome/wp-content/uploads/2018/04/logo-mona.png" alt="">
                        </div>
                        <ul class="contact__info">
                            <li class="contact__text">
                                <i class="fas fa-map-marked-alt"></i> 319 C16 Lý Thường Kiệt, Phường 15, Quận 11, Tp.HCM
                            </li>
                            <li>
                                <a href="tel:076 922 0162" class="contact__link">
                                    <i class="fas fa-phone"></i> 076 922 0162
                                </a>
                                <a href="tel:076 922 0162" class="contact__link">
                                    &#8212; 076 922 0162
                                </a>
                            </li>

                            <li>
                                <a href="#" class="contact__link">
                                    <i class="fas fa-envelope"></i> phuonggiang150@gmail.com
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="about-us">
                        <div class="about-us__heading">Liên hệ với chúng tôi</div>
                        <div class="form__group">
                            <div>
                                <input type="text" value="Họ và tên">
                            </div>
                            <div>
                                <input type="text" value="Email">
                            </div>
                            <div>
                                <input type="text" value="Địa chỉ">
                            </div>
                            <div>
                                <input type="text" value="Số điện thoại">
                            </div>
                        </div>
                        <textarea name="" id="" cols="30" rows="5" placeholder="Lời nhắn"></textarea>
                        <button type="submit" class="btn btn--default">Gửi</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
<?php
include 'inc/footer.php';
?>