var hamburgerMenu = (function($){

    $(".hamburger-menu-btn").click(function (e) {
        e.preventDefault();
        e.stopPropagation();
        $("body").toggleClass("menu-active");

    });

    $(window).click(function () {
        $("body").removeClass("menu-active");
	});

})(jQuery);
