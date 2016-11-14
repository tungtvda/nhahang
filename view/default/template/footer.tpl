</div>
</div><!-- #main-content -->
<div class="top_footer">
    <div class="container">
        <div class="row">
            <aside id="text-7" class="col-sm-12 text-center widget widget_text"><h3 class="widget-title">
                    Đăng ký nhận tin</h3>
                <div class="textwidget">
                    <script type="text/javascript">(function () {
                            if (!window.mc4wp) {
                                window.mc4wp = {
                                    listeners: [],
                                    forms: {
                                        on: function (event, callback) {
                                            window.mc4wp.listeners.push({
                                                event: event,
                                                callback: callback
                                            });
                                        }
                                    }
                                }
                            }
                        })();
                    </script>
                    <!-- MailChimp for WordPress v4.0.6 - https://wordpress.org/plugins/mailchimp-for-wp/ -->
                    <form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-1732" method="post" data-id="1732"
                          data-name="Newllester">
                        <div class="mc4wp-form-fields"><input type="email" name="EMAIL"
                                                              placeholder="Your email address" required/><input
                                    type="submit" value="Đăng ký"/>
                        </div>
                        <div class="mc4wp-response"></div>
                    </form><!-- / MailChimp for WordPress Plugin --></div>
            </aside>
        </div>
    </div>
</div>

<footer id="footer" class="site-footer border_bottom">
    <div class="footer">
        <div class="container">
            <div class="row">
                <aside id="echion_widget_single_image-6"
                       class="col-sm-12 text-center widget echion_Widget_Single_Image_class">
                    <div class="vi-single-image">
                        <img class="vi-single-image" src="{Logo}" alt="{name}" style="width: 100px">
                    </div>
                </aside>
                <aside id="text-6" class="col-sm-12 text-center widget widget_text">
                    <div class="textwidget">
                        <ul class="nav-horizontal">
                            <li><a href="{SITE-NAME}">TRANG CHỦ</a></li>
                            <li><a href="{SITE-NAME}/gioi-thieu/">GIỚI THIỆU</a></li>
                            <li><a href="{SITE-NAMR}/thuc-don/">THỰC ĐƠN</a></li>
                            <li><a href="{SITE-NAME}/cam-nang/">CẨM NANG</a></li>
                            <li><a href="{SITE-NAME}/lien-he/">LIÊN HỆ</a></li>
                            <li><a href="{SITE-NAME}/tuyen-dung/">TUYỂN DỤNG</a></li>
                        </ul>
                    </div>
                </aside>
                <aside id="text-5" class="col-sm-12 text-center widget widget_text">
                    <div class="textwidget"><p style="color:#26292d">
                            {address} <br/>
                            <a style="color: #ee2b2a;" href="mailto:{email}">{email}</a> / <a style="color: #ee2b2a;" href="tel:{Hotline}">{Hotline}</a>
                        </p></div>
                </aside>
                <aside id="widget_echion_social_links-3"
                       class="col-sm-12 text-center widget echion_social_links">
                    <ul class="echion_social_links basic">
                        <li><a target="_blank" class="face hasTooltip" href="{facebook}"><i class="fa fa-facebook"></i></a></li>
                        <li><a target="_blank" class="twitter hasTooltip" href="{twitter}"><i class="fa fa-twitter"></i></a></li>
                        <li><a target="_blank" class="google hasTooltip" href="{google}"><i class="fa fa-google-plus"></i></a></li>
                        <li><a target="_blank" class="linkedin hasTooltip" href="{linkedin}"><i class="fa fa-linkedin"></i></a></li>
                        <li><a target="_blank" class="instagram hasTooltip" href="{instagram}"><i class="fa fa-instagram"></i></a>
                    </ul>
                </aside>
            </div>
        </div>
    </div>
    <!--==============================powered=====================================-->
    <div id="powered">
        <div class="container">
            <div class="row">
                <div class="powered-table">
                    <div class="wrapper-copyright col-sm-12 text-center">
                        <div class="text-copyright"><p>Copyright © 2016 <a href="http://vietgardens.com/">Viet Gardens</a>.
                                All Rights Reserved.</p></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</div>
</div><!-- .wrapper-container -->
<!-- .box-area -->

