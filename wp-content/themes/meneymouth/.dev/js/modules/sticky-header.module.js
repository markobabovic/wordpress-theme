var stickyHeaderModule = (function($){

    $(window).on('load', function(){
		stickyHeader();
    });

    $(document).scroll(function(e){
    	stickyHeader();
    });

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
