{% extends '../layouts/layout-2.swig' %}

{% set currentRouteSlug = 'pages-lock-screen' %}

{% block content2 %}
<div class="row">
  <div class="col-md-4 col-md-offset-4">
    <div class="single-window panel panel-default">
      <div class="panel-heading">
        <div class="panel-title">Sign In as <b>Jack Simpson</b></div>
      </div>
      <div class="panel-body">
        <form role="form" class="form-inline text-center">
          <fieldset>
            <div class="form-group">
              <input class="form-control" placeholder="Password" name="password" type="password" value="">
            </div>

            <a href="index.html" class="btn btn-success">SIGN IN <i class="fa fa-fw fa-sign-in"></i></a>
          </fieldset>
        </form>

        <hr class="wide">

        <p class="text-center">Sign in as a different user? <a href="pages-login.html">Sign In Now!</a></p>
      </div>
    </div>
  </div>
</div>
{% endblock %}
