{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-validation' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/bootstrapvalidator/dist/css/bootstrapValidator.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/bootstrapvalidator/dist/js/bootstrapValidator.js"></script>
{# <script src="bower_components/parsleyjs/dist/parsley.min.js"></script> #}

<script>
$(function() {
    $('form').submit(function(e) {
        e.preventDefault();
    });

    $('form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        // feedbackIcons: {
        //     valid: 'glyphicon glyphicon-ok',
        //     invalid: 'glyphicon glyphicon-remove',
        //     validating: 'glyphicon glyphicon-refresh'
        // },
        // fields: {
        //     username: {
        //         message: 'The username is not valid',
        //         validators: {
        //             notEmpty: {
        //                 message: 'The username is required and cannot be empty'
        //             },
        //             stringLength: {
        //                 min: 6,
        //                 max: 30,
        //                 message: 'The username must be more than 6 and less than 30 characters long'
        //             },
        //             regexp: {
        //                 regexp: /^[a-zA-Z0-9]+$/,
        //                 message: 'The username can only consist of alphabetical and number'
        //             },
        //             different: {
        //                 field: 'password',
        //                 message: 'The username and password cannot be the same as each other'
        //             }
        //         }
        //     },
        //     email: {
        //         validators: {
        //             notEmpty: {
        //                 message: 'The email address is required and cannot be empty'
        //             },
        //             emailAddress: {
        //                 message: 'The email address is not a valid'
        //             }
        //         }
        //     },
        //     password: {
        //         validators: {
        //             notEmpty: {
        //                 message: 'The password is required and cannot be empty'
        //             },
        //             different: {
        //                 field: 'username',
        //                 message: 'The password cannot be the same as username'
        //             },
        //             stringLength: {
        //                 min: 8,
        //                 message: 'The password must have at least 8 characters'
        //             }
        //         }
        //     },
        //     birthday: {
        //         validators: {
        //             notEmpty: {
        //                 message: 'The date of birth is required'
        //             },
        //             date: {
        //                 format: 'YYYY/MM/DD',
        //                 message: 'The date of birth is not valid'
        //             }
        //         }
        //     },
        //     gender: {
        //         validators: {
        //             notEmpty: {
        //                 message: 'The gender is required'
        //             }
        //         }
        //     }
        // }
    });

    // $('#accountForm').bootstrapValidator({
    //     // Only disabled elements are excluded
    //     // The invisible elements belonging to inactive tabs must be validated
    //     excluded: [':disabled'],
    //     feedbackIcons: {
    //         valid: 'glyphicon glyphicon-ok',
    //         invalid: 'glyphicon glyphicon-remove',
    //         validating: 'glyphicon glyphicon-refresh'
    //     },
    //     submitHandler: function (validator, form, submitButton) {
    //         // Do nothing
    //     },
    //     fields: {
    //         fullName: {
    //             validators: {
    //                 notEmpty: {
    //                     message: 'The full name is required'
    //                 }
    //             }
    //         },
    //         company: {
    //             validators: {
    //                 notEmpty: {
    //                     message: 'The company name is required'
    //                 }
    //             }
    //         },
    //         address: {
    //             validators: {
    //                 notEmpty: {
    //                     message: 'The address is required'
    //                 }
    //             }
    //         },
    //         city: {
    //             validators: {
    //                 notEmpty: {
    //                     message: 'The city is required'
    //                 }
    //             }
    //         }
    //     }
    // });

    // $('#html5Form').bootstrapValidator();

    // $('.parsley-form').parsley();
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Basic Form
            </div>
            <div class="panel-body">
                <form id="registrationForm1" method="post" class="form-horizontal bootstrap-validator-form"
                      data-bv-message="This value is not valid"
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Username</label>
                        <div class="col-lg-8">
                            <input type="text" class="form-control" name="username"
                                   data-bv-message="The username is not valid"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The username is required and cannot be empty"
                                   data-bv-regexp="true"
                                   data-bv-regexp-regexp="[a-zA-Z0-9_\.]+"
                                   data-bv-regexp-message="The username can only consist of alphabetical, number, dot and underscore"
                                   data-bv-stringlength="true"
                                   data-bv-stringlength-min="6"
                                   data-bv-stringlength-max="30"
                                   data-bv-stringlength-message="The username must be more than 6 and less than 30 characters long"
                                   data-bv-different="true"
                                   data-bv-different-field="password"
                                   data-bv-different-message="The username and password cannot be the same as each other" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Email address</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="email" type="email"
                                   data-bv-emailaddress="true"
                                   data-bv-emailaddress-message="The input is not a valid email address" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Password</label>
                        <div class="col-lg-8">
                            <input type="password" class="form-control" name="password"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The password is required and cannot be empty"
                                   data-bv-identical="true"
                                   data-bv-identical-field="confirmPassword"
                                   data-bv-identical-message="The password and its confirm are not the same"
                                   data-bv-different="true"
                                   data-bv-different-field="username"
                                   data-bv-different-message="The password cannot be the same as username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Retype password</label>
                        <div class="col-lg-8">
                            <input type="password" class="form-control" name="confirmPassword"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The confirm password is required and cannot be empty"
                                   data-bv-identical="true"
                                   data-bv-identical-field="password"
                                   data-bv-identical-message="The password and its confirm are not the same"
                                   data-bv-different="true"
                                   data-bv-different-field="username"
                                   data-bv-different-message="The password cannot be the same as username" />
                        </div>
                    </div>

                    <hr class="wide">

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Full name</label>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="firstName" placeholder="First name"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The first name is required and cannot be empty" />
                        </div>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="lastName" placeholder="Last name"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The last name is required and cannot be empty" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-4 control-label">Gender</label>
                        <div class="col-lg-4">
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
                        <label class="col-lg-4 control-label">Date of birth</label>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="birthday"
                                placeholder="YYYY/MM/DD" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-offset-4 col-lg-8">
                            <input class="btn btn-palegreen" type="submit" value="Validate" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Tabbed Form
            </div>
            <div class="panel-body">
                <div class="tabs-container bordered">
                    <ul class="nav nav-tabs tabs-flat">
                        <li class="active"><a href="#info-tab" data-toggle="tab">Information</a></li>
                        <li class=""><a href="#address-tab" data-toggle="tab">Address</a></li>
                    </ul>

                    <form method="post" class="form-horizontal bv-form " novalidate="novalidate">
                        <div class="tab-content tabs-flat">
                            <div class="tab-pane active" id="info-tab">
                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Username</label>
                                    <div class="col-lg-8">
                                        <input type="text" class="form-control" name="username"
                                               data-bv-message="The username is not valid"
                                               data-bv-notempty="true"
                                               data-bv-notempty-message="The username is required and cannot be empty"
                                               data-bv-regexp="true"
                                               data-bv-regexp-regexp="[a-zA-Z0-9_\.]+"
                                               data-bv-regexp-message="The username can only consist of alphabetical, number, dot and underscore"
                                               data-bv-stringlength="true"
                                               data-bv-stringlength-min="6"
                                               data-bv-stringlength-max="30"
                                               data-bv-stringlength-message="The username must be more than 6 and less than 30 characters long"
                                               data-bv-different="true"
                                               data-bv-different-field="password"
                                               data-bv-different-message="The username and password cannot be the same as each other" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Email address</label>
                                    <div class="col-lg-8">
                                        <input class="form-control" name="email" type="email"
                                               data-bv-emailaddress="true"
                                               data-bv-emailaddress-message="The input is not a valid email address" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Password</label>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" name="password"
                                               data-bv-notempty="true"
                                               data-bv-notempty-message="The password is required and cannot be empty"
                                               data-bv-identical="true"
                                               data-bv-identical-field="confirmPassword"
                                               data-bv-identical-message="The password and its confirm are not the same"
                                               data-bv-different="true"
                                               data-bv-different-field="username"
                                               data-bv-different-message="The password cannot be the same as username" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Retype password</label>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" name="confirmPassword"
                                               data-bv-notempty="true"
                                               data-bv-notempty-message="The confirm password is required and cannot be empty"
                                               data-bv-identical="true"
                                               data-bv-identical-field="password"
                                               data-bv-identical-message="The password and its confirm are not the same"
                                               data-bv-different="true"
                                               data-bv-different-field="username"
                                               data-bv-different-message="The password cannot be the same as username" />
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="address-tab">
                                <div class="form-group">
                        <label class="col-lg-4 control-label">Full name</label>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="firstName" placeholder="First name"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The first name is required and cannot be empty" />
                        </div>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="lastName" placeholder="Last name"
                                   data-bv-notempty="true"
                                   data-bv-notempty-message="The last name is required and cannot be empty" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-4 control-label">Gender</label>
                        <div class="col-lg-4">
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
                        <label class="col-lg-4 control-label">Date of birth</label>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="birthday"
                                placeholder="YYYY/MM/DD" />
                        </div>
                    </div>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-4">
                                <button type="submit" class="btn btn-blue">Validate</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Form
            </div>
            <div class="panel-body">
                <form class="form-horizontal group-border-dashed" action="#">
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Required</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Type something" data-bv-message="The username is not valid" data-bv-notempty="true" data-bv-notempty-message="The username is required and cannot be empty" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Min Length</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Min 6 chars." />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Max Length</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Max 6 chars." />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Range Length</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Text between 5 - 10 chars length" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Min Value</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Min value is 6" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Max Value</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Max value is 6" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Range Value</label>
                    <div class="col-sm-6">
                      <input class="form-control" required type="text range" min="6" max="100" placeholder="Number between 6 - 100" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Regular Exp</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Hex. Color" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Equal To</label>
                    <div class="col-sm-3">
                      <input type="password" id="pass2" class="form-control" required placeholder="Password" />
                    </div>
                    <div class="col-sm-3">
                      <input type="password" class="form-control" required placeholder="Re-Type Password" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Min check</label>
                    <div class="col-sm-6">
                      <div class="radio">
                        <label for="ck1"> <input id="ck1" name="ck1" type="checkbox" data-parsley-multiple="groups"  value="bar"> Option 1</label>
                      </div>
                      <div class="radio">
                        <label for="ck2"> <input id="ck2" name="ck2" type="checkbox" value="bar2"> Option 2</label>
                      </div>
                      <div class="radio">
                        <label for="ck3"> <input id="ck3" name="ck3" type="checkbox" value="bar3" required > Option 3</label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Max check</label>
                    <div class="col-sm-6">
                      <div class="radio">
                        <label> <input type="checkbox" value="bar" name="e1"> Option 1</label>
                      </div>
                      <div class="radio">
                        <label> <input type="checkbox" value="bar" name="e2"> Option 2</label>
                      </div>
                      <div class="radio">
                        <label> <input type="checkbox" value="bar" name="e3"> Option 3</label>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">E-Mail</label>
                    <div class="col-sm-6">
                      <input type="email" class="form-control" required placeholder="Enter a valid e-mail" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">URL</label>
                    <div class="col-sm-6">
                      <input type="url" class="form-control" required placeholder="URL" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Digits</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Enter only digits" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Number</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Enter only numbers" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Alphanumeric</label>
                    <div class="col-sm-6">
                      <input type="text" class="form-control" required placeholder="Enter alphanumeric value" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Textarea</label>
                    <div class="col-sm-6">
                      <textarea required class="form-control"></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-primary">Submit</button>
                      <button class="btn btn-default">Cancel</button>
                    </div>
                  </div>
                </form>
            </div>
        </div>
    </div>
</div>
{% endblock %}