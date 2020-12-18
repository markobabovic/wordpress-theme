var stickyHeaderModule = (function($){

    $(window).on('load', function(){
		stickyHeader();
		bodyPadding();
	});

    $(window).resize(function(e){
		bodyPadding();
	});

    $(document).scroll(function(e){
    	stickyHeader();
	});

	function bodyPadding() {
		var headerH = $(".site-header").outerHeight();
		if($("body").hasClass("transparent-header")){
			$("body").css("padding-top", 0);
		} else {
			$("body").css("padding-top", headerH);
		}
	}

    function stickyHeader(){
        var fromTop = $(document).scrollTop();

        if(fromTop>30){
            $("body").addClass("sticky-header");
        }
        else{
            $("body").removeClass("sticky-header");
        }
	}

})(jQuery);
