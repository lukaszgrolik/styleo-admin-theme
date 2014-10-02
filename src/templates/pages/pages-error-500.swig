{% extends '../layouts/main-layout.swig' %}

{% set currentRouteSlug = 'pages-error-500' %}

{% block content %}
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="single-window jumbotron text-center">
                <h1>500</h1>
                <h2>Don't worry, there is a little turbulence!</h2>
                <h3>We're trying to fix it, please try again later.</h3>
                <br>
                <a href="index.html" class="btn btn-primary btn-lg"><i class="fa fa-fw fa-home"></i> Home</a>
            </div>

            <p class="text-center">&copy; 2014 <a href="index.html">Your Company</a></p>
        </div>
    </div>
</div>
{% endblock %}
