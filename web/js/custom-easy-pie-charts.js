var CustomEasyPieCharts = {
  init: function() {
    var charts = $('[data-toggle="easy-pie-chart"]');

    $.each(charts, function () {
      var barColor = $(this).data('barcolor');
      var trackColor = $(this).data('trackcolor') || false;
      var scaleColor = $(this).data('scalecolor') || false;
      var lineCap = $(this).data('linecap') || "round";
      var lineWidth = $(this).data('linewidth') || 3;
      var size = $(this).data('size') || 100;
      var animate = $(this).data('animate') || false;
      var chartContainerCss = {
        width: size,
        height: size,
      };
      var chartValueCss = {
        lineHeight: size + 'px'
      };

      $(this).easyPieChart({
        barColor: barColor,
        trackColor: trackColor,
        scaleColor: scaleColor,
        lineCap: lineCap,
        lineWidth: lineWidth,
        size: size,
        animate : animate
      });

      $(this).css(chartContainerCss)
      $(this).children('.easy-pie-chart-value').css(chartValueCss);
    });
  }
}