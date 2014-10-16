var EasyPieChart = {
	init: function() {
		var easypiecharts = $('[data-toggle="easy-pie-chart"]');

	    $.each(easypiecharts, function () {
	        var barColor = $(this).data('barcolor');
	        var trackColor = $(this).data('trackcolor') || false;
	        var scaleColor = $(this).data('scalecolor') || false;
	        var lineCap = $(this).data('linecap') || "round";
	        var lineWidth = $(this).data('linewidth') || 3;
	        var size = $(this).data('size') || 100;
	        var animate = $(this).data('animate') || false;

	        $(this).easyPieChart({
	            barColor: barColor,
	            trackColor: trackColor,
	            scaleColor: scaleColor,
	            lineCap: lineCap,
	            lineWidth: lineWidth,
	            size: size,
	            animate : animate
	        });

	        var chartContainerCss = {
	            width: size,
	            height: size,
	        };
	        var chartValueCss = {
	            lineHeight: size + 'px'
	        };

	        $(this).css(chartContainerCss)
	        $(this).children('.easy-pie-chart-value').css(chartValueCss);
	    });
	}
}