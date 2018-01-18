$(document).ready( function() {
	var $texto = $(".sobre p");
	$texto.fadeOut();

	$(window).scroll(function (){
		var pix = $(window).scrollTop();
		if (pix > 450)  {
			$(".sobre p").fadeIn();
		}
		else {
			$(".sobre p").fadeOut();			
		}
	});

	$(".locais-item img").mouseover(function(){
		$(this).animate({opacity: 0.80})

	});

	$(".locais-item img").mouseout(function(){
		$(this).animate({opacity: 500})

	});
});