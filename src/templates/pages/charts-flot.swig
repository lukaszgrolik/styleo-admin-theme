{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'charts-flot' %}

{% block bodyEnd %}
<script src="bower_components/flot/excanvas.js"></script>
<script src="bower_components/flot/jquery.flot.js"></script>
<script src="bower_components/flot/jquery.flot.time.js"></script>
<script src="bower_components/flot/jquery.flot.pie.js"></script>
<script src="bower_components/flot/jquery.flot.resize.js"></script>
<script src="bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script src="js/plugins/flot/flot-data.js"></script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-success bordered sharp">
            <div class="panel-heading">
            <i class="fa fa-fw fa-line-chart"></i>
                Line Chart
            </div>

            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-line-chart"></div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-info bordered sharp">
            <div class="panel-heading">
            <i class="fa fa-fw fa-bar-chart"></i>
                Bar Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-bar-chart"></div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-primary bordered sharp">
            <div class="panel-heading">
            <i class="fa fa-fw fa-line-chart"></i>
                Multiple Axes Line Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-line-chart-multi"></div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
    <div class="col-lg-6">
        <div class="panel panel-warning bordered sharp">
            <div class="panel-heading">
            <i class="fa fa-fw fa-line-chart"></i>
                Moving Line Chart
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-line-chart-moving"></div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-danger bordered sharp">
            <div class="panel-heading">
            <i class="fa fa-fw fa-pie-chart"></i>
                Pie Chart
            </div>

            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-pie-chart"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->
{% endblock %}

