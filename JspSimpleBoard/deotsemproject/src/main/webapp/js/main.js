$(document).ready(function() {
    $('#fullpage').fullpage({
    verticalCentered: true,
    autoScrolling: true, /*스크롤시 자동 이동애니메이션*/
    scrollBar: false,    /*스크롤바 생성여부*/
    anchors: [ 'anchor1', 'anchor2', 'anchor3', 'anchor4'],
    scrollOverflow: true,
    menu: '#menu',
    sectionsColor: ['', '#fff','', '#fff', '#fff'],
    scrollOverflow: true /* 페이지오버시 스크롤*/
    });
    });
    
    
    