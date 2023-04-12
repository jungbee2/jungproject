/* 색상코드 화이트 */
$('.item-color span').each(function(){
    var atitle = $(this).attr('title');
    if ( atitle == '#ffffff' ||  atitle == '화이트' ||  atitle == '흰색') {
        $(this).addClass('white');
    } 
});


// 분류메뉴스크롤시 작아지는 코드
(function ($) {
    $(window).scroll(function () {
        var sc = $(window).scrollTop()
        if (sc > 80) {
            $("#header").addClass("small")
        } else {
            $("#header").removeClass("small")
        }
    });
})(jQuery);//사이드메뉴 열기
function openNav() {
    jQuery("#asideMenu").stop().animate({left:"0%"},300);
    jQuery("#asideClose").stop().animate({left:"100%"},300);
    jQuery("body").append('<div class="mask" onClick="closeNav()"></div>');
    jQuery(".mask").show();
    jQuery("body").css("overflow-y","hidden");
}    

//사이드메뉴 닫기
function closeNav() {
    jQuery("#asideMenu").stop().animate({left:"-100%"},300);
    jQuery("#asideClose").stop().animate({left:"-100%"},300);
    jQuery(".mask").hide();
    jQuery("#wrap").next().remove(".mask");
    jQuery("body").css("overflow-y","visible");
}

$(document).ready(function(){
    $(".nav ul").hide();
    $(".nav ul").click(function(){
        $("ul",this).slideToggle("fast");
    });
});

jQuery("aside nav .xi").click(function() {
    jQuery(this).parent().siblings().children("ul").hide();
    jQuery(this).parent().siblings().children(".xi-angle-down-min").removeClass("fa-rotate-180");
    jQuery(this).next("ul").toggle();

    if (jQuery(this).text() == "+") {
        jQuery(this).text("-");
    } else if (jQuery(this).text() == "-") {
        jQuery(this).text("+");
    } else {
        jQuery(this).toggleClass("fa-rotate-180");
    }
    return false
});



jQuery("#category").click(function() {
    jQuery(this).addClass("act").siblings().removeClass("act");
    jQuery(".navCategory").show();
    jQuery(".navCommunity, .navMypage").hide();
});
jQuery("#community").click(function() {
    jQuery(this).addClass("act").siblings().removeClass("act");
    jQuery(".navCommunity").show();
    jQuery(".navCategory, .navMypage").hide();
});
jQuery("#mypage").click(function() {
    jQuery(this).addClass("act").siblings().removeClass("act");
    jQuery(".navMypage").show();
    jQuery(".navCategory, .navCommunity").hide();
});


jQuery("#search").click(function() {
    jQuery("#header .search").toggle();
    jQuery("#keyword").focus()
});





// 검색창
(function ($) {
    $('.btn_search').click(function () {
        $('#modal_search').toggleClass('active');
        $('#ser_mask').toggleClass('active');
    });
    $('#ser_mask,.sch_close').click(function () {
        $('body,#modal_search,#ser_mask').removeClass('active');
    });
})(jQuery);




// 위아래이동움직임감지
(function ($) {
    $(document).ready(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 30) {
                $('#fix_pagescroll').addClass('active');
            } else {
                $('#fix_pagescroll').removeClass('active');
            }
        });
    });
})(jQuery);




// 메인 풀페이지상단메뉴스크롤시 작아지는 코드 
(function($) {
	setInterval(function(){
		$('#fullpage .section').each(function(){
			var len = $(this).index();
			var ac = $(this).hasClass('active');
			if($(this).hasClass("active") == true && len != 0) {
				$('#header').addClass('active');
			} else if ($(this).hasClass("active") == true && len == 0){
				$('#header').removeClass('active');
			}
		});
	},300);

})(jQuery);




// 분류메뉴스크롤시 작아지는 코드
(function ($) {
    $(window).scroll(function () {
        var sc = $(window).scrollTop()
        if (sc > 80) {
            $("#header").addClass("small")
        } else {
            $("#header").removeClass("small")
        }
    });
})(jQuery);


/* AOS */
AOS.init({easing: 'ease-in-out-sine'});