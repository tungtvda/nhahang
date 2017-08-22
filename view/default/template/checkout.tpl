<div class="site-content">
    <div class="container">
        <div class="row">
            <main id="main" class="site-main col-sm-9 alignright page" role="main">
                <article id="post-8" class="post-8 page type-page status-publish hentry">
                    <div class="entry-content">
                        <div class="woocommerce">
                            <div {hidden_cart} class="woocommerce-info"></div>


                            <table {hidden_cart} class="shop_table cart" cellspacing="0">
                                <thead>
                                <tr>
                                    <th class="product-name">Thực đơn</th>
                                    <th class="product-price">Giá</th>
                                    <th class="product-quantity">Số lượng</th>
                                    <th class="product-subtotal">Thành tiền</th>
                                </tr>
                                </thead>
                                <tbody>

                                {list_cart}

                                </tbody>
                            </table>


                            <div {hidden_cart} class="cart-collaterals">
                                <div class="cart_totals">
                                    <div class="row">

                                        <div class="col-sm-6 ">


                                            <h2>Tổng tiền</h2>

                                            <table cellspacing="0">

                                                <tbody>
                                                <tr class="cart-subtotal">
                                                    <th>Subtotal</th>
                                                    <td><span class="woocommerce-Price-amount amount"><span
                                                                    class="woocommerce-Price-currencySymbol"></span>{total}
                                                            vnđ</span></td>
                                                </tr>


                                                <!--<tr class="order-total">
                                                    <th>Total</th>
                                                    <td><strong><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>87.24</span></strong> </td>
                                                </tr>-->


                                                </tbody>
                                            </table>


                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div {hidden_cart} class="woocommerce-info"></div>

                            <div id="comments" class="comments-area">
                                <div class="comment-respond-area">
                                    <div class="comment-respond">
                                        <h3 class="comment-reply-title title_lienquan title_checkout" style="text-align: center">
                                            Thông tin đặt bàn</h3>
                                    </div><!-- #respond -->
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="kc-elm kc-css-3615905 kc_row contact-form border_content_checkout">
                                <div class="kc-row-container  kc-container">
                                    <div class="kc-wrap-columns">

                                        <div class="kc-elm kc-css-1675461 kc_col-sm-12 kc_column ">
                                            <div class="kc-col-container">
                                                <div class="vi-otreservations style_white">
                                                    <form method="post" class="vi-otreservations-form"
                                                          action="">
                                                        <div class="vi-wrapper row">
                                                            <div class="vi-date-wrap col-sm-4">
                                                                <label for="date-otreservations">Chọn ngày *</label>
                                                                <div style="" class="wrapper-input">
                                                                    <input id="date-otreservations" name="date_book"
                                                                           required
                                                                           class="vi-reservation-date" type="text"
                                                                           value="">
                                                                </div>
                                                            </div>
                                                            <div class="vi-time-wrap col-sm-4">
                                                                <label for="time-otreservations">Chọn giờ *</label>
                                                                <div class="wrapper-input">
                                                                    <select id="time-otreservations" name="time_book"
                                                                            required
                                                                            class="vi-reservation-time">
                                                                        <option value="8:00am">8:00 am</option>
                                                                        <option value="8:30am">8:30 am</option>
                                                                        <option value="9:00am">9:00 am</option>
                                                                        <option value="9:30am">9:30 am</option>
                                                                        <option value="10:00am">10:00 am</option>
                                                                        <option value="10:30am">10:30 am</option>
                                                                        <option value="11:00am">11:00 am</option>
                                                                        <option value="11:30am">11:30 am</option>
                                                                        <option value="12:00pm">12:00 pm</option>
                                                                        <option value="12:30pm">12:30 pm</option>
                                                                        <option value="1:00pm">1:00 pm</option>
                                                                        <option value="1:30pm">1:30 pm</option>
                                                                        <option value="2:00pm">2:00 pm</option>
                                                                        <option value="2:30pm">2:30 pm</option>
                                                                        <option value="3:00pm">3:00 pm</option>
                                                                        <option value="3:30pm">3:30 pm</option>
                                                                        <option value="4:00pm">4:00 pm</option>
                                                                        <option value="4:30pm">4:30 pm</option>
                                                                        <option value="5:00pm">5:00 pm</option>
                                                                        <option value="5:30pm">5:30 pm</option>
                                                                        <option value="6:00pm">6:00 pm</option>
                                                                        <option value="6:30pm">6:30 pm</option>
                                                                        <option value="7:00pm">7:00 pm</option>
                                                                        <option value="7:30pm">7:30 pm</option>
                                                                        <option value="8:00pm">8:00 pm</option>
                                                                        <option value="8:30pm">8:30 pm</option>
                                                                        <option value="9:00pm">9:00 pm</option>
                                                                        <option value="9:30pm">9:30 pm</option>
                                                                        <option value="10:00pm">10:00 pm</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="vi-party-size-wrap col-sm-4">
                                                                <label for="party-otreservations">Số người *</label>
                                                                <div class="wrapper-input">
                                                                    <select id="party-otreservations" name="member_book"
                                                                            required
                                                                            class="vi-party-size-select">
                                                                        <option value="1">1 Người</option>
                                                                        <option value="2">2 Người</option>
                                                                        <option value="3">3 Người</option>
                                                                        <option value="4">4 Người</option>
                                                                        <option value="5">5 Người</option>
                                                                        <option value="6">6 Người</option>
                                                                        <option value="7">7 Người</option>
                                                                        <option value="8">8 Người</option>
                                                                        <option value="9">9 Người</option>
                                                                        <option value="10">10 Người</option>
                                                                        <option value="11">11 Người</option>
                                                                        <option value="12">12 Người</option>
                                                                        <option value="13">13 Người</option>
                                                                        <option value="14">14 Người</option>
                                                                        <option value="15">15 Người</option>
                                                                        <option value="16">16 Người</option>
                                                                        <option value="17">17 Người</option>
                                                                        <option value="18">18 Người</option>
                                                                        <option value="19">19 Người</option>
                                                                        <option value="20">20 Người</option>
                                                                        <option value="Trên 20 người">Trên 20 Người
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class=" col-sm-4">
                                                                <label for="date-otreservations"
                                                                       style="margin-top: 10px">Họ tên *</label>
                                                                <div class="wrapper-input">
                                                                    <input required name="name_book" required
                                                                           class="input_book" type="text"
                                                                           value="">
                                                                </div>
                                                            </div>
                                                            <div class=" col-sm-4">
                                                                <label for="date-otreservations"
                                                                       style="margin-top: 10px">Email *</label>
                                                                <div class="wrapper-input">
                                                                    <input required name="email_book" required
                                                                           class="input_book" type="email"
                                                                           value="">
                                                                </div>
                                                            </div>
                                                            <div class=" col-sm-4">
                                                                <label for="date-otreservations"
                                                                       style="margin-top: 10px">Điện thoại *</label>
                                                                <div class="wrapper-input">
                                                                    <input required name="phone_book" class="input_book"
                                                                           required type="text" value="">
                                                                </div>
                                                            </div>
                                                            <div class=" col-sm-12">
                                                                <label for="date-otreservations"
                                                                       style="margin-top: 10px">Yêu cầu</label>
                                                                <div class="wrapper-input">
                                                                    <textarea class="input_book"
                                                                              name="yeucau_book"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="vi-button-wrap col-sm-12">
                                                                <input type="submit"
                                                                       class="otreservations-submit btn-primary btn"
                                                                       name="datban_book"
                                                                       value="ĐẶT BÀN"/>
                                                            </div>
                                                        </div>
                                                    </form>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="comments" class="comments-area">
                                <div class="comment-respond-area">
                                    <div class="comment-respond">
                                        <h3 class="comment-reply-title title_lienquan title_checkout" style="text-align: center">
                                            Hình ảnh nhà hàng</h3>
                                    </div><!-- #respond -->
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="col-xs-12 border_content_checkout" id="gallery"
                                 style="display:none; margin-top: 15px; padding-left: 0px; padding-right: 0px; margin-bottom: 40px;     padding-bottom: 30px;">

                                <a href="">
                                    <img alt="Thỏ hấp"
                                         src="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20842167_1080973272033088_6786441811771293947_n.jpg?oh=c48f6be5787db0fba46d3b75dc36fb1f&oe=5A19C6F6"
                                         data-image="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20842167_1080973272033088_6786441811771293947_n.jpg?oh=c48f6be5787db0fba46d3b75dc36fb1f&oe=5A19C6F6"
                                         data-image-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20842167_1080973272033088_6786441811771293947_n.jpg?oh=c48f6be5787db0fba46d3b75dc36fb1f&oe=5A19C6F6"
                                         data-thumb-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20842167_1080973272033088_6786441811771293947_n.jpg?oh=c48f6be5787db0fba46d3b75dc36fb1f&oe=5A19C6F6"
                                         data-description="Thỏ hấp"
                                         style="display:none">
                                </a>

                                <a href="">
                                    <img alt="Thỏ xào sả ớt"
                                         src="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20770520_1080973242033091_8572254740341119727_n.jpg?oh=0d3f4c6f8c8c40d31d544599f28d2719&oe=5A3488E9"
                                         data-image="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20770520_1080973242033091_8572254740341119727_n.jpg?oh=0d3f4c6f8c8c40d31d544599f28d2719&oe=5A3488E9"
                                         data-image-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20770520_1080973242033091_8572254740341119727_n.jpg?oh=0d3f4c6f8c8c40d31d544599f28d2719&oe=5A3488E9"
                                         data-thumb-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20770520_1080973242033091_8572254740341119727_n.jpg?oh=0d3f4c6f8c8c40d31d544599f28d2719&oe=5A3488E9"
                                         data-description="Thỏ xào sả ớt"
                                         style="display:none">
                                </a>

                                <a href="">
                                    <img alt="Thỏ nướng ( Nướng Tây Bắc / Nướng muối tiêu ...)"
                                         src="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20799103_1080973195366429_2879725297967689529_n.jpg?oh=b08947b2514eb29c92ebb0ab09dacd59&oe=5A1B3AC1"
                                         data-image="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20799103_1080973195366429_2879725297967689529_n.jpg?oh=b08947b2514eb29c92ebb0ab09dacd59&oe=5A1B3AC1"
                                         data-image-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20799103_1080973195366429_2879725297967689529_n.jpg?oh=b08947b2514eb29c92ebb0ab09dacd59&oe=5A1B3AC1"
                                         data-thumb-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20799103_1080973195366429_2879725297967689529_n.jpg?oh=b08947b2514eb29c92ebb0ab09dacd59&oe=5A1B3AC1"
                                         data-description="Thỏ nướng ( Nướng Tây Bắc / Nướng muối tiêu ...)"
                                         style="display:none">
                                </a>
                                <a href="">
                                    <img alt="Ba ba rang muối "
                                         src="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20621972_1073113919485690_5968360325858012480_n.jpg?oh=e923f09ee58c657dfdf907f110170814&oe=5A13C37F"
                                         data-image="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20621972_1073113919485690_5968360325858012480_n.jpg?oh=e923f09ee58c657dfdf907f110170814&oe=5A13C37F"
                                         data-image-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20621972_1073113919485690_5968360325858012480_n.jpg?oh=e923f09ee58c657dfdf907f110170814&oe=5A13C37F"
                                         data-thumb-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20621972_1073113919485690_5968360325858012480_n.jpg?oh=e923f09ee58c657dfdf907f110170814&oe=5A13C37F"
                                         data-description="Ba ba rang muối "
                                         style="display:none">
                                </a>
                                <a href="">
                                    <img alt="Ba ba om chuối đậu"
                                         src="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20620834_1073113956152353_426021649928866929_n.jpg?oh=740df139ae9be492d694803e0160a4b2&oe=5A34B144"
                                         data-image="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20620834_1073113956152353_426021649928866929_n.jpg?oh=740df139ae9be492d694803e0160a4b2&oe=5A34B144"
                                         data-image-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20620834_1073113956152353_426021649928866929_n.jpg?oh=740df139ae9be492d694803e0160a4b2&oe=5A34B144"
                                         data-thumb-mobile="https://scontent.fhan5-3.fna.fbcdn.net/v/t1.0-9/20620834_1073113956152353_426021649928866929_n.jpg?oh=740df139ae9be492d694803e0160a4b2&oe=5A34B144"
                                         data-description="Ba ba om chuối đậu"
                                         style="display:none">
                                </a>


                            </div>

                            <div id="comments" class="comments-area ">
                                <div class="comment-respond-area">
                                    <div class="comment-respond">
                                        <h3 class="comment-reply-title title_lienquan title_checkout" style="text-align: center">
                                            Bản đồ</h3>
                                    </div><!-- #respond -->
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="col-xs-12 map_checkout border_content_checkout">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4428.99433431753!2d105.79927767243296!3d21.019659733038242!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x20765cb9bda9c145!2sNh%C3%A0+h%C3%A0ng+Vietgardens!5e0!3m2!1svi!2s!4v1503323212830"
                                        width="100%" height="450" frameborder="0" style="border:0"
                                        allowfullscreen></iframe>
                            </div>

                            <div id="comments" class="comments-area ">
                                <div class="comment-respond-area">
                                    <div class="comment-respond">
                                        <h3 class="comment-reply-title title_lienquan title_checkout" style="text-align: center">
                                           Giới thiệu VIETGARDEN</h3>
                                    </div><!-- #respond -->
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="col-xs-12 border_content_checkout">
                                <div class="post-formats-wrapper"><img width="1199" height="834"
                                                                       src="{img}"
                                                                       class="attachment-full size-full wp-post-image" alt="1"
                                                                       srcset="{img} 1199w, {img} 768w, {img} 220w"
                                                                       sizes="(max-width: 1199px) 100vw, 1199px"></div>
                                {gioi_thieu}
                            </div>
                        </div>
                    </div>
                    <!-- .entry-content -->

                </article><!-- #post-## -->
            </main>

