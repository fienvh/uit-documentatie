$(document).ready(function(){
	$(".menu, .overlay").click(function() {
	  $( "body" ).toggleClass("menu-open");
	});
  $('.toc').scrollTop($('.toc-list-item.active').offset().top-100);
});
