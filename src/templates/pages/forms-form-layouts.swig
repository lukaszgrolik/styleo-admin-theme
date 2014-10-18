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
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" id="exampleInputEmail1" placeholder="Enter email" type="email">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" placeholder="Password" type="password">
          </div>
          <div class="form-group">
            <div class="checkbox">
              <label>
                <input type="checkbox">
                <span class="text">Remember me next time.</span>
              </label>
            </div>
          </div>
          <button type="submit" class="btn btn-success">Submit</button>
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
            <label for="inputEmail3" class="col-sm-2 control-label no-padding-right">Email</label>
            <div class="col-sm-10">
              <input class="form-control" id="inputEmail3" placeholder="Email" type="email">
              <p class="help-block">Example block-level help text here.</p>
            </div>
          </div>
          <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Password</label>
            <div class="col-sm-10">
              <input class="form-control" id="inputPassword3" placeholder="Password" type="password">
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="checkbox">
                <label>
                  <input type="checkbox">
                  <span class="text">Remember me next time.</span>
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
            <label class="sr-only" for="exampleInputEmail2">Email address</label>
            <input class="form-control" id="exampleInputEmail2" placeholder="Enter email" type="email">
          </div>
          <div class="form-group">
            <label class="sr-only" for="exampleInputPassword2">Password</label>
            <input class="form-control" id="exampleInputPassword2" placeholder="Password" type="password">
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