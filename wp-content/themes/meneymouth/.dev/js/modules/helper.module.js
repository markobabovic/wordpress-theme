var helperModule = (function($){

	var media = function(expression, matchCallback, mismatchCallback){
		if (matchMedia) {
			var mediaQuery = window.matchMedia(expression);
			mediaQuery.addListener(widthChange);
			widthChange(mediaQuery);
		}

		function widthChange(mediaQuery) {
			if (mediaQuery.matches){
				matchCallback();
			}else{
				(typeof mismatchCallback !== 'undefined') && mismatchCallback();
			}
		}
	},
	scrollTo = function(container, target, speed, offset, callback){
		var $container = $(container);
		var $scrollTo = $(target);

        $container.animate({scrollTop: $scrollTo.offset().top + offset, scrollLeft: 0},speed);

        setTimeout(function(){
            if ( isFunction( callback ) ){
                callback();
            }
        }, speed);

	},

	isFunction = function(functionToCheck) {
		return functionToCheck && {}.toString.call(functionToCheck) === '[object Function]';
	},

	isTouch = 'ontouchstart' in document.documentElement
	|| (navigator.MaxTouchPoints > 0)
	|| (navigator.msMaxTouchPoints > 0);

	if (isTouch) { // remove all :hover stylesheets
		try { // prevent exception on browsers not supporting DOM styleSheets properly
			for (var si in document.styleSheets) {
				var styleSheet = document.styleSheets[si];
				if (!styleSheet.rules) continue;

				for (var ri = styleSheet.rules.length - 1; ri >= 0; ri--) {
					if (!styleSheet.rules[ri].selectorText) continue;

					if (styleSheet.rules[ri].selectorText.match(':hover')) {
						styleSheet.deleteRule(ri);
					}
				}
			}
		} catch (ex) {}
	};

	$('img.svg').each(function(){
		var $img = jQuery(this);
		var imgID = $img.attr('id');
		var imgClass = $img.attr('class');
		var imgURL = $img.attr('src');

		$.get(imgURL, function(data) {
			// Get the SVG tag, ignore the rest
			var $svg = $(data).find('svg');

			// Add replaced image's ID to the new SVG
			if(typeof imgID !== 'undefined') {
				$svg = $svg.attr('id', imgID);
			}
			// Add replaced image's classes to the new SVG
			if(typeof imgClass !== 'undefined') {
				$svg = $svg.attr('class', imgClass+' replaced-svg');
			}

			// Remove any invalid XML tags as per http://validator.w3.org
			$svg = $svg.removeAttr('xmlns:a');

			// Replace image with new SVG
			$img.replaceWith($svg);

		}, 'xml');
	});


	return {
		media: media,
		isTouch: isTouch,
		scrollTo: scrollTo
	}

})(jQuery);
