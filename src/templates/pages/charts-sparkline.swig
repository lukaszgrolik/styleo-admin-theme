{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'charts-sparkline' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}
<script src="bower_components/relayfoods-jquery.sparkline/dist/jquery.sparkline.min.js"></script>

<script>
$(function() {
  var sparklineBar = $('[data-sparkline="bar"]');

  $.each(sparklineBar, function() {
    $(this).sparkline('html', {
      type: 'bar',
    });
  });

  var sparklineLine = $('[data-sparkline="line"]');

  $.each(sparklineLine, function() {
    $(this).sparkline('html', {
      type: 'line',
      fillColor: false,
    });
  });

  var sparklineCompositeLine = $('[data-sparkline="composite-line"]');

  $.each(sparklineCompositeLine, function() {
    $(this).sparkline('html', {
      type: 'line',
      fillColor: false,
    });

    $(this).sparkline(getArrayFromString($(this).attr("data-composite")), {
      type: 'line',
      fillColor: false,
      composite: true
    });
  });

  var sparklineCompositeBar = $('[data-sparkline="composite-bar"]');

  $.each(sparklineCompositeBar, function() {
    $(this).sparkline('html', {
      type: 'bar',
    });

    $(this).sparkline(getArrayFromString($(this).attr("data-composite")), {
      type: 'line',
      fillColor: false,
      composite: true
    });
  });

  var sparklineTristate = $('[data-sparkline="tristate"]');

  $.each(sparklineTristate, function() {
    $(this).sparkline('html', {
      type: 'tristate',
    });
  });

  var sparklineDiscrete = $('[data-sparkline="discrete"]');

  $.each(sparklineDiscrete, function() {
    $(this).sparkline('html', {
      type: 'discrete',
    });
  });

  var sparklineBullet = $('[data-sparkline="bullet"]');

  $.each(sparklineBullet, function() {
    $(this).sparkline('html', {
      type: 'bullet',
    });
  });

  var sparklineBox = $('[data-sparkline="box"]');

  $.each(sparklineBox, function() {
    $(this).sparkline('html', {
      type: 'box',
    });
  });

  var sparklinePie = $('[data-sparkline="pie"]');

  $.each(sparklinePie, function() {
    $(this).sparkline('html', {
      type: 'pie',
    });
  });

  function getArrayFromString(str) {
    var result = str.split(",");

    for (var i = 0, l = result.length; i < l; ++i) {
      result[i] = parseInt(result[i]);
    }

    return result;
  }
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-12">
    <div class="row">
      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-line-chart"></i>
            Line Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="line">
              3,-2,5,6,4,7,-1,9,7,9,5,-3,4,-4,3,-3,4,2,7,5,9,11
            </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-line-chart"></i>
            Composite Line Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="composite-line"  data-composite="4,-1,3,7,-8,9,12,6,5,6,4,7,12,17,12,7,15,13,16,17">
              8,-4,3,2,0,-1,1,3,4,-5,6,7,-9,8,6,4,4,-3,5,2,7
            </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-bar-chart"></i>
            Bar Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="bar">
              1,5,6,-3,7,2,0,2,-4,4,-2,-1,4
            </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-bar-chart"></i>
            Stacked Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="bar">
              4:2,2:3,4:3,3:1,2:4,3:3
            </span>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-bar-chart"></i>
            Composite Bar Chart
          </div>
          <div class="panel-body text-center">
          <span data-sparkline="composite-bar" data-composite="4,2,7,8,9,-2,8,5,6,9,4,1,4">
            8,-4,0,2,4,-6,5,4,5,-8,10,-7,10,3,4,7
          </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-bar-chart"></i>
            Tristate Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="tristate">
              1,-1,0,1,1,-1,1,-1,0,1,1,0,1,-1,1
            </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            Discrete Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="discrete">
              1,3,2,4,3,4,5,3,1,3,2,1,2,4,5,3,6,7,8,6,7,5,4,3,1,2,4,3,5,4,6,7,4,5,4,6,7,6,7,8
            </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            Bullet Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="bullet">
              8,11,9,11,6
            </span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            Box Plot Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="box">3,25,32,51,55,56,62,65,71,81,85,88,94,97,100</span>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-lg-3">
        <div class="panel panel-default raised sharp">
          <div class="panel-heading">
            <i class="fa fa-fw fa-pie-chart"></i>
            Pie Chart
          </div>
          <div class="panel-body text-center">
            <span data-sparkline="pie">
              1,2,3,1,1
            </span>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}