{% extends '../layouts/layout-1.swig' %}

{% block title %}Morris{% endblock %}

{% block headEnd %}
<link href="sb-admin-2/css/plugins/morris.css" rel="stylesheet">
{% endblock %}

{% block content2 %}
<!-- /.row -->
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Area Chart Example
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
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Bar Chart Example
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-bar-chart"></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</div>

<div class="row">
    <!-- /.col-lg-6 -->
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Line Chart Example
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div id="morris-line-chart"></div>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Donut Chart Example
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

{% block bodyEnd %}
<script src="sb-admin-2/js/plugins/morris/raphael.min.js"></script>
<script src="sb-admin-2/js/plugins/morris/morris.min.js"></script>
<script src="js/plugins/morris/morris-data.js"></script>
{% endblock %}