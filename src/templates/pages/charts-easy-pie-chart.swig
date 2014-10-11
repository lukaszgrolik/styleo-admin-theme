{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'charts-easy-pie-chart' %}

{% block bodyEnd %}
<script src="bower_components/jquery.easy-pie-chart/dist/jquery.easypiechart.min.js"></script>

<script>
$(function() {
    var gridbordercolor = "#eee";

    var easypiecharts = $('[data-toggle=easypiechart]');

    $.each(easypiecharts, function () {
        // var barColor = getcolor($(this).data('barcolor')) || themeprimary;
        var barColor = $(this).data('barcolor');
        // var trackColor = getcolor($(this).data('trackcolor')) || false;
        var trackColor = $(this).data('trackcolor') || false;
        // var scaleColor = getcolor($(this).data('scalecolor')) || false;
        var scaleColor = $(this).data('scalecolor') || false;
        var lineCap = $(this).data('linecap') || "round";
        var lineWidth = $(this).data('linewidth') || 3;
        var size = $(this).data('size') || 110;
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
        $(this).children('.easyPieChart-value').css(chartValueCss);
    });

    function getcolor() {
        return 'red'
    }
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">Default Chart</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-percent="65" data-barcolor="#3498db">
                    <div class="easyPieChart-value">65%</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">With Track Color</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-percent="73" data-barcolor="#2ecc71" data-trackcolor="#f1c40f" data-linewidth="10">
                    <div class="easyPieChart-value">73%</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">With Scale</div>

            <div class="panel-body">
                <div data-toggle="easypiechart" class="easyPieChart" data-percent="25" data-barcolor="#1abc9c" data-scalecolor="#7f8c8d" data-linewidth="5">
                    <span class="easyPieChart-value danger font-80">25%</span>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">Rounded</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-percent="55" data-barcolor="#e67e22" data-linewidth="10" data-linecap="round">
                    <div class="easyPieChart-value">55%</div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">With Animation</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-percent="80" data-animate="1000" data-linewidth="10" data-size="130" data-barcolor="#e74c3c">
                    <div class="easyPieChart-value">80%</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">Big Pie</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#9b59b6" data-linecap="butt" data-percent="50" data-animate="1000" data-linewidth="10" data-size="150">
                    <div class="easyPieChart-value">50%</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default filled">
            <div class="panel-heading">Colors and Size</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="70" data-animate="500" data-linewidth="5" data-size="150">
                    <div class="easyPieChart-value white">70%</div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3 col-sm-6 col-xs-12">
        <div class="panel panel-default">
            <div class="panel-heading">Different Sizes</div>

            <div class="panel-body text-center">
                <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#f1c40f" data-linecap="butt" data-percent="90" data-animate="500" data-linewidth="3" data-size="30">
                    <div class="easyPieChart-value font-70 sky">90%</div>
                </div>

                <div class="horizontal-space"></div>

                <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#be643c" data-linecap="butt" data-percent="90" data-animate="500" data-linewidth="3" data-size="70">
                    <div class="easyPieChart-value font-70 sky">90%</div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}