{noibat_footer}
<script type="text/javascript">(function () {
        function addEventListener(element, event, handler) {
            if (element.addEventListener) {
                element.addEventListener(event, handler, false);
            } else if (element.attachEvent) {
                element.attachEvent('on' + event, handler);
            }
        }

        function maybePrefixUrlField() {
            if (this.value.trim() !== '' && this.value.indexOf('http') !== 0) {
                this.value = "http://" + this.value;
            }
        }

        var urlFields = document.querySelectorAll('.mc4wp-form input[type="url"]');
        if (urlFields && urlFields.length > 0) {
            for (var j = 0; j < urlFields.length; j++) {
                addEventListener(urlFields[j], 'blur', maybePrefixUrlField);
            }
        }
        /* test if browser supports date fields */
        var testInput = document.createElement('input');
        testInput.setAttribute('type', 'date');
        if (testInput.type !== 'date') {

            /* add placeholder & pattern to all date fields */
            var dateFields = document.querySelectorAll('.mc4wp-form input[type="date"]');
            for (var i = 0; i < dateFields.length; i++) {
                if (!dateFields[i].placeholder) {
                    dateFields[i].placeholder = 'YYYY-MM-DD';
                }
                if (!dateFields[i].pattern) {
                    dateFields[i].pattern = '[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])';
                }
            }
        }

    })();</script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/contact-form-7/includes/js/jquery.form.mind03d.js?ver=3.51.0-2014.06.20'></script>

<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-content/plugins/contact-form-7/includes/js/scripts8686.js?ver=4.5.1'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min72e6.js?ver=2.6.4'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.min005e.js?ver=3.1.6'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.init.min72e6.js?ver=2.6.4'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/frontend/single-product.min72e6.js?ver=2.6.4'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min44fd.js?ver=2.70'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min72e6.js?ver=2.6.4'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/jquery-cookie/jquery.cookie.min330a.js?ver=1.4.1'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/woocommerce/assets/js/frontend/cart-fragments.min72e6.js?ver=2.6.4'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/yith-woocommerce-compare/assets/js/woocompareffdc.js?ver=2.0.9'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/yith-woocommerce-compare/assets/js/jquery.colorbox-min13ac.js?ver=1.4.21'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.selectBox.min7359.js?ver=1.2.0'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.yith-wcwl9c6b.js?ver=2.0.16'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/themes/echion/assets/js/jquery.unveil.mina578.js?ver=3022016'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/themes/echion/assets/js/jquery.magnify.mine7f0.js?ver=1.3.1'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/comment-reply.min1c9b.js?ver=4.6.1'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/themes/echion/assets/js/jquery.mb-comingsoon.mina578.js?ver=3022016'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/themes/echion/assets/js/library-jquery.min1c9b.js?ver=4.6.1'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-content/themes/echion/assets/js/sideNav.min1c9b.js?ver=4.6.1'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-content/themes/echion/assets/js/theme.min1c9b.js?ver=4.6.1'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/jquery/ui/core.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/jquery/ui/datepicker.mine899.js?ver=1.11.4'></script>
<script type='text/javascript'>
    jQuery(document).ready(function (jQuery) {
        jQuery.datepicker.setDefaults({
            "closeText": "Close",
            "currentText": "Today",
            "monthNames": ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
            "monthNamesShort": ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            "nextText": "Next",
            "prevText": "Previous",
            "dayNames": ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
            "dayNamesShort": ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
            "dayNamesMin": ["S", "M", "T", "W", "T", "F", "S"],
            "dateFormat": "MM d, yy",
            "firstDay": 1,
            "isRTL": false
        });
    });
</script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/jquery/ui/widget.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/jquery/ui/button.mine899.js?ver=1.11.4'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/jquery/ui/spinner.mine899.js?ver=1.11.4'></script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/kingcomposer/assets/frontend/js/kingcomposer355d.js?ver=2.5.7'></script>
<script type='text/javascript' src='{SITE-NAME}/view/default/themes/wp-includes/js/wp-embed.min1c9b.js?ver=4.6.1'></script>
<script type='text/javascript'>
    /* <![CDATA[ */
    var mc4wp_forms_config = [];
    /* ]]> */
</script>
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/wp-content/plugins/mailchimp-for-wp/assets/js/forms-api.min8603.js?ver=4.0.6'></script>

</body>
</html>