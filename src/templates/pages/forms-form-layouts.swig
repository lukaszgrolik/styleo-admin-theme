{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-layouts' %}

{% block content2 %}
<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-default raised">
      <div class="panel-heading">
        Default Form
      </div>
      <div class="panel-body">
        <form role="form">
          <div class="form-group">
            <label for="email1">Email</label>
            <input class="form-control" id="email1" placeholder="Email" type="email">
          </div>
          <div class="form-group">
            <label for="password1">Password</label>
            <input class="form-control" id="password1" placeholder="Password" type="password">
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox">
                <span class="text">Remember me</span>
              </label>
            </div>
          </div>
          <button type="submit" class="btn btn-success">Sign in</button>
        </form>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-default raised">
      <div class="panel-heading">
        Horizontal Form
      </div>
      <div class="panel-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label for="email2" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
              <input class="form-control" id="email2" placeholder="Email" type="email">
            </div>
          </div>
          <div class="form-group">
            <label for="password2" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
              <input class="form-control" id="password2" placeholder="Password" type="password">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                <label>
                  <input type="checkbox">
                  <span class="text">Remember me</span>
                </label>
              </div>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-success">Sign in</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default raised">
      <div class="panel-heading">
        Inline Form
      </div>
      <div class="panel-body">
        <form class="form-inline" role="form">
          <div class="form-group">
            <label class="sr-only" for="email3">Email</label>
            <input class="form-control" id="email3" placeholder="Email" type="email">
          </div>
          <div class="form-group">
            <label class="sr-only" for="password3">Password</label>
            <input class="form-control" id="password3" placeholder="Password" type="password">
          </div>
          <div class="checkbox">
            <label>
              <input type="checkbox">
              <span class="text">Remember me</span>
            </label>
          </div>
          <button type="submit" class="btn btn-success">Sign in</button>
        </form>
      </div>
    </div>
  </div>
</div>
{% endblock %}