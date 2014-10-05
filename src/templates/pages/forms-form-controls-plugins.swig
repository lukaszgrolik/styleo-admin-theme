{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-controls-plugins' %}

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

    $('.custom-checkbox-switchery').each(function() {
        var options = {
            color: '#3498db',
            className: 'switchery'
        };

        if ($(this).hasClass('success')) {
            options.color = '#2ecc71';
        } else if ($(this).hasClass('info')) {
            options.color = '#1abc9c';
        } else if ($(this).hasClass('warning')) {
            options.color = '#e67e22';
        } else if ($(this).hasClass('danger')) {
            options.color = '#e74c3c';
        }

        if ($(this).hasClass('small')) {
            options.className += ' switchery-sm';
        } else if ($(this).hasClass('large')) {
            options.className += ' switchery-lg';
        }

        if ($(this).hasClass('sharp')) {
            options.className += ' sharp';
        }

        new Switchery($(this)[0], options);
    });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Checkbox &amp; Radio Inputs with <strong>iCheck</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right">Checkboxes</label>
                        <div class="col-sm-9">
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
                        <label for="inputPassword3" class="col-sm-3 control-label no-padding-right">Checkboxes Inline</label>
                        <div class="col-sm-9">
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
                        <label for="inputPassword3" class="col-sm-3 control-label no-padding-right">Disabled checkboxes</label>
                        <div class="col-sm-9">
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
                        <label class="col-sm-3 control-label no-padding-right">Radio</label>
                        <div class="col-sm-9">
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
                        <label for="inputPassword3" class="col-sm-3 control-label no-padding-right">Radio Inline</label>
                        <div class="col-sm-9">
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
                        <label for="inputPassword3" class="col-sm-3 control-label no-padding-right">Disabled radio</label>
                        <div class="col-sm-9">
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
                Sliders with <strong>Bootstrap Sliders</strong> Plugin
            </div>

            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Default</label>
                        <div class="col-sm-9">
                            <div class="slider slider-primary">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Sharp</label>
                        <div class="col-sm-9">
                            <div class="slider slider-primary sharp">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Range</label>
                        <div class="col-sm-9">
                            <div class="slider slider-primary">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="[20,60]">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Colored</label>
                        <div class="col-sm-9">
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
                        <div class="col-sm-9">
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
                Date Pickers with <strong>Bootstrap Date Pickers</strong> Plugins
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Date Picker</label>
                        <div class="col-sm-8">
                            <input class="form-control date-picker-input" type="text">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Date Range Picker</label>
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
                Selects with <strong>Select2</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Default Select</label>
                        <div class="col-sm-8">
                            <select class="custom-select-select2" style="width: 100%">
                                {% include '../partials/select-options-1.swig' %}
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">Multiselect</label>
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
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Switches with <strong>Switchery</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Switch Sizes</label>
                        <div class="col-sm-9">
                            <input type="checkbox" class="custom-checkbox-switchery small" checked />
                            <input type="checkbox" class="custom-checkbox-switchery" checked />
                            <input type="checkbox" class="custom-checkbox-switchery large" checked />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Switch Colors</label>
                        <div class="col-sm-9">
                            <input type="checkbox" class="custom-checkbox-switchery" checked />
                            <input type="checkbox" class="custom-checkbox-switchery success" checked />
                            <input type="checkbox" class="custom-checkbox-switchery info" checked />
                            <input type="checkbox" class="custom-checkbox-switchery warning" checked />
                            <input type="checkbox" class="custom-checkbox-switchery danger" checked />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Disabled Switch</label>
                        <div class="col-sm-9">
                            <input type="checkbox" class="custom-checkbox-switchery" checked disabled />
                            <input type="checkbox" class="custom-checkbox-switchery" disabled />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Sharp Switch</label>
                        <div class="col-sm-9">
                            <input type="checkbox" class="custom-checkbox-switchery sharp small" checked />
                            <input type="checkbox" class="custom-checkbox-switchery sharp success" checked />
                            <input type="checkbox" class="custom-checkbox-switchery sharp large danger" checked />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

{# <div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Pure CSS</strong> Checkbox &amp; Radio Inputs
            </div>

            <div class="panel-body">
                <form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right">Checkboxes</label>
                        <div class="col-sm-10">
                            <div class="checkbox">
                                <label class="custom-checkfield-label">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option Primary</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label class="custom-checkfield-label success">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option Success</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label class="custom-checkfield-label info">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option Info</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label class="custom-checkfield-label warning">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option Warning</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label class="custom-checkfield-label danger">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option Danger</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Checkboxes Inline</label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <label class="custom-checkfield-label">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="checkbox-inline">
                                <label class="custom-checkfield-label">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option 2</span>
                                </label>
                            </div>
                            <div class="checkbox-inline">
                                <label class="custom-checkfield-label">
                                    <input checked="checked" type="checkbox">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option 3</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Disabled checkboxes</label>
                        <div class="col-sm-10">
                            <div class="checkbox-inline">
                                <label class="custom-checkfield-label">
                                    <input type="checkbox" disabled="disabled">
                                    <span class="custom-checkfield"></span>
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="checkbox-inline">
                                <label class="custom-checkfield-label">
                                    <input checked="checked" type="checkbox" disabled>
                                    <span class="custom-checkfield"></span>
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
                                <label class="custom-checkfield-label">
                                    <input name="custom-checkfield-radio-1" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 1 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label class="custom-checkfield-label success">
                                    <input name="custom-checkfield-radio-1" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 2 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label class="custom-checkfield-label info">
                                    <input name="custom-checkfield-radio-1" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 2 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label class="custom-checkfield-label warning">
                                    <input name="custom-checkfield-radio-1" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 3 </span>
                                </label>
                            </div>
                            <div class="radio">
                                <label class="custom-checkfield-label danger">
                                    <input name="custom-checkfield-radio-1" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 4 </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Radio Inline</label>
                        <div class="col-sm-10">
                            <div class="radio-inline">
                                <label class="custom-checkfield-label">
                                    <input name="custom-checkfield-radio-2" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 1 </span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label class="custom-checkfield-label">
                                    <input name="custom-checkfield-radio-2" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 2 </span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label class="custom-checkfield-label">
                                    <input name="custom-checkfield-radio-2" checked="checked" type="radio">
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 3 </span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Disabled radio</label>
                        <div class="col-sm-10">
                            <div class="radio-inline">
                                <label class="custom-checkfield-label">
                                    <input type="radio" disabled>
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label class="custom-checkfield-label">
                                    <input checked="checked" type="radio" disabled>
                                    <span class="custom-checkfield custom-checkfield-radio"></span>
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
                <strong>Pure CSS</strong> Switches
            </div>

            <div class="panel-body">
                <label class="custom-switch-label">
                    <input type="checkbox">
                    <span class="custom-switch"></span>
                </label>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <strong>Pure CSS</strong> Switches
            </div>

            <div class="panel-body">
                <div class="switch">
                  <input id="cmn-toggle-1" class="cmn-toggle cmn-toggle-round" type="checkbox">
                  <label for="cmn-toggle-1"></label>
                </div>

                <div class="switch switch-success">
                  <input id="cmn-toggle-2" class="cmn-toggle cmn-toggle-round" type="checkbox">
                  <label for="cmn-toggle-2"></label>
                </div>

                <div class="switch switch-lg">
                  <input id="cmn-toggle-3" class="cmn-toggle cmn-toggle-round" type="checkbox">
                  <label for="cmn-toggle-3"></label>
                </div>

                <hr class="wide">

                <div class="switch">
                  <input id="cmn-toggle-4" class="cmn-toggle cmn-toggle-round-flat" type="checkbox">
                  <label for="cmn-toggle-4"></label>
                </div>

                <hr class="wide">

                <div class="switch">
                  <input id="cmn-toggle-7" class="cmn-toggle cmn-toggle-yes-no" type="checkbox">
                  <label for="cmn-toggle-7" data-on="Yes" data-off="No"></label>
                </div>
            </div>
        </div>
    </div>
</div> #}
{% endblock %}