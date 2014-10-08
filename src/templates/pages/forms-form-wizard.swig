{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-wizard' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/fuelux/dist/css/fuelux.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/fuelux/js/wizard.js"></script>

<script>
$(function() {
    $('.wizard').wizard();

    // $('.wizard-next').click(function(e){
    //     console.log('click')

    //     var id = $(this).data('wizard');
    //     console.log('id', id)
    //     $(id).wizard('next');

    //     // e.preventDefault();
    // });

    // $('.wizard-previous').click(function(e){


    //     var id = $(this).data('wizard');
    //     $(id).wizard('previous');

    //     // e.preventDefault();
    // });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row fuelux">
    <div class="col-md-12">
      <form class="form-horizontal" action="#" novalidate>
        <div class="wizard" data-initialize="wizard" id="wizard-1">
            <ul class="steps">
                <li data-step="1" class="active"><span class="badge">1</span>Step 1<span class="chevron"></span></li>
                <li data-step="2"><span class="badge">2</span>Step 2<span class="chevron"></span></li>
                <li data-step="3"><span class="badge">3</span>Step 3<span class="chevron"></span></li>
            </ul>
            <div class="actions">
                <button class="btn btn-default btn-prev"><span class="glyphicon glyphicon-arrow-left"></span>Prev</button>
                <button class="btn btn-default btn-next" data-last="Complete">Next<span class="glyphicon glyphicon-arrow-right"></span></button>
            </div>
            <div class="step-content">
                <div class="step-pane active sample-pane" data-step="1">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Username</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email address</label>
                        <div class="col-lg-5">
                            <input class="form-control" name="email" type="email" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Password</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Retype password</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="confirmPassword" />
                        </div>
                    </div>
              </div>
              <div class="step-pane sample-pane" data-step="2">
                <div class="form-group">
                        <label class="col-lg-3 control-label">Full name</label>
                        <div class="col-lg-3">
                            <input type="text" class="form-control" name="firstName" placeholder="First name" />
                        </div>
                        <div class="col-lg-3">
                            <input type="text" class="form-control" name="lastName" placeholder="Last name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Gender</label>
                        <div class="col-lg-6">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="gender" value="male" /> Male
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="gender" value="female" /> Female
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="gender" value="other" /> Other
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Date of birth</label>
                        <div class="col-lg-6">
                            <input type="text" class="form-control" name="birthday"
                                placeholder="YYYY/MM/DD" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-4 col-lg-8">
                            <input class="btn btn-palegreen" type="submit" value="Validate" />
                        </div>
                    </div>
              </div>
              <div class="step-pane sample-pane" data-step="3">
                <div class="form-group">
                    <label class="col-sm-3 control-label">Color</label>
                    <div class="col-sm-4">
                      <input type="color" name="html5ColorInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-4">
                      <input type="email" name="html5EmailInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Number</label>
                    <div class="col-sm-4">
                      <input type="number" name="html5NumberInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Range</label>
                    <div class="col-sm-4">
                      <input type="range" name="html5RangeInput" min="0" max="100" step="1" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">URL</label>
                    <div class="col-sm-4">
                      <input type="url" name="html5UrlInput" class="form-control" required />
                    </div>
                  </div>
              </div>
            </div>
          </div>
        </form>
    </div>
</div>
{% endblock %}