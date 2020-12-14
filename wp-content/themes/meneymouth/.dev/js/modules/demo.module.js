var accordianSlider = (function($){

	var heading = $(".accordian .item__heading");
	var subHeading = $(".accordian .item__body .body__item__heading");

	heading.add(subHeading).click(function() {
		var thisEl = $(this);
		var thisElParent = thisEl.parent()

		thisElParent.toggleClass("open");
	});

})(jQuery);
