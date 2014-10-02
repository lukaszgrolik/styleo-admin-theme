{% extends '../layouts/main-layout.swig' %}

{% set currentRouteSlug = 'pages-forgotten-password' %}

{% block content %}
<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="single-window panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">Forgot your password?</div>
                </div>
                <div class="panel-body">
                    <p>Don't worry, we'll send you an email to reset your password.</p>

                    <form role="form" class="text-center">
                        <fieldset>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">
                                        <i class="fa fa-fw fa-envelope-o"></i>
                                    </span>
                                    <input class="form-control" placeholder="Your Email" name="password" type="email">
                                </div>
                            </div>

                            <!-- Change this to a button or input when using this as a form -->
                            <a href="index.html" class="btn btn-lg btn-success btn-block">RESET PASSWORD</a>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}
