$(function() {

    sidebarMenuHeight();

    // needed for showing scrollbar when sidebar menu has greater height than sidebar itself (fixed sidebar only)
    function sidebarMenuHeight() {
        var sidebarSel = '.sidebar';
        var distanceFromSidebarToTop = 0;
        var newSidebarHeight = 0;

        $(window).on('load resize', function() {
            if ($(window).width() >= 768) {
                adjustSidebarMenuHeight();
            } else {
                $(sidebarSel).css('height', '');
            }
        });

        function adjustSidebarMenuHeight() {
            distanceFromSidebarToTop = $(sidebarSel).offset().top - $(window).scrollTop();
            newSidebarHeight = $(window).height() - distanceFromSidebarToTop;

            $(sidebarSel).height(newSidebarHeight);
        }
    }

});