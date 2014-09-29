{% extends '../layouts/layout-1.swig' %}

{% block title %}Form Fields{% endblock %}

{% block breadcrumbs %}
<li><a href="#">Forms</a></li>
<li><a href="#">Form Fields</a></li>
{% endblock %}

{% block headEnd %}
{# <link rel="stylesheet" href="css/plugins/icheck/flat/flat.css"> #}
<link rel="stylesheet" href="css/plugins/icheck/flat/blue.css">
<link rel="stylesheet" href="css/plugins/icheck/flat/green.css">
<link rel="stylesheet" href="css/plugins/icheck/flat/orange.css">
<link rel="stylesheet" href="css/plugins/icheck/flat/red.css">

<link rel="stylesheet" href="css/plugins/select2/select2.css">
{# <link rel="stylesheet" href="css/plugins/select2/select2-bootstrap.css"> #}
{% endblock %}

{% block bodyEnd %}
<script src="js/plugins/icheck/icheck.js"></script>
<script src="js/plugins/select2/select2.js"></script>

<script>
$(function() {
    $('[type="checkbox"], [type="radio"]').iCheck({
        checkboxClass: 'icheckbox_flat-blue',
        radioClass: 'iradio_flat-blue'
    });

    $('.colored-success').iCheck({
        checkboxClass: 'icheckbox_flat-green',
        radioClass: 'iradio_flat-green'
    });

    $('.colored-warning').iCheck({
        checkboxClass: 'icheckbox_flat-orange',
        radioClass: 'iradio_flat-orange'
    });

    $('.colored-danger').iCheck({
        checkboxClass: 'icheckbox_flat-red',
        radioClass: 'iradio_flat-red'
    });

    //

    $('select').select2();
});
</script>
{% endblock %}

{% block content2 %}
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
                        <input class="form-control" id="sminput" placeholder="Small Input" type="text">
                    </div>
                    <div class="form-group">
                        <label for="definpu">Sharp Input</label>
                        <input class="form-control sharp" id="definput" placeholder="Default Input" type="text">
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
                      <input class="form-control" type="password">
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
                            <span class="input-group-addon"><i class="fa fa-user darkorange"></i></span>
                            <input class="form-control" placeholder="Username" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon bg-blue bordered-blue"><i class="fa fa-envelope-o"></i></span>
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
                    <h4>Sizing</h4>
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group input-group-xs">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go</button>
                                </span>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group input-group-sm">
                                <input class="form-control" type="text">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="horizontal-space"></div>
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group input-group-lg">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go</button>
                                </span>
                                <input class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group input-group-xl">
                                <input class="form-control" type="text">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <hr class="wide">
                    <h5>Buttons with dropdowns</h5>
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-xs-6">
                            <div class="input-group">
                                <input class="form-control" type="text">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Action <span class="caret"></span></button>
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
                                    <a class="btn btn-blue" href="javascript:void(0);">Actions</a>
                                    <a class="btn btn-blue dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
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

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-2">
                        <input class="form-control" placeholder=".col-xs-2" type="text">
                    </div>
                    <div class="col-xs-3">
                        <input class="form-control" placeholder=".col-xs-3" type="text">
                    </div>
                    <div class="col-xs-4">
                        <input class="form-control" placeholder=".col-xs-4" type="text">
                    </div>
                </div>
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

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Sharp Input Group Validation States
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <div class=" input-group has-success">
                            <span class="input-group-addon sharp">@</span>
                            <input class="form-control sharp" placeholder="Username" value="Success" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group has-warning">
                            <span class="input-group-addon sharp">@</span>
                            <input class="form-control sharp" placeholder="Username" value="Warning" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group has-error">
                            <span class="input-group-addon sharp">@</span>
                            <input class="form-control sharp" placeholder="Username" value="Error" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group has-info">
                            <span class="input-group-addon sharp">@</span>
                            <input class="form-control sharp" placeholder="Username" value="Info" type="text">
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
                Default Panel
            </div>
            <div class="panel-body">
                <h5>Checkboxes</h5>
                <div class="row">
                    <div class="col-lg-3 col-sm-3 col-xs-3">
                        <div class="checkbox">
                            <label>
                                <input checked="checked" type="checkbox">
                                <span class="text">Default</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-3">
                        <div class="checkbox">
                            <label>
                                <input class="colored-success" checked="checked" type="checkbox">
                                <span class="text">Success</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-3">
                        <div class="checkbox">
                            <label>
                                <input class="colored-warning" checked="checked" type="checkbox">
                                <span class="text">Warning</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-3 col-xs-3">
                        <div class="checkbox">
                            <label>
                                <input class="colored-danger" checked="checked" type="checkbox">
                                <span class="text">Danger</span>
                            </label>
                        </div>
                    </div>
                </div>

                <hr class="wide">

                <h5>Radio Buttons</h5>
                <div class="control-group">
                    <div class="radio">
                        <label>
                            <input name="form-field-radio" checked="checked" type="radio">
                            <span class="text">Basic </span>
                        </label>
                    </div>
                    <div class="radio">
                        <label>
                            <input name="form-field-radio" class="inverted" type="radio">
                            <span class="text">Inverted</span>
                        </label>
                    </div>
                </div>
                <hr class="wide">
                <h5>Colored Radio Buttons</h5>
                <div class="control-group">
                    <div class="radio">
                        <label>
                            <input name="form-field-radio" class="colored-blue" type="radio">
                            <span class="text"> Windows Phone</span>
                        </label>
                    </div>

                    <div class="radio">
                        <label>
                            <input name="form-field-radio" class="colored-danger" type="radio">
                            <span class="text"> IOS</span>
                        </label>
                    </div>

                    <div class="radio">
                        <label>
                            <input name="form-field-radio" class="colored-success" type="radio">
                            <span class="text"> Android</span>
                        </label>
                    </div>

                    <div class="radio">
                        <label>
                            <input name="form-field-radio" class="colored-blueberry" type="radio">
                            <span class="text"> Blackberry</span>
                        </label>
                    </div>
                </div>
                <hr class="wide">
                <h5>Disabled Controls</h5>
                <div class="row">
                    <div class="col-lg-6 col-sm-6 col-xs-6">
                        <div class="checkbox">
                            <label>
                                <input disabled="disabled" type="checkbox">
                                <span class="text">CheckBox</span>
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-6 col-xs-6">
                        <div class="radio">
                            <label>
                                <input disabled="disabled" type="radio">
                                <span class="text">Radio Button</span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <h6>Default Switch Types</h6>
                    <div class="horizontal-space"></div>
                    <div class="row">
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                    </div>
                    <hr class="wide">
                    <h6>YES/NO Switches</h6>
                    <div class="horizontal-space"></div>
                    <div class="row">
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider yesno" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon yesno" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle yesno" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                    </div>
                    <hr class="wide">
                    <h6>Colored Switches</h6>
                    <div class="horizontal-space"></div>
                    <div class="row">
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-primary" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-primary" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-primary" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-darkorange" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-darkorange" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-darkorange" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-palegreen" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-palegreen" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-palegreen" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-purple" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-purple" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-purple" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-warning" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-warning" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-warning" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-success" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-success" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-success" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-danger" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-danger" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-danger" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider colored-magenta" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider slider-icon colored-magenta" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                        <div class="col-xs-4">
                            <label>
                                <input class="checkbox-slider toggle colored-magenta" type="checkbox">
                                <span class="text"></span>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <label for="sminput">Default Select</label>
                        <div>
                            <select style="width: 100%">
                                <option value="AL">Alabama</option>
                                <option value="AK">Alaska</option>
                                <option value="AZ">Arizona</option>
                                <option value="AR">Arkansas</option>
                                <option value="CA">California</option>
                                <option value="CO">Colorado</option>
                                <option value="CT">Connecticut</option>
                                <option value="DE">Delaware</option>
                                <option value="FL">Florida</option>
                                <option value="GA">Georgia</option>
                                <option value="HI">Hawaii</option>
                                <option value="ID">Idaho</option>
                                <option value="IL">Illinois</option>
                                <option value="IN">Indiana</option>
                                <option value="IA">Iowa</option>
                                <option value="KS">Kansas</option>
                                <option value="KY">Kentucky</option>
                                <option value="LA">Louisiana</option>
                                <option value="ME">Maine</option>
                                <option value="MD">Maryland</option>
                                <option value="MA">Massachusetts</option>
                                <option value="MI">Michigan</option>
                                <option value="MN">Minnesota</option>
                                <option value="MS">Mississippi</option>
                                <option value="MO">Missouri</option>
                                <option value="MT">Montana</option>
                                <option value="NE">Nebraska</option>
                                <option value="NV">Nevada</option>
                                <option value="NH">New Hampshire</option>
                                <option value="NJ">New Jersey</option>
                                <option value="NM">New Mexico</option>
                                <option value="NY">New York</option>
                                <option value="NC">North Carolina</option>
                                <option value="ND">North Dakota</option>
                                <option value="OH">Ohio</option>
                                <option value="OK">Oklahoma</option>
                                <option value="OR">Oregon</option>
                                <option value="PA">Pennsylvania</option>
                                <option value="RI">Rhode Island</option>
                                <option value="SC">South Carolina</option>
                                <option value="SD">South Dakota</option>
                                <option value="TN">Tennessee</option>
                                <option value="TX">Texas</option>
                                <option value="UT">Utah</option>
                                <option value="VT">Vermont</option>
                                <option value="VA">Virginia</option>
                                <option value="WA">Washington</option>
                                <option value="WV">West Virginia</option>
                                <option value="WI">Wisconsin</option>
                                <option value="WY">Wyoming</option>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control input-xs" type="text">
                            <i class="fa fa-times purple"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon">
                            <input class="form-control input-sm" type="text">
                            <i class="glyphicon glyphicon-search blue"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control" type="text">
                            <i class="fa fa-user darkorange"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon">
                            <input class="form-control input-lg" type="text">
                            <i class="fa fa-envelope palegreen"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control input-xl" type="text">
                            <i class="glyphicon glyphicon-lock maroon"></i>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control input-xs" type="text">
                            <i class="fa fa-times sky circular"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon">
                            <input class="form-control input-sm" type="text">
                            <i class="glyphicon glyphicon-search danger circular"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control" type="text">
                            <i class="fa fa-user success circular"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon">
                            <input class="form-control input-lg" type="text">
                            <i class="fa fa-envelope info circular"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control input-xl" type="text">
                            <i class="glyphicon glyphicon-earphone darkpink circular"></i>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <span class="input-icon icon-right inverted">
                            <input class="form-control input-xs" type="text">
                            <i class="fa fa-times bg-purple"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon inverted">
                            <input class="form-control input-sm" type="text">
                            <i class="glyphicon glyphicon-search bg-blue"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right inverted">
                            <input class="form-control" type="text">
                            <i class="fa fa-user bg-darkorange"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon inverted">
                            <input class="form-control input-lg" type="text">
                            <i class="fa fa-envelope bg-palegreen"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right inverted">
                            <input class="form-control input-xl" type="text">
                            <i class="glyphicon glyphicon-lock bg-pink"></i>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Basic Form Elements
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <form role="form">
                            <div class="form-group">
                                <label>Text Input</label>
                                <input class="form-control">
                                <p class="help-block">Example block-level help text here.</p>
                            </div>
                            <div class="form-group">
                                <label>Text Input with Placeholder</label>
                                <input class="form-control" placeholder="Enter text">
                            </div>
                            <div class="form-group">
                                <label>Static Control</label>
                                <p class="form-control-static">email@example.com</p>
                            </div>
                            <div class="form-group">
                                <label>File input</label>
                                <input type="file">
                            </div>
                            <div class="form-group">
                                <label>Text area</label>
                                <textarea class="form-control" rows="3"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Checkboxes</label>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">Checkbox 1
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">Checkbox 2
                                    </label>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" value="">Checkbox 3
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Inline Checkboxes</label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">1
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">2
                                </label>
                                <label class="checkbox-inline">
                                    <input type="checkbox">3
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Radio Buttons</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>Radio 1
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio 2
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">Radio 3
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Inline Radio Buttons</label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>1
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">2
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline3" value="option3">3
                                </label>
                            </div>
                            <div class="form-group">
                                <label>Selects</label>
                                <select class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Multiple Selects</label>
                                <select multiple class="form-control">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                    <option>5</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-default">Submit Button</button>
                            <button type="reset" class="btn btn-default">Reset Button</button>
                        </form>
                    </div>
                    <!-- /.col-lg-6 (nested) -->
                    <div class="col-lg-6">
                        <h1>Disabled Form States</h1>
                        <form role="form">
                            <fieldset disabled>
                                <div class="form-group">
                                    <label for="disabledSelect">Disabled input</label>
                                    <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input" disabled>
                                </div>
                                <div class="form-group">
                                    <label for="disabledSelect">Disabled select menu</label>
                                    <select id="disabledSelect" class="form-control">
                                        <option>Disabled select</option>
                                    </select>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox">Disabled Checkbox
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-primary">Disabled Button</button>
                            </fieldset>
                        </form>
                        <h1>Form Validation States</h1>
                        <form role="form">
                            <div class="form-group has-success">
                                <label class="control-label" for="inputSuccess">Input with success</label>
                                <input type="text" class="form-control" id="inputSuccess">
                            </div>
                            <div class="form-group has-warning">
                                <label class="control-label" for="inputWarning">Input with warning</label>
                                <input type="text" class="form-control" id="inputWarning">
                            </div>
                            <div class="form-group has-error">
                                <label class="control-label" for="inputError">Input with error</label>
                                <input type="text" class="form-control" id="inputError">
                            </div>
                        </form>
                        <h1>Input Groups</h1>
                        <form role="form">
                            <div class="form-group input-group">
                                <span class="input-group-addon">@</span>
                                <input type="text" class="form-control" placeholder="Username">
                            </div>
                            <div class="form-group input-group">
                                <input type="text" class="form-control">
                                <span class="input-group-addon">.00</span>
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-eur"></i>
                                </span>
                                <input type="text" class="form-control" placeholder="Font Awesome Icon">
                            </div>
                            <div class="form-group input-group">
                                <span class="input-group-addon">$</span>
                                <input type="text" class="form-control">
                                <span class="input-group-addon">.00</span>
                            </div>
                            <div class="form-group input-group">
                                <input type="text" class="form-control">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>
                    <!-- /.col-lg-6 (nested) -->
                </div>
                <!-- /.row (nested) -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->
{% endblock %}