
/* -----------------------------
 NiceScroll
 ----------------------------- */
$(document).ready(function() {
	'use strict';
	$("html").niceScroll({
		cursorcolor : '#ffb400',
		cursoropacitymin : '1',
		cursorborder : '0px',
		cursorborderradius : '0px',
		cursorwidth : '3px',
		cursorminheight : 60,
		horizrailenabled : false,
		zindex : 1090
	});
});

$(function() {
	$('a[href*=#]:not([href=#])').click(
			function() {
				if (location.pathname.replace(/^\//, '') == this.pathname
						.replace(/^\//, '')
						&& location.hostname == this.hostname) {
					var target = $(this.hash);
					target = target.length ? target : $('[name='
							+ this.hash.slice(1) + ']');
					if (target.length) {
						$('html,body').animate({
							scrollTop : target.offset().top
						}, 1000);
						return false;
					}
				}
			});
});


	new WOW().init();

// var token = $("input[name=_token]").val();

function subscribe() {
	var email = $.trim($('#email_address').val());
	if (email != 0 && email != '') {
		$('#saveBtn').attr('disabled', true);
		$
				.ajax({
					url : '/subscribe/subscribeuser',
					type : 'POST',
					dataType : 'JSON',
					data : {
						'email_address' : email
					},
					success : function(data) {
						$('#saveBtn').attr('disabled', false);
						if (data != 0) {
							swal({
								title : "You are AWESOME!!",
								text : "We will let you know before everyone else. Promise!",
								type: "success",
								confirmButtonText: "OK"

							});
							$('#email_address').val('');
						} else {
							alertify
									.error('This is not an email or you are already registered!!');
						}
					}
				});
	} else {

		alertify.error('Email is required!!');
	}
}

//$(window).scroll(function() {
//	if ($(this).scrollTop() > 100) {
//		$('#default-header').removeClass('sticky-section-transparent');
//		$('#default-header').addClass('sticky-section');
//	} else {
//		$('#default-header').removeClass('sticky-section');
//		$('#default-header').addClass('sticky-section-transparent');
//	}
//});



//hide show navbar
//Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('#default-header').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();

    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;

    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('#default-header').removeClass('sticky-section').addClass('nav-up');
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('#default-header').removeClass('nav-up').addClass('sticky-section');
        }
    }

    lastScrollTop = st;
}


//on hover
$("#brand-name").hover(function(){
    $('#i').addClass('edge');
}, function(){
	$('#i').removeClass('edge');

});
