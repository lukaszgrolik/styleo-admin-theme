{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-text-fields' %}

{% block headEnd %}
{% endblock %}

{% block bodyEnd %}
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Field Types
            </div>
            <div class="panel-body">
                <form class="form-horizontal" action="#">
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Input Text</label>
                    <div class="col-sm-6">
                      <input class="form-control" type="text">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Input Password</label>
                    <div class="col-sm-6">
                      <input class="form-control" type="password" value="foo bar">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Placeholder Input</label>
                    <div class="col-sm-6">
                      <input class="form-control" placeholder="Placeholder text" type="text">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Disabled Input</label>
                    <div class="col-sm-6">
                      <input disabled="disabled" class="form-control" placeholder="Disabled input text" type="text">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Readonly Input</label>
                    <div class="col-sm-6">
                      <input readonly="readonly" class="form-control" value="Readonly input text" type="text">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Textarea</label>
                    <div class="col-sm-6">
                      <textarea class="form-control"></textarea>
                    </div>
                  </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Field Types
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <label for="sminput">Default Input</label>
                        <input class="form-control" id="sminput" placeholder="Default Input" type="text">
                    </div>
                    <div class="form-group">
                        <label for="definpu">Sharp Input</label>
                        <input class="form-control sharp" id="definput" placeholder="Sharp Input" type="text">
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Field Sizes
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <label for="sminput">Small Input</label>
                        <input class="form-control input-sm" id="sminput" placeholder="Small Input" type="text">
                    </div>
                    <div class="form-group">
                        <label for="definpu">Default Input</label>
                        <input class="form-control" id="definput" placeholder="Default Input" type="text">
                    </div>
                    <div class="form-group">
                        <label for="lginput">Large Input</label>
                        <input class="form-control input-lg" id="lginput" placeholder="Large Input" type="text">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Input Groups
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" placeholder="Username" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input class="form-control" type="text">
                            <span class="input-group-addon">.0</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">$</span>
                            <input class="form-control" type="text">
                            <span class="input-group-addon">.0</span>
                        </div>
                    </div>

                    <h5>Sizing</h5>
                    <div class="form-group">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" type="text">
                        </div>
                    </div>

                    <h5>With Icon</h5>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input class="form-control" placeholder="Username" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                            <input class="form-control" placeholder="Email Address" type="text">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Button Addons
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go</button>
                                </span>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <input class="form-control" type="text">
                                <span class="input-group-btn">
                                    <button class="btn btn-default shiny" type="button">Go</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="horizontal-space"></div>
                    <hr class="wide">
                    <h5>Buttons with dropdowns</h5>
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <input class="form-control" type="text">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
                                    <ul class="dropdown-menu dropdown-blue">
                                        <li>
                                            <a href="javascript:void(0);">Action</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">Another action</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="javascript:void(0);">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                    </div>

                    <br>

                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <input class="form-control" type="text">
                                <div class="input-group-btn">
                                    <a class="btn btn-warning" href="javascript:void(0);">Actions</a>
                                    <a class="btn btn-warning dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>

                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <div class="input-group-btn">
                                    <a class="btn btn-danger" href="javascript:void(0);">Actions</a>
                                    <a class="btn btn-danger dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown-menu dropdown-blue">
                                        <li>
                                            <a href="javascript:void(0);">Action</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">Another action</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="javascript:void(0);">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Validation States
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group has-success has-feedback">
                        <label class="control-label" for="inputSuccess2">Input with success</label>
                        <input class="form-control" id="inputSuccess2" value="Correct Value" type="text">
                        <span class="glyphicon glyphicon-thumbs-up form-control-feedback"></span>
                    </div>
                    <div class="form-group has-warning has-feedback">
                        <label class="control-label" for="inputWarning2">Input with warning</label>
                        <input class="form-control" id="inputWarning2" value="Unconvincing Value" type="text">
                        {# <span class="fa fa-warning form-control-feedback"></span> #}
                        <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
                    </div>
                    <div class="form-group has-error has-feedback">
                        <label class="control-label" for="inputError2">Input with error</label>
                        <input class="form-control" id="inputError2" value="Wrong Value" type="text">
                        <span class="glyphicon glyphicon-fire form-control-feedback"></span>
                    </div>
                    <div class="form-group has-info has-feedback">
                        <label class="control-label" for="inputinfo2">Input With Info</label>
                        <input class="form-control" id="inputinfo2" value="You've Got Mail!" type="text">
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Input Group Validation States
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <div class=" input-group has-success">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" placeholder="Username" value="Success" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group has-warning">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" placeholder="Username" value="Warning" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group has-error">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" placeholder="Username" value="Error" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group has-info">
                            <span class="input-group-addon">@</span>
                            <input class="form-control" placeholder="Username" value="Info" type="text">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
{% endblock %}