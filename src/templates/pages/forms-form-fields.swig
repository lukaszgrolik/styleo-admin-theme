{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-fields' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/iCheck/skins/flat/blue.css">
<link rel="stylesheet" href="bower_components/iCheck/skins/flat/green.css">
<link rel="stylesheet" href="bower_components/iCheck/skins/flat/orange.css">
<link rel="stylesheet" href="bower_components/iCheck/skins/flat/red.css">

<link rel="stylesheet" href="bower_components/select2/select2.css">

<link rel="stylesheet" href="bower_components/bootstrap-datepicker/css/datepicker3.css">
<link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker-bs3.css">

<link rel="stylesheet" href="bower_components/seiyria-bootstrap-slider/css/bootstrap-slider.css">

<link rel="stylesheet" href="bower_components/switchery/dist/switchery.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/iCheck/icheck.js"></script>
<script src="bower_components/select2/select2.js"></script>
<script src="bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="bower_components/moment/moment.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="bower_components/seiyria-bootstrap-slider/js/bootstrap-slider.js"></script>
<script src="bower_components/switchery/dist/switchery.js"></script>

<script>
$(function() {
    // $('[type="checkbox"], [type="radio"]').iCheck({
    $('.custom-checkbox-icheck').iCheck({
        checkboxClass: 'icheckbox_flat-blue',
        radioClass: 'iradio_flat-blue'
    });

    // $('.colored-success').iCheck({
    $('.custom-checkbox-icheck.success').iCheck({
        checkboxClass: 'icheckbox_flat-green',
        radioClass: 'iradio_flat-green'
    });

    // $('.colored-warning').iCheck({
    $('.custom-checkbox-icheck.warning').iCheck({
        checkboxClass: 'icheckbox_flat-orange',
        radioClass: 'iradio_flat-orange'
    });

    // $('.colored-danger').iCheck({
    $('.custom-checkbox-icheck.danger').iCheck({
        checkboxClass: 'icheckbox_flat-red',
        radioClass: 'iradio_flat-red'
    });

    //

    $('.custom-select-select2').select2();

    //

    $('.date-picker-input').datepicker();
    $('.date-range-picker-input').daterangepicker();

    //

    $('.slider-input').slider();

    //

    $('.js-switch').each(function() {
        new Switchery($(this)[0]);
    })
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
                    <label class="col-sm-3 control-label">Checkbox Inputs</label>
                    <div class="col-sm-6">
                      <div class="checkbox-inline">
                        <label>
                            <input checked="checked" type="checkbox">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                      <div class="checkbox-inline">
                        <label>
                            <input checked="checked" type="checkbox">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                      <div class="checkbox-inline">
                        <label>
                            <input checked="checked" type="checkbox">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Disabled Checkbox Inputs</label>
                    <div class="col-sm-6">
                      <div class="checkbox-inline">
                        <label>
                            <input disabled type="checkbox">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                      <div class="checkbox-inline">
                        <label>
                            <input disabled checked="checked" type="checkbox">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Radio Inputs</label>
                    <div class="col-sm-6">
                      <div class="radio-inline">
                        <label>
                            <input checked="checked" type="radio" name="radio5">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                      <div class="radio-inline">
                        <label>
                            <input checked="checked" type="radio" name="radio5">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                      <div class="radio-inline">
                        <label>
                            <input checked="checked" type="radio" name="radio5">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Disabled Radio Inputs</label>
                    <div class="col-sm-6">
                      <div class="radio-inline">
                        <label>
                            <input disabled type="radio" name="radio5">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                      <div class="radio-inline">
                        <label>
                            <input disabled checked="checked" type="radio" name="radio5">
                            <span class="text">Option 2</span>
                        </label>
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Select</label>
                    <div class="col-sm-6">
                      <select class="form-control">
                          {% include '../partials/select-options-1.swig' %}
                      </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-3 control-label">Multiselect</label>
                    <div class="col-sm-6">
                      <select multiple class="form-control">
                          {% include '../partials/select-options-1.swig' %}
                      </select>
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
                Checkbox &amp; Radio Inputs with <strong>iCheck</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right">Checkboxes</label>
                        <div class="col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck">
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck success">
                                    <span class="text">Option 2</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck warning">
                                    <span class="text">Option 3</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck danger">
                                    <span class="text">Option 3</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Checkboxes Inline</label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck">
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="checkbox-inline">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck">
                                    <span class="text">Option 2</span>
                                </label>
                            </div>
                            <div class="checkbox-inline">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck">
                                    <span class="text">Option 3</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Disabled checkboxes</label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <label>
                                    <input type="checkbox" disabled="disabled" class="custom-checkbox-icheck">
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="checkbox-inline">
                                <label>
                                    <input checked="checked" type="checkbox" disabled class="custom-checkbox-icheck">
                                    <span class="text">Option 2</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <hr class="wide">

                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right">Radio</label>
                        <div class="col-sm-10">
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 1 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" checked="checked" type="radio" class="custom-checkbox-icheck success">
                                    <span class="text">Option 2 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" checked="checked" type="radio" class="custom-checkbox-icheck warning">
                                    <span class="text">Option 3 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" checked="checked" type="radio" class="custom-checkbox-icheck danger">
                                    <span class="text">Option 4 </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Radio Inline</label>
                        <div class="col-sm-10">
                            <div class="radio-inline">
                                <label>
                                    <input name="form-field-radio2" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 1 </span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label>
                                    <input name="form-field-radio2" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 2 </span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label>
                                    <input name="form-field-radio2" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 3 </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Disabled radio</label>
                        <div class="col-sm-10">
                            <div class="radio-inline">
                                <label>
                                    <input type="radio" disabled class="custom-checkbox-icheck">
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label>
                                    <input checked="checked" type="radio" disabled class="custom-checkbox-icheck">
                                    <span class="text">Option 2</span>
                                </label>
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
                Selects with <strong>Select2</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-4">Default Select</label>
                        <div class="col-sm-8">
                            <select class="custom-select-select2" style="width: 100%">
                                {% include '../partials/select-options-1.swig' %}
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4">Multiselect</label>
                        <div class="col-sm-8">
                            <select multiple class="custom-select-select2" style="width: 100%">
                                {% include '../partials/select-options-1.swig' %}
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Date Pickers with <strong>Bootstrap Date Pickers</strong> Plugins
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-4">Date Picker</label>
                        <div class="col-sm-8">
                            <input class="form-control date-picker-input" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4">Date Range Picker</label>
                        <div class="col-sm-8">
                            <input class="form-control date-range-picker-input" type="text">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Switches with <strong>Switchery</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Switch Size</label>
                        <div class="col-sm-7">
                            <input type="checkbox" class="js-switch xsmall" checked />
                            <input type="checkbox" class="js-switch small" checked />
                            <input type="checkbox" class="js-switch" checked />
                            <input type="checkbox" class="js-switch large" checked />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Switch Checked</label>
                        <div class="col-sm-7">
                            <input type="checkbox" class="js-switch" />
                            <input type="checkbox" class="js-switch" checked />
                            <input type="checkbox" class="js-switch" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Disabled Switch</label>
                        <div class="col-sm-7">
                            <input type="checkbox" class="js-switch js-switch-disabled" />
                            <input type="checkbox" class="js-switch js-switch-disabled-opacity" checked />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Colored Switch</label>
                        <div class="col-sm-7">
                            <input type="checkbox" class="js-switch js-switch-blue" checked />
                            <input type="checkbox" class="js-switch js-switch-pink" checked />
                            <input type="checkbox" class="js-switch js-switch-teal" checked />
                            <input type="checkbox" class="js-switch js-switch-red" checked />
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
                Sliders with <strong>Bootstrap Sliders</strong> Plugin
            </div>

            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Default</label>
                        <div class="col-sm-5">
                            <div class="slider slider-primary">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Sharp</label>
                        <div class="col-sm-5">
                            <div class="slider slider-primary sharp">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Range</label>
                        <div class="col-sm-5">
                            <div class="slider slider-primary">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="[20,60]">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Colored</label>
                        <div class="col-sm-5">
                            <div class="slider slider-default">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="20">
                            </div>
                            <div class="slider slider-primary">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                            <div class="slider slider-success">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="60">
                            </div>
                            <div class="slider slider-info">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="80">
                            </div>
                            <div class="slider slider-warning">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="60">
                            </div>
                            <div class="slider slider-danger">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Vertical</label>
                        <div class="col-sm-5">
                            <div class="slider slider-primary dib">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40" data-slider-orientation="vertical">
                            </div>
                            <div class="slider slider-primary dib">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="20" data-slider-orientation="vertical">
                            </div>
                            <div class="slider slider-primary dib">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="70" data-slider-orientation="vertical">
                            </div>
                            <div class="slider slider-primary dib">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="80" data-slider-orientation="vertical">
                            </div>
                            <div class="slider slider-primary dib">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="50" data-slider-orientation="vertical">
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