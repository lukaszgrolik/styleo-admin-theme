{% extends '../layouts/layout-2.swig' %}

{% set currentRouteSlug = 'pages-register' %}

{% block headEnd %}
<link href="bower_components/bootstrap-social/bootstrap-social.css" rel="stylesheet">
{% endblock %}

{% block bodyEnd %}

{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-md-6 col-md-offset-3">
    <div class="single-window panel panel-default">
      <div class="panel-heading">
        <div class="panel-title">Sign Up</div>
      </div>
      <div class="panel-body">
        <p class="text-center">
          <a class="btn btn-social sharp btn-facebook">
            <i class="fa fa-facebook"></i> Sign in with Facebook
          </a>
          <a class="btn btn-social sharp btn-twitter">
            <i class="fa fa-twitter"></i> Sign in with Twitter
          </a>
        </p>

        <p class="text-center">Or</p>

        <form role="form">
          <fieldset>
            <div class="form-group">
              <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
            </div>
            <div class="form-group">
              <input class="form-control" placeholder="Username" name="username" type="text">
            </div>
            <div class="form-group">
              <input class="form-control" placeholder="Password" name="password" type="password" value="">
            </div>
            <div class="form-group">
              <input class="form-control" placeholder="Repeat password" name="passwordRepeat" type="password" value="">
            </div>
            <div class="checkbox">
              <label>
                <input name="remember" type="checkbox" value="Remember Me">I agree with the Company <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
              </label>
            </div>

            <hr class="wide">

            <a href="index.html" class="btn btn-lg btn-success pull-right">SIGN UP <i class="fa fa-fw fa-arrow-right"></i></a>
          </fieldset>
        </form>
      </div>
    </div>
  </div>
</div>
{% endblock %}