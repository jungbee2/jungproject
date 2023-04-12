(function($){
	$(function(){
     // 게시판 상단메뉴 페이지인식작업
        var _href = location.href;
        var _docDomain = document.domain;
        _docDomain = _href.split(_docDomain)[1];
        var _docDomain_event = _docDomain.split('/board/')[1];
        
        $('.bbs_board_menu > a').each(function() {
            if(_docDomain == $(this).attr('href')) {
                $(this).addClass('bbs_on');
            }
        });

    });
})(jQuery);



