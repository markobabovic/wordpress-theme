var homePageSlider = (function($){

	$('.wrap-slider-items').each(function(idx, item) {
		var carouselId = "carousel" + idx;

		$(this).next().next().addClass(carouselId);
		$(this).next().next().attr("data-id", carouselId);

		this.id = carouselId;
		$(this).slick({
			slidesToShow: 2,
			//lazyLoad: 'ondemand',
			slidesToScroll: 1,
			dots: true,
			arrows: false,
			autoplay: true,
			infinite: false,
			draggable: false,
			responsive: [{
				breakpoint: 768,
					settings: {
						dots: true,
						slidesToShow: 1,
						slidesToScroll: 1,
						draggable: true
					}
				}
			]
		});
	});

})(jQuery);
