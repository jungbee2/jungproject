/**
 * 
 */
$(function(){
	$("#photo").attr("src","../avata/01.png")
	
	$("#photo").hover(function(){
		$(this).attr("src","../avata/02.png")
	},function(){
		$(this).attr("src","../avata/03.png")
	});
});