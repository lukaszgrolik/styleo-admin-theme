{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'charts-easy-pie-chart' %}

{% block bodyEnd %}
<script src="bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

<script>
$(function() {
    var gridbordercolor = "#eee";

    var easypiecharts = $('[data-toggle="easy-pie-chart"]');

    $.each(easypiecharts, function () {
        // var barColor = getcolor($(this).data('barcolor')) || themeprimary;
        var barColor = $(this).data('barcolor');
        // var trackColor = getcolor($(this).data('trackcolor')) || false;
        var trackColor = $(this).data('trackcolor') || false;
        // var scaleColor = getcolor($(this).data('scalecolor')) || false;
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

    function getcolor() {
        return 'red'
    }
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-4 text-center">
        <div class="panel panel-default">
            <div class="panel-heading">Easy Pie Chart Types</div>

            <div class="panel-body text-center">
                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-line-width="10">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-line-width="10" data-linecap="butt">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-line-width="10" data-linecap="butt" data-trackcolor="#f1c40f">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-line-width="10" data-linecap="butt" data-scalecolor="#3498db">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-line-width="10" data-linecap="butt" data-scalecolor="#3498db"  data-trackcolor="#f1c40f">
                    <div class="easy-pie-chart-value">65%</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-8 text-center">
        <div class="panel panel-default">
            <div class="panel-heading">Easy Pie Chart Sizes</div>

            <div class="panel-body text-center">
                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-linecap="butt" data-size="75" data-linewidth="1">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-linecap="butt">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-linecap="butt" data-size="125" data-linewidth="5">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-linecap="butt" data-size="150" data-linewidth="8">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-linecap="butt" data-size="200" data-linewidth="12">
                    <div class="easy-pie-chart-value">65%</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12 text-center">
        <div class="panel panel-default">
            <div class="panel-heading">Easy Pie Chart Variations</div>

            <div class="panel-body text-center">
                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-trackcolor="#f1c40f" data-line-width="15" data-size="150">
                    <div class="easy-pie-chart-value">65%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="25" data-barcolor="#1abc9c" data-scalecolor="#7f8c8d" data-linewidth="5">
                    <span class="easy-pie-chart-value danger font-80">25%</span>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="55" data-barcolor="#e67e22" data-linewidth="10" data-linecap="round">
                    <div class="easy-pie-chart-value">55%</div>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="50" data-barcolor="#be643c" data-trackcolor="#9b59b6" data-scalecolor="#be643c" data-linewidth="5" data-size="200" data-linecap="butt">
                    <span class="easy-pie-chart-value danger font-80">50%</span>
                </div>

                <div data-toggle="easy-pie-chart" class="easy-pie-chart" data-percent="65" data-barcolor="#3498db" data-line-width="10" data-linecap="butt">
                    <div class="easy-pie-chart-value">65%</div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}

