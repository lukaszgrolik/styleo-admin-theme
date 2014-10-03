{% extends '../layouts/layout-2.swig' %}

{% set currentRouteSlug = 'pages-login' %}

{% block content2 %}
<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <div class="single-window panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">Sign In</div>
            </div>
            <div class="panel-body">
                <form role="form">
                    <fieldset>
                        <div class="form-group">
                            <input class="form-control" placeholder="E-mail" name="email" type="email" autofocus>
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Password" name="password" type="password" value="">
                        </div>
                        <div>
                            <a href="#">Forgot password?</a>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input name="remember" type="checkbox" value="Remember Me">Remember Me
                            </label>
                        </div>

                        <!-- Change this to a button or input when using this as a form -->
                        <a href="index.html" class="btn btn-lg btn-success btn-block">SIGN IN <i class="fa fa-fw fa-sign-in"></i></a>
                    </fieldset>
                </form>

                <hr class="wide">

                <p>Don't have account? <a href="pages-register.html">Sign up</a> now!</p>
            </div>
        </div>
    </div>
</div>
{% endblock %}
