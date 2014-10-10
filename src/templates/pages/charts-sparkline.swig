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

    /*Bar*/
    var sparklinebars = $('[data-sparkline=bar]');
    $.each(sparklinebars, function () {
        $(this).sparkline('html', {
            type: 'bar',
            disableHiddenCheck: true,
            height: $(this).data('height'),
            width: $(this).data('width'),
            // barColor: getcolor($(this).data('barcolor')),
            // negBarColor: getcolor($(this).data('negbarcolor')),
            // zeroColor: getcolor($(this).data('zerocolor')),
            barWidth: $(this).data('barwidth'),
            barSpacing: $(this).data('barspacing'),
            stackedBarColor: $(this).data('stackedbarcolor')
        });
    });

    /*Line*/
    var sparklinelines = $('[data-sparkline=line]');
    $.each(sparklinelines, function () {
        $(this).sparkline('html', {
            type: 'line',
            disableHiddenCheck: true,
            height: $(this).data('height'),
            width: $(this).data('width'),
            // fillColor: getcolor($(this).data('fillcolor')),
            // lineColor: getcolor($(this).data('linecolor')),
            spotRadius: $(this).data('spotradius'),
            lineWidth: $(this).data('linewidth'),
            // spotColor: getcolor($(this).data('spotcolor')),
            // minSpotColor: getcolor($(this).data('minspotcolor')),
            // maxSpotColor: getcolor($(this).data('maxspotcolor')),
            // highlightSpotColor: getcolor($(this).data('highlightspotcolor')),
            // highlightLineColor: getcolor($(this).data('highlightlinecolor'))
        });
    });

    /*Composite Line*/
    var sparklinecompositelines = $('[data-sparkline=compositeline]');
    $.each(sparklinecompositelines, function () {
        $(this).sparkline('html', {
            type: 'line',
            disableHiddenCheck: true,
            height: $(this).data('height'),
            width: $(this).data('width'),
            // lineColor: getcolor($(this).data('linecolor')),
            // fillColor: getcolor($(this).data('fillcolor')),
            fillColor: false,
            // secondFillColor: false,
            spotRadius: $(this).data('spotradius'),
            lineWidth: $(this).data('linewidth'),
            // spotColor: getcolor($(this).data('spotcolor')),
            // minSpotColor: getcolor($(this).data('minspotcolor')),
            // maxSpotColor: getcolor($(this).data('maxspotcolor')),
            // highlightSpotColor: getcolor($(this).data('highlightspotcolor')),
            // highlightLineColor: getcolor($(this).data('highlightlinecolor'))
        });
        $(this).sparkline(stringtoarray($(this).attr("data-composite")), {
            type: 'line',
            disableHiddenCheck: true,
            height: $(this).data('height'),
            width: $(this).data('width'),
            // lineColor: getcolor($(this).data('secondlinecolor')),
            // fillColor: getcolor($(this).data('secondfillcolor')),
            fillColor: false,
            lineWidth: $(this).data('secondlinewidth'),
            spotRadius: $(this).data('spotradius'),
            // spotColor: getcolor($(this).data('spotcolor')),
            // minSpotColor: getcolor($(this).data('minspotcolor')),
            // maxSpotColor: getcolor($(this).data('maxspotcolor')),
            // highlightSpotColor: getcolor($(this).data('highlightspotcolor')),
            // highlightLineColor: getcolor($(this).data('highlightlinecolor')),
            composite: true
        });
    });

    /*Composite Bar*/
    var sparklinecompositebars = $('[data-sparkline=compositebar]');
    $.each(sparklinecompositebars, function () {
        $(this).sparkline('html', {
            type: 'bar',
            disableHiddenCheck: true,
            height: $(this).data('height'),
            width: $(this).data('width'),
            // barColor: getcolor($(this).data('barcolor')),
            // negBarColor: getcolor($(this).data('negbarcolor')),
            // zeroColor: getcolor($(this).data('zerocolor')),
            barWidth: $(this).data('barwidth'),
            barSpacing: $(this).data('barspacing'),
            // stackedBarColor: getcolor($(this).data('stackedbarcolor'))
        });
        $(this).sparkline(stringtoarray($(this).attr("data-composite")), {
            type: 'line',
            height: $(this).data('height'),
            disableHiddenCheck: true,
            width: $(this).data('width'),
            // lineColor: getcolor($(this).data('linecolor')),
            // fillColor: getcolor($(this).data('fillcolor')),
            fillColor: false,
            spotRadius: $(this).data('spotradius'),
            lineWidth: $(this).data('linewidth'),
            spotRadius: $(this).data('spotradius'),
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
            disableHiddenCheck: true,
            height: $(this).data('height'),
            width: $(this).data('width'),
            // posBarColor: getcolor($(this).data('posbarcolor')),
            // negBarColor: getcolor($(this).data('negbarcolor')),
            // zeroBarColor: getcolor($(this).data('zerobarcolor')),
            barWidth: $(this).data('barwidth'),
            barSpacing: $(this).data('barspacing'),
            zeroAxis: $(this).data('zeroaxis')
        });
    });

    /*Descrete*/
    var sparklinediscretes = $('[data-sparkline=discrete]');
    $.each(sparklinediscretes, function () {
        $(this).sparkline('html', {
            type: 'discrete',
            disableHiddenCheck: true,
            lineHeight: $(this).data('lineheight'),
            // lineColor: getcolor($(this).data('linecolor')),
            thresholdValue: $(this).data('thresholdvalue'),
            thresholdColor: $(this).data('thresholdcolor')
        });
    });

    /*Bullet*/
    var sparklinebullets = $('[data-sparkline=bullet]');
    $.each(sparklinebullets, function () {
        $(this).sparkline('html', {
            type: 'bullet',
            disableHiddenCheck: true,
            targetColor: $(this).data('targetcolor'),
            performanceColor: $(this).data('performancecolor'),
            rangeColors: $(this).data('rangecolors')
        });
    });

    /*Box Plot*/
    var sparklinebox = $('[data-sparkline=box]');
    $.each(sparklinebox, function () {
        $(this).sparkline('html', {
            type: 'box',
            disableHiddenCheck: true,
        });
    });

    /*Pie*/
    var sparklinepie = $('[data-sparkline=pie]');
    $.each(sparklinepie, function () {
        $(this).sparkline('html', {
            type: 'pie',
            disableHiddenCheck: true,
            width: $(this).data('width'),
            height: $(this).data('height'),
            sliceColors: $(this).data('slicecolors'),
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
})
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-blue">Bar Chart</div>
                    <span data-sparkline="bar" data-height="75px" data-width="100%" data-barwidth="10px" data-barspacing="5px">
                        5,6,7,2,0,-4,-2,4
                    </span>
                    <div class="footer"><code>data-sparkline="bar"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-warning">Stacked Chart</div>
                    <span data-sparkline="bar" data-height="75px" data-width="100%" data-barwidth="10px" data-barspacing="5px">
                        2:2,2:3,3:2,1:3
                    </span>
                    <div class="footer"><code>data-sparkline="bar"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-pink">Line Chart</div>
                    <span data-sparkline="line" data-height="75px" data-width="100%" data-spotradius="5">
                        5,6,7,9,9,5,3,4,4,3,6,7
                    </span>
                    <div class="footer"><code>data-sparkline="line"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-darkorange">Composite Line Chart</div>
                    <span data-sparkline="compositeline" data-height="75px" data-width="100%" data-linecolor="themeprimary"
                          data-fillcolor="false" data-secondfillcolor="false"
                          data-composite="4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7">
                        8,4,0,0,0,0,1,4,4,10,10,10,10,0,0,0,4,6,5,9,10
                    </span>
                    <div class="footer"><code>data-sparkline="compositeline"</code></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-palegreen">Composite Bar Chart</div>
                    <span data-sparkline="compositebar" data-height="75px" data-width="100%"
                          data-barcolor="themeprimary" data-negbarcolor="#f4b400" data-zerocolor="#d73d32"
                          data-barwidth="8px" data-barspacing="4px"
                          data-fillcolor="false" data-linecolor="themesecondary" data-spotradius="5" data-linewidth="3"
                          data-composite="4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7">
                        8,4,0,1,4,6,2,4,4,8,10,7,10
                    </span>
                    <div class="footer"><code>data-sparkline="compositebar"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-blueberry">Tristate Chart</div>
                    <span data-sparkline="tristate" data-height="75px" data-width="100%"
                          data-posbarcolor="themeprimary" data-negbarcolor="themesecondary" data-zerobarcolor="themethirdcolor"
                          data-barwidth="8px" data-barspacing="4px" data-zeroaxis="false">
                        1,1,0,1,-1,-1,1,-1,0,0,1,1
                    </span>
                    <div class="footer"><code>data-sparkline="tristate"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-darkpink">Discrete Chart</div>
                    <span data-sparkline="discrete" data-linecolor="#57b5e3"
                          data-thresholdvalue="3" data-thresholdcolor="#d73d32">
                        4,6,7,7,4,3,2,1,4,4
                    </span>
                    <div class="footer"><code>data-sparkline="discrete"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-sky">Bullet Chart</div>
                    <span data-sparkline="bullet" data-height="30px" data-width="100%" data-targetcolor="#444"
                          data-performancecolor="#11a9cc" data-rangecolors='["#5DB2FF", "#6f85bf", "#4374e0"]'>
                        10, 12, 12, 9, 7
                    </span>
                    <div class="footer"><code>data-sparkline="bullet"</code></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-carbon">Box Plot Chart</div>
                    <span data-sparkline="box" data-height="30px" data-width="100%">4, 27, 34, 52, 54, 59, 61, 68, 78, 82, 85, 87, 91, 93, 100</span>
                    <div class="footer"><code>data-sparkline="box"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-lightred">Pie Chart</div>
                    <span data-sparkline="pie" data-height="75px" data-width="75px" data-bordercolor="#fafafa"
                          data-slicecolors='["#5DB2FF", "#f4b400", "#d73d32","8cc474"]'>
                        1,1,2,1
                    </span>
                    <div class="footer"><code>data-sparkline="pie"</code></div>
                </div>
            </div>
        </div>
    </div>
</div>

{# <div class="row">
    <div class="col-lg-12 col-sm-12 col-xs-12">
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-blue">Bar Chart</div>
                    <span data-sparkline="bar" data-height="75px" data-width="100%" data-barcolor="red" data-negbarcolor="green" data-zerocolor="blue"
                          data-barwidth="10px" data-barspacing="5px">
                        5,6,7,2,0,-4,-2,4
                    </span>
                    <div class="footer"><code>data-sparkline="bar"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-warning">Stacked Chart</div>
                    <span data-sparkline="bar" data-height="75px" data-width="100%" data-barwidth="10px" data-barspacing="5px" data-stackedbarcolor='["#57b5e3", "#f4b400"]'>
                        2:2,2:3,3:2,1:3
                    </span>
                    <div class="footer"><code>data-sparkline="bar"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-pink">Line Chart</div>
                    <span data-sparkline="line" data-height="75px" data-width="100%" data-fillcolor="themeprimary" data-linecolor="themeprimary" data-spotradius="5">
                        5,6,7,9,9,5,3,4,4,3,6,7
                    </span>
                    <div class="footer"><code>data-sparkline="line"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-darkorange">Composite Line Chart</div>
                    <span data-sparkline="compositeline" data-height="75px" data-width="100%" data-linecolor="themeprimary" data-secondlinecolor="themesecondary"
                          data-fillcolor="false" data-secondfillcolor="false"
                          data-composite="4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7">
                        8,4,0,0,0,0,1,4,4,10,10,10,10,0,0,0,4,6,5,9,10
                    </span>
                    <div class="footer"><code>data-sparkline="compositeline"</code></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-palegreen">Composite Bar Chart</div>
                    <span data-sparkline="compositebar" data-height="75px" data-width="100%"
                          data-barcolor="themeprimary" data-negbarcolor="#f4b400" data-zerocolor="#d73d32"
                          data-barwidth="8px" data-barspacing="4px"
                          data-fillcolor="false" data-linecolor="themesecondary" data-spotradius="5" data-linewidth="3"
                          data-composite="4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7">
                        8,4,0,1,4,6,2,4,4,8,10,7,10
                    </span>
                    <div class="footer"><code>data-sparkline="compositebar"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-blueberry">Tristate Chart</div>
                    <span data-sparkline="tristate" data-height="75px" data-width="100%"
                          data-posbarcolor="themeprimary" data-negbarcolor="themesecondary" data-zerobarcolor="themethirdcolor"
                          data-barwidth="8px" data-barspacing="4px" data-zeroaxis="false">
                        1,1,0,1,-1,-1,1,-1,0,0,1,1
                    </span>
                    <div class="footer"><code>data-sparkline="tristate"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-darkpink">Discrete Chart</div>
                    <span data-sparkline="discrete" data-linecolor="#57b5e3"
                          data-thresholdvalue="3" data-thresholdcolor="#d73d32">
                        4,6,7,7,4,3,2,1,4,4
                    </span>
                    <div class="footer"><code>data-sparkline="discrete"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-sky">Bullet Chart</div>
                    <span data-sparkline="bullet" data-height="30px" data-width="100%" data-targetcolor="#444"
                          data-performancecolor="#11a9cc" data-rangecolors='["#5DB2FF", "#6f85bf", "#4374e0"]'>
                        10, 12, 12, 9, 7
                    </span>
                    <div class="footer"><code>data-sparkline="bullet"</code></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-carbon">Box Plot Chart</div>
                    <span data-sparkline="box" data-height="30px" data-width="100%">4, 27, 34, 52, 54, 59, 61, 68, 78, 82, 85, 87, 91, 93, 100</span>
                    <div class="footer"><code>data-sparkline="box"</code></div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 col-xs-12">
                <div class="well with-header with-footer">
                    <div class="header bordered-lightred">Pie Chart</div>
                    <span data-sparkline="pie" data-height="75px" data-width="75px" data-bordercolor="#fafafa"
                          data-slicecolors='["#5DB2FF", "#f4b400", "#d73d32","8cc474"]'>
                        1,1,2,1
                    </span>
                    <div class="footer"><code>data-sparkline="pie"</code></div>
                </div>
            </div>
        </div>
    </div>
</div> #}
{% endblock %}