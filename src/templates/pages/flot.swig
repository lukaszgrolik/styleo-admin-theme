{% extends '../layouts/layout-1.swig' %}

{% block title %}Flot{% endblock %}

{% block breadcrumbs %}
<li><a href="#">Charts</a></li>
<li><a href="#">Flot</a></li>
{% endblock %}

{% block content2 %}
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Line Chart Example
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-line-chart"></div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Pie Chart Example
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="flot-chart">
                    <div class="flot-chart-content" id="flot-pie-chart"></div>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Multiple Axes Line Chart Example
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
        <div class="panel panel-default">
            <div class="panel-heading">
                Moving Line Chart Example
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
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Bar Chart Example
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
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->
{% endblock %}

{% block bodyEnd %}
<script src="sb-admin-2/js/plugins/flot/excanvas.min.js"></script>
<script src="sb-admin-2/js/plugins/flot/jquery.flot.js"></script>
<script src="sb-admin-2/js/plugins/flot/jquery.flot.pie.js"></script>
<script src="sb-admin-2/js/plugins/flot/jquery.flot.resize.js"></script>
<script src="sb-admin-2/js/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="js/plugins/flot/flot-data.js"></script>
{% endblock %}