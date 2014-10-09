{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-text-fields' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/jquery.maskedinput/jquery.maskedinput.min.js"></script>
<script src="bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

<script>
$(function() {
    // Masks

    $('[data-mask="date"]').mask('99/99/9999');
    $('[data-mask="phone"]').mask('(999) 999-9999');
    $('[data-mask="phone-ext"]').mask('(999) 999-9999? x99999');
    $('[data-mask="phone-int"]').mask('+33 999 999 999');
    $('[data-mask="taxid"]').mask('99-9999999');
    $('[data-mask="ssn"]').mask('999-99-9999');
    $('[data-mask="product-key"]').mask('a*-999-a999');
    $('[data-mask="percent"]').mask('99%');
    $('[data-mask="currency"]').mask('$999,999,999.99');

    // Spinners

    $("input[name='cleaninit']").TouchSpin();
    $("input[name='demo1']").TouchSpin({
      min: 0,
      max: 100,
      step: 0.1,
      decimals: 2,
      boostat: 5,
      maxboostedstep: 10,
      postfix: '%'
    });
    $("input[name='demo2']").TouchSpin({
      min: -1000000000,
      max: 1000000000,
      stepinterval: 50,
      maxboostedstep: 10000000,
      prefix: '$'
    });
    $("input[name='demo4']").TouchSpin({
      postfix: "a button",
      postfix_extraclass: "btn btn-default"
    });
});
</script>
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
        <div class="panel panel-info raised gradient">
            <div class="panel-heading">
                <i class="fa fa-flag"></i>
                Input Icons
            </div>
            <div class="panel-body">
                <form role="form">
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control" id="userameInput" placeholder="Username" type="text">
                            <i class="glyphicon glyphicon-user circular"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control" id="emailInput" placeholder="Email Address" type="text">
                            <i class="fa fa-envelope-o circular"></i>
                        </span>
                    </div>
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control" id="passwordInput" placeholder="Password" type="text">
                            <i class="fa fa-lock circular"></i>
                        </span>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <span class="input-icon icon-right">
                                    <input class="form-control" placeholder="Name" type="text">
                                    <i class="fa fa-user"></i>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <span class="input-icon icon-right">
                                    <input class="form-control" placeholder="Phone" type="text">
                                    <i class="glyphicon glyphicon-earphone"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <span class="input-icon icon-right">
                                    <input class="form-control date-picker" id="id-date-picker-1" data-date-format="dd-mm-yyyy" placeholder="Birth Date" type="text">
                                    <i class="fa fa-calendar"></i>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <span class="input-icon icon-right">
                                    <input class="form-control" placeholder="Mobile" type="text">
                                    <i class="glyphicon glyphicon-phone"></i>
                                </span>
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

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Input Masks with <strong>jQuery Masked Input</strong> Plugin
            </div>

            <div class="panel-body">
                <form class="form-horizontal group-border-dashed" action="#" novalidate>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Date</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="date" class="form-control" placeholder="DD/MM/YYYY" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Phone</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="phone" class="form-control" placeholder="(999) 999-9999" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Phone + Optional Ext.</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="phone-ext" class="form-control" placeholder="(999) 999-9999? x99999" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Int Phone</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="phone-int" class="form-control" placeholder="+33 999 999 999" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Tax Id</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="taxid" class="form-control" placeholder="99-9999999" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">SSN</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="ssn" class="form-control" placeholder="999-99-9999" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Product Key</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="product-key" class="form-control" placeholder="a*-999-a999" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Percent</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="percent" class="form-control" placeholder="99%" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Currency</label>
                        <div class="col-sm-6">
                            <input type="text" data-mask="currency" class="form-control text-right" placeholder="$0" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Input Spinners with <strong>Bootstrap TouchSpin</strong> Plugin</div>
            <div class="panel-body">
                <form class="form-horizontal group-border-dashed" action="#" style="border-radius: 0px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Init with empty value</label>
                    <div class="col-sm-3">
                      <input id="cleaninit" type="text" value="" name="cleaninit" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Example with postfix</label>
                    <div class="col-sm-3">
                      <input id="demo1" type="text" value="55" name="demo1" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Example with prefix</label>
                    <div class="col-sm-3">
                      <input id="demo2" type="text" value="0" name="demo2" class="col-md-8 form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Button postfix</label>
                    <div class="col-sm-3">
                      <input id="demo4" type="text" value="" name="demo4" class="input-sm">
                    </div>
                  </div>
                </form>
            </div>
        </div>
    </div>
</div>
{% endblock %}