var accordianSlider = (function($){

    var allTextTabs = $(".wrap-accordion-tabs-slider .tab .tab-text").hide();
    var textTabsParent = $(".wrap-accordion-tabs-slider .tab");
    $(".wrap-accordion-tabs-slider .tab-heading").on('click', function(){

        var tabTextParent = $(this).parent();
        var tabText = $(this).next();

        if(tabTextParent.hasClass('active')){
            tabTextParent.removeClass('active');
            tabText.slideUp();
          }else{
            textTabsParent.removeClass('active');
            allTextTabs.slideUp();

            tabTextParent.addClass('active');
            tabText.slideDown();
          }

        return false;
    });

})(jQuery);
