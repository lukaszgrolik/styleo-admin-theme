{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'charts-morris' %}

{% block headEnd %}
<link href="bower_components/morrisjs/morris.css" rel="stylesheet">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/raphael/raphael-min.js"></script>
<script src="bower_components/morrisjs/morris.min.js"></script>
<script src="js/plugins/morris/morris-data.js"></script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-success raised gradient">
      <div class="panel-heading">
        <i class="fa fa-fw fa-line-chart"></i>
        Line Chart
      </div>
      <div class="panel-body">
        <div id="morris-line-chart"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-info raised gradient">
      <div class="panel-heading">
        <i class="fa fa-fw fa-area-chart"></i>
        Area Chart
      </div>
      <div class="panel-body">
        <div id="morris-area-chart"></div>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-warning raised gradient">
      <div class="panel-heading">
        <i class="fa fa-fw fa-bar-chart"></i>
        Bar Chart
      </div>
      <div class="panel-body">
        <div id="morris-bar-chart"></div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-danger raised gradient">
      <div class="panel-heading">
        <i class="fa fa-fw fa-pie-chart"></i>
        Donut Chart
      </div>
      <div class="panel-body">
        <div id="morris-donut-chart"></div>
      </div>
    </div>
  </div>
</div>
{% endblock %}

