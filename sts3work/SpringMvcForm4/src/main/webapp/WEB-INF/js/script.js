/**
 * 
 */
$(function(){
	
	//초기이미지
	$("#myimg").attr("src","../image/a.png")
	
	//이벤트
	$("#myimg").hover(function(){
		
		$(this).attr("src","../image/a01.png");
	},function(){
		$(this).attr("src","../image/a.png");
	});
});