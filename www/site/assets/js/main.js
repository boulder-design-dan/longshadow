jQuery(function($){

var LONGSHADOW = window.LONGSHADOW || {};

/* ==================================================
   Mobile Navigation
================================================== */
var mobileMenuClone = $('#menu').clone().attr('id', 'navigation-mobile');

LONGSHADOW.mobileNav = function(){
	var windowWidth = $(window).width();
	
	if( windowWidth <= 979 ) {
		if( $('#mobile-nav').length > 0 ) {
			mobileMenuClone.insertAfter('#menu');
			$('#navigation-mobile #menu-nav').attr('id', 'menu-nav-mobile');
		}
	} else {
		$('#navigation-mobile').css('display', 'none');
		if ($('#mobile-nav').hasClass('open')) {
			$('#mobile-nav').removeClass('open');	
		}
	}
}

LONGSHADOW.listenerMenu = function(){
	$('#mobile-nav').on('click', function(e){
		$(this).toggleClass('open');
		
		if ($('#mobile-nav').hasClass('open')) {
			$('#navigation-mobile').slideDown(500, 'easeOutExpo');
		} else {
			$('#navigation-mobile').slideUp(500, 'easeOutExpo');
		}
		e.preventDefault();
	});
	
	$('#menu-nav-mobile a').on('click', function(){
		$('#mobile-nav').removeClass('open');
		$('#navigation-mobile').slideUp(350, 'easeOutExpo');
	});
}


/* ======================================================
    responsive menu - NAVER
   ====================================================== */

    LONGSHADOW.responsiveMenu = function(){
        $('#menu-nav').slicknav({
            prependTo:'#menu',
            closeOnClick: 'true',
            label: 'Menu'
        });
}

/* ==================================================
   Slider Options
================================================== */

LONGSHADOW.slider = function(){
	$.supersized({
		// Functionality
		slideshow               :   1,			// Slideshow on/off
		autoplay				:	1,			// Slideshow starts playing automatically
		start_slide             :   1,			// Start slide (0 is random)
		stop_loop				:	0,			// Pauses slideshow on last slide
		random					: 	0,			// Randomize slide order (Ignores start slide)
		slide_interval          :   12000,		// Length between transitions
		transition              :   1, 			// 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
		transition_speed		:	1000,		// Speed of transition
		new_window				:	1,			// Image links open in new window/tab
		pause_hover             :   0,			// Pause slideshow on hover
		keyboard_nav            :   1,			// Keyboard navigation on/off
		performance				:	1,			// 0-Normal, 1-Hybrid speed/quality, 2-Optimizes image quality, 3-Optimizes transition speed // (Only works for Firefox/IE, not Webkit)
		image_protect			:	1,			// Disables image dragging and right click with Javascript
												   
		// Size & Position						   
		min_width		        :   0,			// Min width allowed (in pixels)
		min_height		        :   0,			// Min height allowed (in pixels)
		vertical_center         :   1,			// Vertically center background
		horizontal_center       :   1,			// Horizontally center background
		fit_always				:	0,			// Image will never exceed browser width or height (Ignores min. dimensions)
		fit_portrait         	:   1,			// Portrait images will not exceed browser height
		fit_landscape			:   0,			// Landscape images will not exceed browser width
												   
		// Components							
		slide_links				:	'blank',	// Individual links for each slide (Options: false, 'num', 'name', 'blank')
		thumb_links				:	0,			// Individual thumb links for each slide
		thumbnail_navigation    :   1,			// Thumbnail navigation
		slides 					:  	[			// Slideshow Images
											{image : '_include/img/slider-images/parallax-background-1.jpg', title : '<div class="slide-content">Longshadow</div>', thumb : '', url : ''},
											{image : '_include/img/slider-images/parallax-background-2.jpg', title : '<div class="slide-content">Longshadow</div>', thumb : '', url : ''},
											//{image : '_include/img/slider-images/parallax-background-1.jpg', title : '<div class="slide-content">LONGSHADOW</div>', thumb : '', url : ''},
											//{image : '_include/img/slider-images/parallax-background-1.jpg', title : '<div class="slide-content">LONGSHADOW</div>', thumb : '', url : ''}
									],
									
		// Theme Options			   
		progress_bar			:	0,			// Timer for each slide							
		mouse_scrub				:	0
		
	});

}


/* ==================================================
   'Day to come' background image stretch
================================================== */

LONGSHADOW.backgroundstretch = function(){

     $(".parallax-background-daystocome").backstretch("../site/assets/img/days-to-come.jpg");
}




/* ==================================================
   Navigation Fix
================================================== */

LONGSHADOW.nav = function(){
	$('.sticky-nav').waypoint('sticky');
}


/* ==================================================
   Filter Works
================================================== */

LONGSHADOW.filter = function (){
	if($('#projects').length > 0){		
		var $container = $('#projects');
		
		$container.isotope({
		  // options
		  animationEngine: 'best-available',
		  itemSelector : '.item-thumbs',
		  layoutMode : 'fitRows'
		});
	
		
		// filter items when filter link is clicked
		var $optionSets = $('#options .option-set'),
			$optionLinks = $optionSets.find('a');
	
		  $optionLinks.click(function(){
			var $this = $(this);
			// don't proceed if already selected
			if ( $this.hasClass('selected') ) {
			  return false;
			}
			var $optionSet = $this.parents('.option-set');
			$optionSet.find('.selected').removeClass('selected');
			$this.addClass('selected');
	  
			// make option object dynamically, i.e. { filter: '.my-filter-class' }
			var options = {},
				key = $optionSet.attr('data-option-key'),
				value = $this.attr('data-option-value');
			// parse 'false' as false boolean
			value = value === 'false' ? false : value;
			options[ key ] = value;
			if ( key === 'layoutMode' && typeof changeLayoutMode === 'function' ) {
			  // changes in layout modes need extra logic
			  changeLayoutMode( $this, options )
			} else {
			  // otherwise, apply new options
			  $container.isotope( options );
			}
			
			return false;
		});
	}
}


/* ==================================================
   FancyBox
================================================== */

LONGSHADOW.fancyBox = function(){
	if($('.fancybox').length > 0 || $('.fancybox-media').length > 0 || $('.fancybox-various').length > 0){
		
		$(".fancybox").fancybox({				
				padding : 0,
				beforeShow: function () {
					this.title = $(this.element).attr('title');
					this.title = '<h4>' + this.title + '</h4>' + '<p>' + $(this.element).parent().find('img').attr('alt') + '</p>';
				},
				helpers : {
					title : { type: 'inside' },
				}
			});
			
		$('.fancybox-media').fancybox({
			openEffect  : 'none',
			closeEffect : 'none',
			helpers : {
				media : {}
			}
		});
	}
}


/* ==================================================
   Contact Form
================================================== */

LONGSHADOW.contactForm = function(){
	$("#contact-submit").on('click',function() {
		$contact_form = $('#contact-form');
		
		var fields = $contact_form.serialize();
		
		$.ajax({
			type: "POST",
			url: "_include/php/contact.php",
			data: fields,
			dataType: 'json',
			success: function(response) {
				
				if(response.status){
					$('#contact-form input').val('');
					$('#contact-form textarea').val('');
				}
				
				$('#response').empty().html(response.html);
			}
		});
		return false;
	});
}


/* ==================================================
   Twitter Feed
================================================== */

LONGSHADOW.tweetFeed = function(){
	var valueTop = -64;
	
    $("#ticker").tweet({
          username: "Bluxart",
          page: 1,
          avatar_size: 0,
          count: 10,
		  template: "{text}{time}",
		  filter: function(t){ return ! /^@\w+/.test(t.tweet_raw_text); },
          loading_text: "loading ..."
	}).bind("loaded", function() {
	  var ul = $(this).find(".tweet_list");
	  var ticker = function() {
		setTimeout(function() {
			ul.find('li:first').animate( {marginTop: valueTop + 'px'}, 500, 'linear', function() {
				$(this).detach().appendTo(ul).removeAttr('style');
			});	
		  ticker();
		}, 5000);
	  };
	  ticker();
	});
	
}


/* ==================================================
   Menu Highlight
================================================== */

LONGSHADOW.menu = function(){
	$('#menu-nav, .slicknav_nav').onePageNav({
		currentClass: 'current',
    	changeHash: false,
    	scrollSpeed: 750,
    	scrollOffset: 30,
    	scrollThreshold: 0.5,
		easing: 'easeOutExpo',
		filter: ':not(.external)'
	});
}

/* ==================================================
   Next Section
================================================== */

LONGSHADOW.goSection = function(){
	$('#nextsection').on('click', function(){
		$target = $($(this).attr('href')).offset().top-30;
		
		$('body, html').animate({scrollTop : $target}, 750, 'easeOutExpo');
		return false;
	});
}

/* ==================================================
   GoUp
================================================== */

LONGSHADOW.goUp = function(){
	$('#goUp').on('click', function(){
		$target = $($(this).attr('href')).offset().top-30;
		
		$('body, html').animate({scrollTop : $target}, 750, 'easeOutExpo');
		return false;
	});
}


/* ==================================================
	Scroll to Top
================================================== */

LONGSHADOW.scrollToTop = function(){
	var windowWidth = $(window).width(),
		didScroll = false;

	var $arrow = $('#back-to-top');

	$arrow.click(function(e) {
		$('body,html').animate({ scrollTop: "0" }, 750, 'easeOutExpo' );
		e.preventDefault();
	})

	$(window).scroll(function() {
		didScroll = true;
	});

	setInterval(function() {
		if( didScroll ) {
			didScroll = false;

			if( $(window).scrollTop() > 1000 ) {
				$arrow.css('display', 'block');
			} else {
				$arrow.css('display', 'none');
			}
		}
	}, 250);
}

/* ==================================================
   Thumbs / Social Effects
================================================== */

LONGSHADOW.utils = function(){
	
	$('.item-thumbs').bind('touchstart', function(){
		$(".active").removeClass("active");
      	$(this).addClass('active');
    });
	
	$('.image-wrap').bind('touchstart', function(){
		$(".active").removeClass("active");
      	$(this).addClass('active');
    });
	
	$('#social ul li').bind('touchstart', function(){
		$(".active").removeClass("active");
      	$(this).addClass('active');
    });
	
}

/* ==================================================
   Accordion
================================================== */

LONGSHADOW.accordion = function(){
	var accordion_trigger = $('.accordion-heading.accordionize');
	
	accordion_trigger.delegate('.accordion-toggle','click', function(event){
		if($(this).hasClass('active')){
			$(this).removeClass('active');
		   	$(this).addClass('inactive');
		}
		else{
		  	accordion_trigger.find('.active').addClass('inactive');          
		  	accordion_trigger.find('.active').removeClass('active');   
		  	$(this).removeClass('inactive');
		  	$(this).addClass('active');
	 	}
		event.preventDefault();
	});
}

/* ==================================================
   Toggle
================================================== */

LONGSHADOW.toggle = function(){
	var accordion_trigger_toggle = $('.accordion-heading.togglize');
	
	accordion_trigger_toggle.delegate('.accordion-toggle','click', function(event){
		if($(this).hasClass('active')){
			$(this).removeClass('active');
		   	$(this).addClass('inactive');
		}
		else{
		  	$(this).removeClass('inactive');
		  	$(this).addClass('active');
	 	}
		event.preventDefault();
	});
}



/* ==================================================
  stellar
================================================== */

    LONGSHADOW.stellarBackground = function(){


        $.stellar({
            horizontalScrolling: false,
            parallaxBackgrounds: true

        });



    }

/* ==================================================
  tabs
================================================== */

    LONGSHADOW.basicTabs = function(){

        $('#basictabs > div').hide();
        $('#basictabs > div:first').show();
        $('#basictabs ul li:first').addClass('active');

            $('#basictabs ul li a').click(function(){
                    if(!$(this).hasClass('exclude')){
                        $('#basictabs ul li').removeClass('active');
                        $(this).parent().addClass('active');
                        var currentTab = $(this).attr('href');
                        $('#basictabs > div').hide();
                        $(currentTab).show();
                        return false;
                    }
                });


    }

/* ==================================================
    Scroll Opacity
 ===================================================*/

    LONGSHADOW.scrollOpacity = function(){

        var fadeStart=200 // 200px scroll or less will equiv to 1 opacity
            ,fadeUntil=600 // 600px scroll or more will equiv to 0 opacity
            ,fading0 = $('.parallax-background-0')
            ,fading1 = $('.parallax-background-1')
            ,fading2 = $('.parallax-background-2')
            ;


        $(window).bind('scroll', function(){
            var offset = $(document).scrollTop()
                ,opacity=0.15;
            if( offset<=fadeStart ){
                opacity=1;
            }else if( offset<=fadeUntil ){
                opacity=(1-offset/fadeUntil) + 0.15;
            }
            fading0.css('opacity',opacity);
            fading1.css('opacity',opacity);
            fading2.css('opacity',opacity);
        });



    }
/* ====================================================
    Rollover home page images
========================================================*/

    LONGSHADOW.rolloverImagesTooltip = function(){

        $('.homerollover').tooltipster({

            theme: '.longshadow-theme',
            position: 'bottom',
            arrow: 'false',
            offsetY : '200'
        });



    }

/* ====================================================
     panels and modal stuff ========================================================*/

    LONGSHADOW.panels = function(){

        $('#basicpanels').masonry({
            columnWidth: 300,
            "itemSelector": ".item"
        });



            $('.modalLink').modal({

                trigger: '.modalLink',

                olay:'div.overlay',

                modals:'div.modal',

                //animationEffect: 'slidedown',

                animationSpeed: 400,

                moveModalSpeed: 'slow',

                background: 'eee',

                opacity: 0.8,

                openOnLoad: false,

                docClose: true,

                closeByEscape: true,

                moveOnScroll: true,

                resizeWindow: true,

                //video:'http://player.vimeo.com/video/9641036?color=eb5a3d',

                close:'.closeBtn'

            });





    }




    /* ==================================================
        Init
    ================================================== */

//LONGSHADOW.slider();
    LONGSHADOW.stellarBackground();

$(document).ready(function(){
	/*
    Modernizr.load([
	{
		test: Modernizr.placeholder,
		nope: '_include/js/placeholder.js', 
		complete : function() {
				if (!Modernizr.placeholder) {
						Placeholders.init({
						live: true,
						hideOnFocus: false,
						className: "yourClass",
						textColor: "#999"
						});    
				}
		}
	}
	]);
*/

	LONGSHADOW.nav();
    //LONGSHADOW.mobileNav();
    LONGSHADOW.responsiveMenu();
    LONGSHADOW.basicTabs();
    LONGSHADOW.scrollOpacity();
	//LONGSHADOW.listenerMenu();
	LONGSHADOW.menu();
	LONGSHADOW.goSection();
	LONGSHADOW.goUp();
	//LONGSHADOW.filter();
	//LONGSHADOW.fancyBox();
	//LONGSHADOW.contactForm();
	//LONGSHADOW.tweetFeed();
	LONGSHADOW.scrollToTop();
	//LONGSHADOW.utils();
	//LONGSHADOW.accordion();
	//LONGSHADOW.toggle();
	LONGSHADOW.backgroundstretch();
    LONGSHADOW.rolloverImagesTooltip();
    LONGSHADOW.panels();


});
/*
$(window).resize(function(){
	LONGSHADOW.mobileNav();
});
*/
});
