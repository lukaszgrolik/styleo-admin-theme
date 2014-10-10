{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-controls' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/select2/select2.css">
<link rel="stylesheet" href="bower_components/bootstrap-datepicker/css/datepicker3.css">
<link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet" href="bower_components/seiyria-bootstrap-slider/css/bootstrap-slider.css">
<link rel="stylesheet" href="bower_components/switchery/dist/switchery.css">
{# <link rel="stylesheet" href="bower_components/fuelux/dist/css/fuelux.css"> #}
<link rel="stylesheet" href="bower_components/jquery-minicolors/jquery.minicolors.css">
<link rel="stylesheet" href="bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css">
<link rel="stylesheet" href="bower_components/dropzone/downloads/css/dropzone.css">
<link rel="stylesheet" href="bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/iCheck/icheck.js"></script>
<script src="bower_components/select2/select2.js"></script>
<script src="bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="bower_components/moment/moment.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="bower_components/seiyria-bootstrap-slider/js/bootstrap-slider.js"></script>
<script src="bower_components/switchery/dist/switchery.js"></script>
<script src="bower_components/jquery-minicolors/jquery.minicolors.min.js"></script>
<script src="bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
<script src="bower_components/dropzone/downloads/dropzone.min.js"></script>
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

<script>
$(function() {
    // $('[type="checkbox"], [type="radio"]').iCheck({
    $('.custom-checkbox-icheck').each(function() {
        var colorClass = '';
        var sizeClass = '';

        if ($(this).hasClass('success')) {
            colorClass = 'success';
        } else if ($(this).hasClass('info')) {
            colorClass = 'info';
        } else if ($(this).hasClass('warning')) {
            colorClass = 'warning';
        } else if ($(this).hasClass('danger')) {
            colorClass = 'danger';
        } else if ($(this).hasClass('yellow')) {
            colorClass = 'yellow';
        } else if ($(this).hasClass('violet')) {
            colorClass = 'violet';
        } else if ($(this).hasClass('brown')) {
            colorClass = 'brown';
        } else if ($(this).hasClass('navy')) {
            colorClass = 'navy';
        }

        if ($(this).hasClass('small')) {
            sizeClass = 'small';
        } else if ($(this).hasClass('large')) {
            sizeClass = 'large';
        } else if ($(this).hasClass('extra-large')) {
            sizeClass = 'extra-large';
        }

        var baseClass = 'custom-control-checkbox-icheck';
        var checkboxClass = baseClass + ' ' + baseClass + '-checkbox ' + colorClass + ' ' + sizeClass;
        var radioClass = baseClass + ' ' + baseClass + '-radio ' + colorClass + ' ' + sizeClass;

        $(this).iCheck({
            checkboxClass: checkboxClass,
            radioClass: radioClass
        });
    });



    // // $('.colored-success').iCheck({
    // $('.custom-checkbox-icheck.success').iCheck({
    //     checkboxClass: 'icheckbox_flat-green',
    //     radioClass: 'iradio_flat-green'
    // });

    // // $('.colored-warning').iCheck({
    // $('.custom-checkbox-icheck.warning').iCheck({
    //     checkboxClass: 'icheckbox_flat-orange',
    //     radioClass: 'iradio_flat-orange'
    // });

    // // $('.colored-danger').iCheck({
    // $('.custom-checkbox-icheck.danger').iCheck({
    //     checkboxClass: 'icheckbox_flat-red',
    //     radioClass: 'iradio_flat-red'
    // });

    //

    $('.custom-select-select2').select2();

    //

    $('.date-picker-input').datepicker();
    $('.date-range-picker-input').daterangepicker();

    //

    $('.slider-input').slider();

    // Switches

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
        } else if ($(this).hasClass('yellow')) {
            options.color = '#f1c40f';
        } else if ($(this).hasClass('violet')) {
            options.color = '#9b59b6';
        } else if ($(this).hasClass('brown')) {
            options.color = '#be643c';
        } else if ($(this).hasClass('navy')) {
            options.color = '#34495e';
        }

        if ($(this).hasClass('small')) {
            options.className += ' switchery-sm';
        } else if ($(this).hasClass('large')) {
            options.className += ' switchery-lg';
        } else if ($(this).hasClass('extra-large')) {
            options.className += ' switchery-xl';
        }

        if ($(this).hasClass('sharp')) {
            options.className += ' sharp';
        }

        new Switchery($(this)[0], options);
    });

    // Tags Inputs

    // $('[data-role="tagsinput"]').tagsinput({
    $('.tagsinput').tagsinput({
        tagClass: 'label label-primary'
    });

    // Color Pickers

    $('.colorpicker').each(function () {
        $(this).minicolors({
            control: $(this).attr('data-control') || 'hue',
            defaultValue: $(this).attr('data-defaultValue') || '',
            inline: $(this).attr('data-inline') === 'true',
            letterCase: $(this).attr('data-letterCase') || 'lowercase',
            opacity: $(this).attr('data-opacity'),
            position: $(this).attr('data-position') || 'bottom left',
            theme: 'bootstrap',
            change: function (hex, opacity) {
                if (!hex) {
                    return;
                }

                if (opacity) {
                    hex += ', ' + opacity;
                }

                try {
                    console.log(hex);
                } catch (e) {}
            },
        });
    });

    // Knobs

    $(".knob").knob();

    // File Upload

    // $("#my-dropzone").dropzone({ url: "/file/post" });
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
                        <div class="col-sm-3">
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck">
                                    <span class="text">Primary</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck success">
                                    <span class="text">Success</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck info">
                                    <span class="text">Info</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck warning">
                                    <span class="text">Warning</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck danger">
                                    <span class="text">Danger</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck yellow">
                                    <span class="text">Yellow</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck violet">
                                    <span class="text">Violet</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck brown">
                                    <span class="text">Brown</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck navy">
                                    <span class="text">Navy</span>
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck small">
                                    <span class="text">Small</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck">
                                    <span class="text">Default</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck large">
                                    <span class="text">Large</span>
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input checked="checked" type="checkbox" class="custom-checkbox-icheck extra-large">
                                    <span class="text">Extra Large</span>
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
                        <div class="col-sm-3">
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Primary</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck success">
                                    <span class="text">Success</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck info">
                                    <span class="text">Info</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck warning">
                                    <span class="text">Warning</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck danger">
                                    <span class="text">Danger</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck yellow">
                                    <span class="text">Yellow</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck violet">
                                    <span class="text">Violet</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck brown">
                                    <span class="text">Brown</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio" type="radio" class="custom-checkbox-icheck navy">
                                    <span class="text">Navy</span>
                                </label>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio-2" type="radio" class="custom-checkbox-icheck small">
                                    <span class="text">Small</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio-2" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Default</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio-2" type="radio" class="custom-checkbox-icheck large">
                                    <span class="text">Large</span>
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input name="form-field-radio-2" type="radio" class="custom-checkbox-icheck extra-large">
                                    <span class="text">Extra Large</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-3 control-label no-padding-right">Radio Inline</label>
                        <div class="col-sm-9">
                            <div class="radio-inline">
                                <label>
                                    <input name="form-field-radio2" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 1</span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label>
                                    <input name="form-field-radio2" checked="checked" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 2</span>
                                </label>
                            </div>
                            <div class="radio-inline">
                                <label>
                                    <input name="form-field-radio2" type="radio" class="custom-checkbox-icheck">
                                    <span class="text">Option 3</span>
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
                            <div class="slider slider-yellow">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="20">
                            </div>
                            <div class="slider slider-violet">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="40">
                            </div>
                            <div class="slider slider-brown">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="60">
                            </div>
                            <div class="slider slider-navy">
                                <input type="text" class="slider-input" value="" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="80">
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

    <div class="col-lg-6">
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
                            <input type="checkbox" class="custom-checkbox-switchery extra-large" checked />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Switch Colors</label>
                        <div class="col-sm-9">
                            <p>
                                <input type="checkbox" class="custom-checkbox-switchery" checked />
                                <input type="checkbox" class="custom-checkbox-switchery success" checked />
                                <input type="checkbox" class="custom-checkbox-switchery info" checked />
                                <input type="checkbox" class="custom-checkbox-switchery warning" checked />
                                <input type="checkbox" class="custom-checkbox-switchery danger" checked />
                            </p>

                            <p>
                                <input type="checkbox" class="custom-checkbox-switchery yellow" checked />
                                <input type="checkbox" class="custom-checkbox-switchery violet" checked />
                                <input type="checkbox" class="custom-checkbox-switchery brown" checked />
                                <input type="checkbox" class="custom-checkbox-switchery navy" checked />
                            </p>
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

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Sliders with <strong>jQuery Knob</strong> Plugin
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>Knob Colors</h3>

                        <div class="text-center">
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#3498db" data-thickness=".25" value="0">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#2ecc71" data-thickness=".25" value="10">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#1abc9c" data-thickness=".25" value="20">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#e67e22" data-thickness=".25" value="30">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#e74c3c" data-thickness=".25" value="40">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#f1c40f" data-thickness=".25" value="50">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#9b59b6" data-thickness=".25" value="60">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#be643c" data-thickness=".25" value="70">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#34495e" data-thickness=".25" value="80">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <h3>Knob Types</h3>

                        <div class="text-center">
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#e74c3c" data-thickness=".25" value="30">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-angleoffset="0" data-linecap=round data-fgcolor="#2ecc71" value="60" data-thickness=".25">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob"  data-width="100" data-height="100" data-angleoffset="-120" data-anglearc="240" data-fgcolor="#3498db" data-rotation="clockwise" value="30" data-thickness=".25">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <h3>Knob Sizes</h3>

                        <div class="text-center">
                            <div class="knob-container vam">
                                <input class="knob" data-width="50" data-height="50" data-cursor=true data-fgcolor="#3498db" data-thickness=".25" value="20">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="75" data-height="75" data-cursor=true data-fgcolor="#3498db" data-thickness=".25" value="40">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="100" data-height="100" data-cursor=true data-fgcolor="#3498db" data-thickness=".25" value="60">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="125" data-height="125" data-cursor=true data-fgcolor="#3498db" data-thickness=".25" value="80">
                            </div>
                            <div class="knob-container vam">
                                <input class="knob" data-width="150" data-height="150" data-cursor=true data-fgcolor="#3498db" data-thickness=".25" value="100">
                            </div>
                        </div>
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
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Tags Input with <strong>Bootstrap Tags Input</strong> Plugin
            </div>
            <div class="panel-body">
                <input type="text" value="Amsterdam,Washington,Sydney" class="tagsinput" placeholder="Add tags" />
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Color Pickers with <strong>jQuery MiniColors</strong> Plugin</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="hue-demo">Hue Control (default)</label>
                            <input type="text" id="hue-demo" class="form-control colorpicker" data-control="hue" value="#e74c3c">
                        </div>
                        <div class="form-group">
                            <label for="saturation-demo">Saturation Control</label>
                            <input type="text" id="saturation-demo" class="form-control colorpicker" data-control="saturation" value="#2ecc71">
                        </div>
                        <div class="form-group">
                            <label for="brightness-demo">Brightness Control</label>
                            <input type="text" id="brightness-demo" class="form-control colorpicker" data-control="brightness" value="#1abc9c">
                        </div>
                        <div class="form-group">
                            <label for="wheel-demo">Wheel Control</label>
                            <input type="text" id="wheel-demo" class="form-control colorpicker" data-control="wheel" value="#9b59b6">
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="text-field">Text Field</label>
                            <br>
                            <input type="text" id="text-field" class="form-control colorpicker" value="#2ecc71">
                        </div>
                        <div class="form-group">
                            <label for="hidden-input">Hidden Input</label>
                            <br>
                            <input type="hidden" id="hidden-input" class="colorpicker" value="#3498db" style="width:34px;">
                        </div>
                        <div class="form-group">
                            <label for="inline">Inline  Control</label>
                            <br>
                            <input type="text" id="inline" class="form-control colorpicker" data-inline="true" value="#95a5a6">
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="position-bottom-left">Control on bottom left (default)</label>
                            <input type="text" id="position-bottom-left" class="form-control colorpicker" data-position="bottom left" value="#2c3e50">
                        </div>
                        <div class="form-group">
                            <label for="position-top-left">Control on top left</label>
                            <input type="text" id="position-top-left" class="form-control colorpicker" data-position="top left" value="#f1c40f">
                        </div>
                        <div class="form-group">
                            <label for="position-bottom-right">Control on bottom right</label>
                            <input type="text" id="position-bottom-right" class="form-control colorpicker" data-position="bottom right" value="#e67e22">
                        </div>
                        <div class="form-group">
                            <label for="position-top-right">Control on top right</label>
                            <input type="text" id="position-top-right" class="form-control colorpicker" data-position="top right" value="#e74c3c">
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="form-group">
                            <label for="opacity">Opacity</label>
                            <br>
                            <input type="text" id="opacity" class="form-control colorpicker" data-opacity=".5" value="#1abc9c">
                            <span class="help-block">
                                Opacity can be assigned by including the <code>data-opacity</code> attribute
                                or by setting the <code>opacity</code> option to <code>true</code>.
                            </span>
                        </div>

                        <div class="form-group">
                            <label for="default-value">Default Value</label>
                            <br>
                            <input type="text" id="default-value" class="form-control colorpicker" data-defaultvalue="#9b59b6">
                            <span class="help-block">
                                This field has a default value assigned to it, so it will never be empty.
                            </span>
                        </div>
                        <div class="form-group">
                            <label for="letter-case">Letter Case</label>
                            <br>
                            <input type="text" id="letter-case" class="form-control colorpicker" data-lettercase="uppercase" value="#be643c">
                            <span class="help-block">
                                This field will always be uppercase.
                            </span>
                        </div>
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
                File Upload with <strong>Jasny Bootstrap</strong> Plugin
            </div>
            <div class="panel-body">
                <form class="form-horizontal group-border-dashed" action="#" style="border-radius: 0px;">
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Basic Input</label>
                    <div class="col-sm-6">
                      <div class="fileinput fileinput-new" data-provides="fileinput">
                        <span class="btn btn-primary btn-file"><span class="fileinput-new">Select file</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
                        <span class="fileinput-filename"></span>
                        <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">&times;</a>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Thumbnail Input</label>
                    <div class="col-sm-6">
                      <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;"></div>
                        <div>
                          <span class="btn btn-primary btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
                          <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">Remove</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Thumbnail Input</label>
                    <div class="col-sm-6">
                      <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                          <img src="http://placehold.it/190x140/2ecc71/ffffff" alt="...">
                        </div>
                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"></div>
                        <div>
                          <span class="btn btn-primary btn-file"><span class="fileinput-new">Select image</span><span class="fileinput-exists">Change</span><input type="file" name="..."></span>
                          <a href="#" class="btn btn-danger fileinput-exists" data-dismiss="fileinput">Remove</a>
                        </div>
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
                Multiple Files Upload with <strong>Dropzone</strong> Plugin
            </div>
            <div class="panel-body">
                <form action="#" class="dropzone" id="my-dropzone" enctype="multipart/form-data"></form>
            </div>
        </div>
    </div>
</div>

{# <hr class="wide" />
<h5>Simple ColorPicker</h5>
<select data-toggle="simplecolorpicker">
    <option value="#ac725e" />#ac725e
    <option value="#d06b64" />#d06b64
    <option value="#f83a22" />#f83a22
    <option value="#fa573c" />#fa573c
    <option value="#ff7537" />#ff7537
    <option value="#ffad46" selected="" />#ffad46
    <option value="#42d692" />#42d692
    <option value="#16a765" />#16a765
    <option value="#7bd148" />#7bd148
    <option value="#b3dc6c" />#b3dc6c
    <option value="#fbe983" />#fbe983
    <option value="#fad165" />#fad165
    <option value="#92e1c0" />#92e1c0
    <option value="#9fe1e7" />#9fe1e7
    <option value="#9fc6e7" />#9fc6e7
    <option value="#4986e7" />#4986e7
    <option value="#9a9cff" />#9a9cff
    <option value="#b99aff" />#b99aff
    <option value="#c2c2c2" />#c2c2c2
    <option value="#cabdbf" />#cabdbf
    <option value="#cca6ac" />#cca6ac
    <option value="#f691b2" />#f691b2
    <option value="#cd74e6" />#cd74e6
    <option value="#a47ae2" />#a47ae2
    <option value="#555" />#555
</select> #}

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