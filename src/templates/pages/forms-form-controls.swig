{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-controls' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/select2/select2.css">
<link rel="stylesheet" href="bower_components/bootstrap-datepicker/css/datepicker3.css">
<link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet" href="bower_components/seiyria-bootstrap-slider/dist/css/bootstrap-slider.min.css">
<link rel="stylesheet" href="bower_components/switchery/dist/switchery.css">
<link rel="stylesheet" href="bower_components/jquery-minicolors/jquery.minicolors.css">
<link rel="stylesheet" href="bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css">
<link rel="stylesheet" href="bower_components/dropzone/downloads/css/dropzone.css">
<link rel="stylesheet" href="bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/iCheck/icheck.min.js"></script>
<script src="bower_components/select2/select2.min.js"></script>
<script src="bower_components/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="bower_components/seiyria-bootstrap-slider/dist/bootstrap-slider.min.js"></script>
<script src="bower_components/switchery/dist/switchery.js"></script>
<script src="bower_components/jquery-minicolors/jquery.minicolors.min.js"></script>
<script src="bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
<script src="bower_components/dropzone/downloads/dropzone.min.js"></script>
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<script src="bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

<script src="js/custom-checkbox-icheck.js"></script>
<script src="js/custom-checkbox-switchery.js"></script>
<script src="js/custom-colorpicker-minicolors.js"></script>

<script>
$(function() {
  CustomCheckboxICheck.init();
  CustomCheckboxSwitchery.init();
  CustomColorpickerMinicolors.init();

  $('.custom-select-select2').select2();
  $('.date-picker-input').datepicker();
  $('.date-range-picker-input').daterangepicker();
  $('.slider-input').slider();
  $('.knob').knob();
  $('.tagsinput').tagsinput({
    tagClass: 'label label-primary'
  });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
  <div class="col-lg-6">
    <div class="panel panel-success separated">
      <div class="panel-heading">
        <i class="fa fa-fw fa-check-square-o"></i>
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
    <div class="panel panel-info separated">
      <div class="panel-heading">
        <i class="fa fa-fw fa-sliders"></i>
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
    <div class="panel panel-warning separated">
      <div class="panel-heading">
      <i class="fa fa-fw fa-toggle-on"></i>
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
    <div class="panel panel-danger separated">
      <div class="panel-heading">
      <i class="fa fa-fw fa-dashboard"></i>
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
    <div class="panel panel-yellow separated">
      <div class="panel-heading">
        <i class="fa fa-fw fa-clock-o"></i>
        Date Pickers with <strong>Bootstrap Date Pickers</strong> Plugins
      </div>
      <div class="panel-body">
        <form class="form-horizontal" role="form">
          <div class="form-group">
            <label class="col-sm-4 control-label">Date Picker</label>
            <div class="col-sm-8">
              <input class="form-control date-picker-input" type="text" value="10/11/2014">
            </div>
          </div>

          <div class="form-group">
            <label class="col-sm-4 control-label">Date Range Picker</label>
            <div class="col-sm-8">
              <input class="form-control date-range-picker-input" type="text" value="10/14/2014 - 01/25/2015">
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <div class="panel panel-violet separated">
      <div class="panel-heading">
        <i class="fa fa-fw fa-toggle-down"></i>
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
              <select multiple class="custom-select-select2" style="width: 100%" value="CA,NV,OR">
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
    <div class="panel panel-brown separated">
      <div class="panel-heading">
        <i class="fa fa-fw fa-tag"></i>
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
    <div class="panel panel-navy separated">
      <div class="panel-heading">
      <i class="fa fa-fw fa-eyedropper"></i>
        Color Pickers with <strong>jQuery MiniColors</strong> Plugin
      </div>
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
              <input type="text" id="default-value" class="form-control colorpicker" data-default-value="#9b59b6">
              <span class="help-block">
                This field has a default value assigned to it, so it will never be empty.
              </span>
            </div>
            <div class="form-group">
              <label for="letter-case">Letter Case</label>
              <br>
              <input type="text" id="letter-case" class="form-control colorpicker" data-letter-case="uppercase" value="#be643c">
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
    <div class="panel panel-primary separated">
      <div class="panel-heading">
      <i class="fa fa-fw fa-upload"></i>
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
    <div class="panel panel-success separated">
      <div class="panel-heading">
      <i class="fa fa-fw fa-cloud-upload"></i>
        Multiple Files Upload with <strong>Dropzone</strong> Plugin
      </div>
      <div class="panel-body">
        <form action="#" class="dropzone" id="my-dropzone" enctype="multipart/form-data"></form>
      </div>
    </div>
  </div>
</div>
{% endblock %}