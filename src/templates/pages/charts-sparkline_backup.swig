{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'charts-sparkline' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}
{# <script src="components/jquery.sparkline/jquery.sparkline.min.js"></script> #}
<script src="bower_components/relayfoods-jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<script>
$(function() {
    // $('[data-sparkline]').sparkline();

    var styleoColors = {
        red: '#e74c3c',
        orange: '#e67e22',
        yellow: '#f1c40f',
        green: '#2ecc71',
        cyan: '#1abc9c',
        blue: '#3498db',
        violet: '#9b59b6',
        brown: '#be643c',
        navy: '#34495e',
        lightGrey: '#95a5a6',
        darkGrey: '#7f8c8d',
    };

    /*Bar*/
    var sparklinebars = $('[data-sparkline="bar"]');

    $.each(sparklinebars, function () {
        $(this).sparkline('html', {
            type: 'bar',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            barWidth: $(this).data('bar-width') || 7,
            barSpacing: $(this).data('bar-spacing') || 3,
            // barColor: $(this).data('bar-color') || styleoColors.blue,
            // negBarColor: $(this).data('neg-bar-color') || styleoColors.red,
            // zeroColor: $(this).data('zero-color') || styleoColors.lightGrey,

            // stackedBarColor: $(this).data('stacked-bar-color') || [styleoColors.green, styleoColors.orange]
        });
    });

    /*Line*/
    var sparklinelines = $('[data-sparkline="line"]');

    $.each(sparklinelines, function () {
        $(this).sparkline('html', {
            type: 'line',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            // fillColor: $(this).data('fill-color') || styleoColors.lightGrey,
            fillColor: false,
            // lineColor: $(this).data('line-color') || styleoColors.red,
            // spotRadius: $(this).data('spot-radius'),
            // lineWidth: $(this).data('line-width'),
            // spotColor: $(this).data('spot-color'),
            // minSpotColor: $(this).data('min-spot-color'),
            // maxSpotColor: $(this).data('max-spot-color'),
            // highlightSpotColor: $(this).data('highlight-spot-color'),
            // highlightLineColor: $(this).data('highlight-line-color')
        });
    });

    /*Composite Line*/
    var sparklinecompositelines = $('[data-sparkline="compositeline"]');
    $.each(sparklinecompositelines, function () {
        $(this).sparkline('html', {
            type: 'line',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            // lineColor: getcolor($(this).data('linecolor')),
            // fillColor: getcolor($(this).data('fillcolor')),
            fillColor: false,
            // secondFillColor: false,
            // spotRadius: $(this).data('spotradius'),
            // lineWidth: $(this).data('linewidth'),
            // spotColor: getcolor($(this).data('spotcolor')),
            // minSpotColor: getcolor($(this).data('minspotcolor')),
            // maxSpotColor: getcolor($(this).data('maxspotcolor')),
            // highlightSpotColor: getcolor($(this).data('highlightspotcolor')),
            // highlightLineColor: getcolor($(this).data('highlightlinecolor'))
        });
        $(this).sparkline(stringtoarray($(this).attr("data-composite")), {
            type: 'line',
            // disableHiddenCheck: true,
            // height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            // lineColor: getcolor($(this).data('secondlinecolor')),
            // fillColor: getcolor($(this).data('secondfillcolor')),
            fillColor: false,
            // lineWidth: $(this).data('secondlinewidth'),
            // spotRadius: $(this).data('spotradius'),
            // spotColor: getcolor($(this).data('spotcolor')),
            // minSpotColor: getcolor($(this).data('minspotcolor')),
            // maxSpotColor: getcolor($(this).data('maxspotcolor')),
            // highlightSpotColor: getcolor($(this).data('highlightspotcolor')),
            // highlightLineColor: getcolor($(this).data('highlightlinecolor')),
            composite: true
        });
    });

    /*Composite Bar*/
    var sparklinecompositebars = $('[data-sparkline="compositebar"]');
    $.each(sparklinecompositebars, function () {
        $(this).sparkline('html', {
            type: 'bar',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            barWidth: $(this).data('bar-width') || 7,
            barSpacing: $(this).data('bar-spacing') || 3,
            // barColor: getcolor($(this).data('barcolor')),
            // negBarColor: getcolor($(this).data('negbarcolor')),
            // zeroColor: getcolor($(this).data('zerocolor')),

            // stackedBarColor: getcolor($(this).data('stackedbarcolor'))
        });
        $(this).sparkline(stringtoarray($(this).attr("data-composite")), {
            type: 'line',
            // disableHiddenCheck: true,
            // height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            // lineColor: getcolor($(this).data('linecolor')),
            // fillColor: getcolor($(this).data('fillcolor')),
            fillColor: false,
            // spotRadius: $(this).data('spotradius'),
            // lineWidth: $(this).data('linewidth'),
            // spotRadius: $(this).data('spotradius'),
            // spotColor: getcolor($(this).data('spotcolor')),
            // minSpotColor: getcolor($(this).data('minspotcolor')),
            // maxSpotColor: getcolor($(this).data('maxspotcolor')),
            // highlightSpotColor: getcolor($(this).data('highlightspotcolor')),
            // highlightLineColor: getcolor($(this).data('highlightlinecolor')),
            composite: true
        });

    });

    /*Tristate*/
    var sparklinetristates = $('[data-sparkline=tristate]');
    $.each(sparklinetristates, function () {
        $(this).sparkline('html', {
            type: 'tristate',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            barWidth: $(this).data('bar-width') || 7,
            barSpacing: $(this).data('bar-spacing') || 3,
            // posBarColor: getcolor($(this).data('posbarcolor')),
            // negBarColor: getcolor($(this).data('negbarcolor')),
            // zeroBarColor: getcolor($(this).data('zerobarcolor')),
            // zeroAxis: $(this).data('zeroaxis')
        });
    });

    /*Descrete*/
    var sparklinediscretes = $('[data-sparkline="discrete"]');
    $.each(sparklinediscretes, function () {
        $(this).sparkline('html', {
            type: 'discrete',
            // disableHiddenCheck: true,
            // lineHeight: $(this).data('lineheight'),
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            // lineColor: $(this).data('linecolor') || ,
            // lineColor: 'red',
            // thresholdValue: $(this).data('thresholdvalue'),
            // thresholdColor: $(this).data('thresholdcolor')
        });
    });

    /*Bullet*/
    var sparklinebullets = $('[data-sparkline=bullet]');
    $.each(sparklinebullets, function () {
        $(this).sparkline('html', {
            type: 'bullet',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            width: $(this).data('width') || '100%',
            // targetColor: $(this).data('targetcolor'),
            // performanceColor: $(this).data('performancecolor'),
            // rangeColors: $(this).data('rangecolors')
        });
    });

    /*Box Plot*/
    var sparklinebox = $('[data-sparkline=box]');
    $.each(sparklinebox, function () {
        $(this).sparkline('html', {
            type: 'box',
            height: $(this).data('height') || '100px',
            width: $(this).data('width') || '100%',
            // disableHiddenCheck: true,
        });
    });

    /*Pie*/
    var sparklinepie = $('[data-sparkline=pie]');
    $.each(sparklinepie, function () {
        $(this).sparkline('html', {
            type: 'pie',
            // disableHiddenCheck: true,
            height: $(this).data('height') || '100px',
            // width: $(this).data('width') || '100%',
            // sliceColors: $(this).data('slicecolors'),
            // borderColor: getcolor($(this).data('bordercolor'))
        });
    });

    function stringtoarray(str) {
        var myArray = str.split(",");
        for (var i = 0; i < myArray.length; i++) {
            myArray[i] = +myArray[i];
        }
        for (var i = 0; i < myArray.length; i++) {
            myArray[i] = parseInt(myArray[i], 10);
        }
        return myArray;
    }
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="row">
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Bar Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="bar">
                            5,6,7,2,0,-4,-2,4
                        </span>
                    </div>
                </div>
            </div>

            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Stacked Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="bar">
                            2:2,2:3,3:2,1:3
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Line Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="line">
                            5,6,7,9,9,5,3,4,4,3,6,7
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Composite Line Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="compositeline"  data-composite="4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7">
                            8,4,0,0,0,0,1,4,4,10,10,10,10,0,0,0,4,6,5,9,10
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Composite Bar Chart</div>
                    <div class="panel-body text-center">
                    <span data-sparkline="compositebar" data-composite="4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7">
                        8,4,0,1,4,6,2,4,4,8,10,7,10
                    </span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Tristate Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="tristate">
                            1,1,0,1,-1,-1,1,-1,0,0,1,1
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Discrete Chart</div>
                    {# <div class="panel-body text-center">
                        <span data-sparkline="discrete"  data-linecolor="#57b5e3" data-thresholdvalue="3" data-thresholdcolor="#d73d32" data-thresholdcolor="#d73d32">
                            4,6,7,7,4,3,2,1,4,4
                        </span>
                    </div> #}
                    <div class="panel-body text-center">
                        <span data-sparkline="discrete">
                            4,6,7,7,4,3,2,1,4,4
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Bullet Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="bullet">
                            10, 12, 12, 9, 7
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Box Plot Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="box">4, 27, 34, 52, 54, 59, 61, 68, 78, 82, 85, 87, 91, 93, 100</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="panel panel-default">
                    <div class="panel-heading">Pie Chart</div>
                    <div class="panel-body text-center">
                        <span data-sparkline="pie">
                            1,1,2,1
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}