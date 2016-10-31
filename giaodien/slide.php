
<div class="kc-elm kc-css-696688 kc_row " style="margin-bottom: 20px">
    <div class="mySlides" >
        <div class="ms-slide-bgcont">
            <img src="themes/images/res1_slide2.jpg"
                 alt="" title="res1_slide1"
            >
        </div>
        <div class="ms-scroll-parallax-cont slide_div_1">
            <div class="ms-slide-layers">
                <div class="ms-anim-layers">
                    <img class="ms-layer ms-hover-active slide_img_1"
                         src="themes/images/slide_icon_3.png" alt="" >

                    <div class="ms-layer  msp-cn-2-8 ms-hover-active slide_div_2">
                        The Place Perfect To Eat
                    </div></br>
                    <img class="ms-layer ms-hover-active slide_img_2"  src="http://new2new.com/echion/wp-content/uploads/2016/07/slide_icon_4.png" alt=""></br>
                    <img class="ms-layer ms-hover-active slide_img_3" src="http://new2new.com/echion/wp-content/uploads/2016/07/slide_icon_5.png" alt="" >
                    <div class=""style="">
                        <a href="" target="_self" class="ms-layer ms-btn ms-btn-round ms-btn-n msp-preset-btn-159 slide_book_now"
                           style="">
                            Book Now</a></div>
                </div>
            </div>
        </div>
    </div>
    <div  class="mySlides">
        <div class="ms-slide-bgcont">
            <img src="themes/images/res1_slide1.jpg"
                 alt="" title="res1_slide1"
            >
        </div>
        <div class="ms-scroll-parallax-cont slide_div_1">
            <div class="ms-slide-layers">
                <div class="ms-anim-layers">
                    <img class="ms-layer ms-hover-active slide_img_1"
                         src="themes/images/slide_icon_3.png" alt="" >

                    <div class="ms-layer  msp-cn-2-8 ms-hover-active slide_div_2">
                        The Place Perfect To Eatasdfsadfasdfsadfs
                    </div></br>
                    <img class="ms-layer ms-hover-active slide_img_2"  src="http://new2new.com/echion/wp-content/uploads/2016/07/slide_icon_4.png" alt=""></br>
                    <img class="ms-layer ms-hover-active slide_img_3" src="http://new2new.com/echion/wp-content/uploads/2016/07/slide_icon_5.png" alt="" >
                    <div class=""style="">
                        <a href="" target="_self" class="ms-layer ms-btn ms-btn-round ms-btn-n msp-preset-btn-159 slide_book_now"
                           style="">
                            Book Now</a></div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
//    $("#slideshow > div:gt(0)").hide();
//
//    setInterval(function() {
//        $('#slideshow > div:first')
//            .fadeOut(1000)
//            .next()
//            .fadeIn(2000)
//            .end()
//            .appendTo('#slideshow');
//    }, 10000);
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 9000);
}
</script>
