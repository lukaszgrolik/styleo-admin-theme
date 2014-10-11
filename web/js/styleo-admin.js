$(function() {

    var sidebarSel = '.sidebar';

    sbAdmin2FeaturesInit();

    if ($(sidebarSel).length) {
        sidebarMenuHeight();
    }

    $('.scroll-container').slimScroll({
        height: '100%'
    });

    // needed for showing scrollbar when sidebar menu has greater height than sidebar itself (fixed sidebar only)
    function sidebarMenuHeight() {
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

    function sbAdmin2FeaturesInit() {
        $(function() {
            $('#side-menu').metisMenu({
                toggle: false
            });
        });

        //Loads the correct sidebar on window load,
        //collapses the sidebar on window resize.
        // Sets the min-height of #page-wrapper to window size
        $(function() {
            $(window).bind("load resize", function() {
                topOffset = 50;
                width = (this.window.innerWidth > 0) ? this.window.innerWidth : this.screen.width;
                if (width < 768) {
                    $('div.navbar-collapse').addClass('collapse')
                    topOffset = 100; // 2-row-menu
                } else {
                    $('div.navbar-collapse').removeClass('collapse')
                }

                height = (this.window.innerHeight > 0) ? this.window.innerHeight : this.screen.height;
                height = height - topOffset;
                if (height < 1) height = 1;
                if (height > topOffset) {
                    $("#page-wrapper").css("min-height", (height) + "px");
                }
            })
        })
    }

});