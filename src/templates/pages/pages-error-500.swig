{% extends '../layouts/layout-2.swig' %}

{% set currentRouteSlug = 'pages-error-500' %}

{% block content2 %}
<div class="row">
    <div class="col-md-6 col-md-offset-3">
        <div class="single-window jumbotron text-center">
            <h1>500</h1>
            <h2>Don't worry, there is a little turbulence!</h2>
            <h3>We're trying to fix it, please try again later.</h3>
            <br>
            <a href="index.html" class="btn btn-primary btn-lg"><i class="fa fa-fw fa-home"></i> Home</a>
        </div>
    </div>
</div>
{% endblock %}
