$(document).ready(function(){
	$(".signup").on("click", function(){
		location.href="sign/signupForm.jsp";
	});
	
	$(".nav-sub").hide();
	
	/* $(".nav-title").on("mouseover", function(){
		$(this).children(".nav-sub").stop().slideDown(200);
	}); */
	
	/* $(".nav-title-item").on("mouseover", function(){
		$(".nav-title").children(".nav-sub").stop().slideDown(200);
	}); */
	
	$(".nav-title-item, .nav-sub").on("mouseover", function(){
		$(this).parent(".nav-title").children(".nav-sub").stop().slideDown(200);
	});
	
	$(".nav-title").on("mouseleave", function(){
  		$(this).children(".nav-sub").stop().slideUp(200);
	});

});