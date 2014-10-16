{% extends '../layouts/layout-2.swig' %}

{% set currentRouteSlug = 'pages-error-404' %}

{% block content2 %}
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <div class="single-window jumbotron text-center">
      <h1>404</h1>
      <h2>Sorry, but this page doesn't exist!</h2>
      <br>
      <a href="index.html" class="btn btn-primary btn-lg"><i class="fa fa-fw fa-home"></i> Home</a>
    </div>
  </div>
</div>
{% endblock %}
