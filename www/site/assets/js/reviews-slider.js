$(function() {
      $('.reviews-slides').slidesjs({
        width: 1000,
        height: 400,
        navigation: true,
	      callback: {
            loaded: function() {
	            $slidesParent.css("position","relative");
                showCaption(1);
            },
		    complete: function(n) {
			    showCaption(n);
		    },
		    start: function(n) {
			    hideAllCaptions();
		    }
	      },
	      play: {
	            auto: false,
	            interval: 9000,
	            active: false,
		        pauseOnHover: true
	      }
      });
    });
var $slidesParent = $(".reviews-slides").parent();
function showCaption(n) {
	var index = n-1;
	var slideId = "slideIndex_"+index;
	hideAllCaptions();
	var theCopy = $("#"+slideId).find(".slide-copy");
	theCopy.appendTo($slidesParent).fadeIn('fast').attr("id","slidecopy"+index).data("slideindex",index);

}
function hideAllCaptions() {
	$slidesParent.children(".slide-copy").each(function() {
		var slideid = $(this).data("slideindex");
		$(this).fadeOut("fast").appendTo($(".slideIndex_"+slideid));
	})
}