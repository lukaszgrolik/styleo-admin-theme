{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-validation' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/bootstrapvalidator/dist/css/bootstrapValidator.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/bootstrapvalidator/dist/js/bootstrapValidator.js"></script>

<script>
$(function() {
    $('form').bootstrapValidator({
        // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                message: 'The username is not valid',
                validators: {
                    notEmpty: {
                        message: 'The username is required and cannot be empty'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9]+$/,
                        message: 'The username can only consist of alphabetical and number'
                    },
                    different: {
                        field: 'password',
                        message: 'The username and password cannot be the same as each other'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required and cannot be empty'
                    },
                    emailAddress: {
                        message: 'The email address is not a valid'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required and cannot be empty'
                    },
                    different: {
                        field: 'username',
                        message: 'The password cannot be the same as username'
                    },
                    stringLength: {
                        min: 8,
                        message: 'The password must have at least 8 characters'
                    }
                }
            },
            birthday: {
                validators: {
                    notEmpty: {
                        message: 'The date of birth is required'
                    },
                    date: {
                        format: 'YYYY/MM/DD',
                        message: 'The date of birth is not valid'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
                    }
                }
            }
        }
    });
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
                <form id="registrationForm1" method="post" class="form-horizontal"
                      data-bv-message="This value is not valid"
                      data-bv-feedbackicons-valid="glyphicon glyphicon-ok"
                      data-bv-feedbackicons-invalid="glyphicon glyphicon-remove"
                      data-bv-feedbackicons-validating="glyphicon glyphicon-refresh">
                    <div class="form-title">
                        Basic Validator With HTML Attributes
                    </div>
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
                Field Types
            </div>
            <div class="panel-body">
                <div class="page-header">
                    <h2>Sign up</h2>
                </div>

                <!-- Change the "action" attribute to your back-end URL -->
                <form id="registrationForm2" method="post" class="form-horizontal" action="...">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Username</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email address</label>
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="email" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Password</label>
                        <div class="col-lg-5">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Gender</label>
                        <div class="col-lg-5">
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
                        <div class="col-lg-5">
                            <input type="text" class="form-control" name="birthday"
                                placeholder="YYYY/MM/DD" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-9 col-lg-offset-3">
                            <!-- Do NOT use name="submit" or id="submit" for the Submit button -->
                            <button type="submit" class="btn btn-default">Sign up</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
{% endblock %}