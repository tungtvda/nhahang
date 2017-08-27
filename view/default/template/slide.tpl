
<div class="kc-elm kc-css-696688 kc_row slide_bg" style="background: url('{bg_slide}')">
   <div class="col-md-5 col-sm-6 col-xs-12 table_slide">
       <div class="vi-otreservations style_white">
           <form method="post" class="vi-otreservations-form"
                 action="">
               <div class="vi-wrapper row">
                   <div class="vi-date-wrap col-sm-6">
                       <label for="date-otreservations">Chọn ngày *</label>
                       <div style="" class="wrapper-input">
                           <input id="date-otreservations" name="date_book" required
                                  class="vi-reservation-date input_slide" type="text"
                                  value="">
                       </div>
                   </div>
                   <div class="vi-time-wrap col-sm-6">
                       <label for="time-otreservations">Chọn giờ *</label>
                       <div class="wrapper-input">
                           <select id="time-otreservations" name="time_book" required
                                   class="vi-reservation-time input_slide">
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
                   <div class=" col-sm-6">
                       <label for="date-otreservations" style="margin-top: 10px">Họ tên *</label>
                       <div class="wrapper-input">
                           <input  required name="name_book" required
                                   class="input_book input_slide" type="text"
                                   value="">
                       </div>
                   </div>
                   <div class="vi-party-size-wrap col-sm-6">
                       <label for="party-otreservations">Số người *</label>
                       <div class="wrapper-input">
                           <select id="party-otreservations" name="member_book" required
                                   class="vi-party-size-select input_slide">
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
                               <option value="Trên 20 người">Trên 20 Người</option>
                           </select>
                       </div>
                   </div>

                   <div class=" col-sm-6">
                       <label for="date-otreservations" style="margin-top: 10px">Email *</label>
                       <div class="wrapper-input">
                           <input  required name="email_book" required
                                   class="input_book input_slide" type="email"
                                   value="">
                       </div>
                   </div>
                   <div class=" col-sm-6">
                       <label for="date-otreservations" style="margin-top: 10px">Điện thoại *</label>
                       <div class="wrapper-input">
                           <input required name="phone_book" class="input_book input_slide" required type="text" value="">
                       </div>
                   </div>
                   <div class=" col-sm-12">
                       <label for="date-otreservations" style="margin-top: 10px">Yêu cầu</label>
                       <div class="wrapper-input">
                           <textarea class="input_book input_slide" name="yeucau_book"></textarea>
                       </div>
                   </div>
                   <div class="vi-button-wrap col-sm-12">
                       <input type="submit" class="otreservations-submit btn-primary btn" name="datban_book"
                              value="ĐẶT BÀN"/>
                   </div>
               </div>
           </form>

       </div>
   </div>
    <div class="col-md-7 col-sm-6 col-xs-12 img_slide">
       {slide}
    </div>
</div>

<script>
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
