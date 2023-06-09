<?php
include 'inc/header.php';
//include 'inc/slider.php';
?>
        
    <div class="main">
        <div class="grid wide">
            <div class="productInfo">
                <div class="row">
                    <div class="col l-5 m-12 s-12">
                        <div class="owl-carousel owl-theme" id="sync1">
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product1.jpg)">
                                </div>
                            </a>
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product1.jpg)">
                                </div>
                            </a>
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product2.jpg)">
                                </div>
                            </a>
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product3.jpg)">
                                </div>
                            </a>
                        </div>
                        <div class="owl-carousel owl-theme" id="sync2">
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product1.jpg)">
                                </div>
                            </a>
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product1.jpg)">
                                </div>
                            </a>
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product2.jpg)">
                                </div>
                            </a>
                            <a href="#" class="product">
                                <div class="product__avt" style="background-image: url(assets/img/product/product3.jpg)">
                                </div>
                            </a>
                        </div>

                    </div>
                    <div class="col l-7 m-12s s-12 pl">
                        <div class="main__breadcrumb">
                            <div class="breadcrumb__item">
                                <a href="#" class="breadcrumb__link">Trang chủ</a>
                            </div>
                            <div class="breadcrumb__item">
                                <a href="#" class="breadcrumb__link">Cửa hàng</a>
                            </div>
                            <div class="breadcrumb__item">
                                <a href="#" class="breadcrumb__link">Hãng DHC</a>
                            </div>
                        </div>
                        <h3 class="productInfo__name">
                            Azrouel dress variable
                        </h3>
                        <div class="productInfo__price">
                            330.000 <span class="priceInfo__unit">đ</span>
                        </div>
                        <div class="productInfo__description">
                            <span> Lorem Ipsum </span> chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành công nghiệp in ấn
                        </div>

                        <div class="productInfo__addToCart">
                            <div class="buttons_added">
                                <input class="minus is-form" type="button" value="-" onclick="minusProduct()">
                                <input aria-label="quantity" class="input-qty" max="10" min="1" name="" type="number" value="1">
                                <input class="plus is-form" type="button" value="+" onclick="plusProduct()">
                            </div>
                            <div class=" btn btn--default orange ">Thêm vào giỏ</div>
                        </div>
                        <div class="productIndfo__policy ">
                            <div class="policy bg-1 ">
                                <img src="./assets/img/policy/policy1.png " class="productIndfo__policy-img "></img>
                                <div class="productIndfo__policy-info ">
                                    <h3 class="productIndfo__policy-title ">Giao hàng miễn phí</h3>
                                    <p class="productIndfo__policy-description ">Cho đơn hàng từ 300K</p>
                                </div>
                            </div>
                            <div class="policy bg-2 ">
                                <img src="./assets/img/policy/policy2.png " class="productIndfo__policy-img "></img>
                                <div class="productIndfo__policy-info ">
                                    <h3 class="productIndfo__policy-title ">Giao hàng miễn phí</h3>
                                    <p class="productIndfo__policy-description ">Cho đơn hàng từ 300K</p>
                                </div>
                            </div>
                            <div class="policy bg-1 ">
                                <img src="./assets/img/policy/policy3.png " class="productIndfo__policy-img "></img>
                                <div class="productIndfo__policy-info ">
                                    <h3 class="productIndfo__policy-title ">Giao hàng miễn phí</h3>
                                    <p class="productIndfo__policy-description ">Cho đơn hàng từ 300K</p>
                                </div>
                            </div>
                            <div class="policy bg-2 ">
                                <img src="./assets/img/policy/policy4.png " class="productIndfo__policy-img "></img>
                                <div class="productIndfo__policy-info ">
                                    <h3 class="productIndfo__policy-title ">Giao hàng miễn phí</h3>
                                    <p class="productIndfo__policy-description ">Cho đơn hàng từ 300K</p>
                                </div>
                            </div>
                        </div>
                        <div class="productIndfo__category ">
                            <p class="productIndfo__category-text"> Danh mục : <a href="# " class="productIndfo__category-link ">Nail</a></p>
                            <p class="productIndfo__category-text"> Hãng : <a href="# " class="productIndfo__category-link ">The Face Shop</a></p>
                            <p class="productIndfo__category-text"> Số lượng đã bán : 322</p>
                            <p class="productIndfo__category-text"> Số lượng trong kho : 322</p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="productDetail ">
                <div class="main__tabnine ">
                    <div class="grid wide ">
                        <!-- Tab items -->
                        <div class="tabs ">
                            <div class="tab-item active ">
                                Mô tả
                            </div>
                            <div class="tab-item ">
                                Đánh giá
                            </div>
                            <div class="line "></div>
                        </div>
                        <!-- Tab content -->
                        <div class="tab-content ">
                            <div class="tab-pane active ">
                                <div class="productDes ">
                                    <div class="productDes__title ">Lorem Ipsum là gì?</div>
                                    <p class="productDes__text "> <a href="# " class="productDes__link ">Lorem Ipsum </a> chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành
                                        công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học
                                        văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang,
                                        như Aldus PageMaker.
                                    </p>
                                    <div class="productDes__title ">Lorem Ipsum là gì?</div>
                                    <p class="productDes__text "> <a href="# " class="productDes__link ">Lorem Ipsum </a> chỉ đơn giản là một đoạn văn bản giả, được dùng vào việc trình bày và dàn trang phục vụ cho in ấn. Lorem Ipsum đã được sử dụng như một văn bản chuẩn cho ngành
                                        công nghiệp in ấn từ những năm 1500, khi một họa sĩ vô danh ghép nhiều đoạn văn bản với nhau để tạo thành một bản mẫu văn bản. Đoạn văn bản này không những đã tồn tại năm thế kỉ, mà khi được áp dụng vào tin học
                                        văn phòng, nội dung của nó vẫn không hề bị thay đổi. Nó đã được phổ biến trong những năm 1960 nhờ việc bán những bản giấy Letraset in những đoạn Lorem Ipsum, và gần đây hơn, được sử dụng trong các ứng dụng dàn trang,
                                        như Aldus PageMaker.
                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane ">
                                <div class="productDes__ratting ">
                                    <div class="productDes__ratting-title ">Đánh giá của bạn</div>
                                    <div class="productDes__ratting-wrap">
                                        <div id="rating">
                                            <input type="radio" id="star5" name="rating" value="5" />
                                            <label class="full" for="star5" title="Awesome - 5 stars"></label>

                                            <input type="radio" id="star4half" name="rating" value="4 and a half" />
                                            <label class="half" for="star4half" title="Pretty good - 4.5 stars"></label>

                                            <input type="radio" id="star4" name="rating" value="4" />
                                            <label class="full" for="star4" title="Pretty good - 4 stars"></label>

                                            <input type="radio" id="star3half" name="rating" value="3 and a half" />
                                            <label class="half" for="star3half" title="Meh - 3.5 stars"></label>

                                            <input type="radio" id="star3" name="rating" value="3" />
                                            <label class="full" for="star3" title="Meh - 3 stars"></label>

                                            <input type="radio" id="star2half" name="rating" value="2 and a half" />
                                            <label class="half" for="star2half" title="Kinda bad - 2.5 stars"></label>

                                            <input type="radio" id="star2" name="rating" value="2" />
                                            <label class="full" for="star2" title="Kinda bad - 2 stars"></label>

                                            <input type="radio" id="star1half" name="rating" value="1 and a half" />
                                            <label class="half" for="star1half" title="Meh - 1.5 stars"></label>

                                            <input type="radio" id="star1" name="rating" value="1" />
                                            <label class="full" for="star1" title="Sucks big time - 1 star"></label>

                                            <input type="radio" id="starhalf" name="rating" value="half" />
                                            <label class="half" for="starhalf" title="Sucks big time - 0.5 stars"></label>
                                        </div>
                                        <textarea class="ratecomment" name=" " id=" " cols="30 " rows="1" placeholder="Vui lòng viết đánh giá của bạn "></textarea>
                                    </div>
                                    <input type="submit " class="btn btn--default" value="Đánh giá">
                                </div>
                                <ul class="rate__list">
                                    <li class="rate__item">
                                        <div class="rate__info">
                                            <img src="https://lh3.googleusercontent.com/ogw/ADGmqu9PFgn_rHIm9i3eIlVr5RwzwY2w8EystHF213wj=s32-c-mo" alt="">
                                            <h3 class="rate__user">Giang Tuấn Phương</h3>
                                            <div class="rate__star">
                                                <div class="group-star">
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star-half-alt"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="rate__comment">Sản phẩm chất lượng rất tốt thật tuyệt vời</div>
                                    </li>
                                    <li class="rate__item">
                                        <div class="rate__info">
                                            <img src="https://lh3.googleusercontent.com/ogw/ADGmqu9PFgn_rHIm9i3eIlVr5RwzwY2w8EystHF213wj=s32-c-mo" alt="">
                                            <h3 class="rate__user">Giang Tuấn Phương</h3>
                                            <div class="rate__star">

                                            </div>
                                        </div>
                                        <div class="rate__comment">Sản phẩm chất lượng rất tốt</div>
                                    </li>
                                    <li class="rate__item">
                                        <div class="rate__info">
                                            <img src="https://lh3.googleusercontent.com/ogw/ADGmqu9PFgn_rHIm9i3eIlVr5RwzwY2w8EystHF213wj=s32-c-mo" alt="">
                                            <h3 class="rate__user">Giang Tuấn Phương</h3>
                                            <div class="rate__star">

                                            </div>
                                        </div>
                                        <div class="rate__comment">Sản phẩm chất lượng rất tốt</div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main__frame ">
                <div class="grid wide ">
                    <h3 class="category__title ">Ngọc Ánh Cometics</h3>
                    <h3 class="category__heading ">Sản Phẩm Tương tự</h3>
                    <div class="owl-carousel hight owl-theme ">
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product1.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product1.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product2.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product3.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product4.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product5.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product6.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product4.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product6.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product1.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                        <a href="# " class="product ">
                            <div class="product__avt " style="background-image: url(assets/img/product/product4.jpg) ">
                            </div>
                            <div class="product__info ">
                                <h3 class="product__name ">Framed-Sleeve Tops Group</h3>
                                <div class="product__price ">
                                    <div class="price__old ">340.000 <span class="price__unit ">đ</span></div>
                                    <div class="price__new ">320.000 <span class="price__unit ">đ</span></div>
                                </div>
                            </div>
                            <div class="product__sale ">
                                <span class="product__sale-percent ">22%</span>
                                <span class="product__sale-text ">Giảm</span>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <?php
include 'inc/footer.php';

?>