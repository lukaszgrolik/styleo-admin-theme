{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'ui-elements-wells' %}

{% block content2 %}
<h2>Wells Sizes</h2>

<div class="row">
    <div class="col-lg-4">
        <div class="well">
            <h4>Default Well</h4>
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

<h2>Wells Variants</h2>

<div class="row">
    <div class="col-lg-4">
        <div class="well sharp">
            <h4>Sharp Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
        </div>
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="well bordered">
            <h4>Bordered Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
        </div>
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="well bordered sharp">
            <h4>Bordered Sharp Well</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
        </div>
    </div>
    <!-- /.col-lg-4 -->
</div>
<!-- /.row -->

<h2>Jumbotrons</h2>

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

<div class="row">
    <div class="col-lg-12">
        <div class="jumbotron sharp">
            <h1>Sharp Jumbotron</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing.</p>
            <p><a class="btn btn-primary btn-lg" role="button">Learn more</a>
            </p>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-12">
        <div class="jumbotron bordered">
            <h1>Bordered Jumbotron</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing.</p>
            <p><a class="btn btn-primary btn-lg" role="button">Learn more</a>
            </p>
        </div>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
{% endblock %}