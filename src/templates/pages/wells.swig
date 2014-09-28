{% extends '../layouts/layout-1.swig' %}

{% block title %}Wells{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-4">
        <div class="well">
            <h4>Normal Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
        </div>
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="well well-lg">
            <h4>Large Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
        </div>
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="well well-sm">
            <h4>Small Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
        </div>
    </div>
    <!-- /.col-lg-4 -->
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="jumbotron">
            <h1>Jumbotron</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing.</p>
            <p><a class="btn btn-primary btn-lg" role="button">Learn more</a>
            </p>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
{% endblock %}