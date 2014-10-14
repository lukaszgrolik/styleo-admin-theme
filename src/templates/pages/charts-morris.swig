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
<!-- /.row -->
<div class="row">

    <div class="col-lg-6">
        <div class="panel panel-success raised gradient">
            <div class="panel-heading">
                Line Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-line-chart"></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <div class="col-lg-6">
        <div class="panel panel-info raised gradient">
            <div class="panel-heading">
                Area Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-area-chart"></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->

</div>

<div class="row">
    <!-- /.col-lg-6 -->
    <div class="col-lg-6">
        <div class="panel panel-warning raised gradient">
            <div class="panel-heading">
                Bar Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-bar-chart"></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
    <div class="col-lg-6">
        <div class="panel panel-danger raised gradient">
            <div class="panel-heading">
                Donut Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-donut-chart"></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->
{% endblock %}

