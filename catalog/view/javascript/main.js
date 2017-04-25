$(document).ready(function() {
	// $(".social img").mouseover(function(){
	// 	var src = $(this).attr('src');
	// 	src.split(',');
	// 	alert(src);
	// 	$(this).attr('src',);
	// })

	var dopMenuLi = document.getElementById('submenuLi');
	var dopMenuDiv = document.getElementById('submenu');
	if(dopMenuLi){

		dopMenuLi.addEventListener('mouseover', function(){
			dopMenuDiv.style.height = '170px';
		})
		dopMenuLi.addEventListener('mouseout', function(){
			dopMenuDiv.style.height = '0';
		})
		dopMenuDiv.addEventListener('mouseover', function(){
			dopMenuDiv.style.height = '170px';
		})
		dopMenuDiv.addEventListener('mouseout', function(){
			dopMenuDiv.style.height = '0';
		})
	}

	$( "#nav-mob-button" ).click(function() {
		$( "#nav-mob-button" ).next().toggle("slow");
	});
	var dopMenuLi2 = document.getElementById('submenuLi2');
	var dopMenuDiv2 = document.getElementById('submenu2');
	if(dopMenuLi){

		dopMenuLi2.addEventListener('mouseover', function(){
			dopMenuDiv2.style.height = '170px';
		})
		dopMenuLi2.addEventListener('mouseout', function(){
			dopMenuDiv2.style.height = '0';
		})
		dopMenuDiv2.addEventListener('mouseover', function(){
			dopMenuDiv2.style.height = '170px';
		})
		dopMenuDiv2.addEventListener('mouseout', function(){
			dopMenuDiv2.style.height = '0';
		})
	}

	$( "#nav-mob ul > li a" ).click(function(event) {
		var nextItem = $(this).next();
		if(nextItem.hasClass('sub-menu')) {
			console.log(nextItem);
			event.preventDefault();
			nextItem.toggle('slow');
		} ;


	});



	$(".owl-carousel").owlCarousel({
		items:1,
		nav:false,
		loop:true,
		dots:true,
		autoplay:true,
		autoplayTimeout:4000,
		autoplaySpeed: 2000 ,
	});


	$('.extra-size').click(function(){
		$('#normal-size-block').hide();
		$('#extra-size-block').slideDown();
		$('.size-active').removeClass('size-active');
		$(this).addClass('size-active');

	});
	$('.normal-size').click(function(){
		$('#normal-size-block').slideDown();
		$('#extra-size-block').hide();
		$('.size-active').removeClass('size-active');
		$(this).addClass('size-active');

	});
	$('#leave-comment').click(function(){
		$('#review-block').toggle('slow');
	});

	var arrowUp = document.getElementById("arrow-up");
	window.onscroll = function() {

		var pageY = window.pageYOffset || document.documentElement.scrollTop;
		if (pageY > 300) {
			arrowUp.style.display ="block";
		}
		else{
			arrowUp.style.display ="none";
		};
	}

	arrowUp.addEventListener('click', function(){
		var body = $("html, body");
		body.stop().animate({scrollTop:0}, '500', 'swing');
	});

});