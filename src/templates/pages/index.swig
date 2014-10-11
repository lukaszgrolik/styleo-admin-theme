{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'index' %}

{% block headEnd%}
{# <link href="bower_components/morrisjs/morris.css" rel="stylesheet"> #}
{% endblock %}

{% block bodyEnd %}
{# <script src="bower_components/raphael/raphael-min.js"></script>
<script src="bower_components/morrisjs/morris.min.js"></script>
<script src="js/plugins/morris/morris-data.js"></script> #}
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="alert alert-success sharp">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <i class="fa fa-check"></i>
            Welcome to <strong>Styleo</strong> (v2.0.0) , the lightweight, feature-rich and easy to use admin template.
        </div>
    </div>
</div>
{% endblock %}