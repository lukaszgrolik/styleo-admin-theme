{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'forms-form-validation' %}

{% block headEnd %}
<link rel="stylesheet" href="bower_components/bootstrapvalidator/dist/css/bootstrapValidator.css">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/bootstrapvalidator/dist/js/bootstrapValidator.js"></script>

<script>
$(function() {
    $('form').submit(function(e) {
        e.preventDefault();
    });

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
                    identical: {
                        field: 'confirmPassword',
                        message: 'The password and its confirm are not the same'
                    },
                    stringLength: {
                        min: 8,
                        message: 'The password must have at least 8 characters'
                    }
                }
            },
            confirmPassword: {
                validators: {
                    notEmpty: {
                        message: 'The confirm password is required and cannot be empty'
                    },
                    identical: {
                        field: 'password',
                        message: 'The password and its confirm are not the same'
                    }
                }
            },
            firstName: {
                validators: {
                    notEmpty: {
                        message: 'The first name is required and cannot be empty'
                    },
                }
            },
            lastName: {
                validators: {
                    notEmpty: {
                        message: 'The last name is required and cannot be empty'
                    },
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
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
            // html5Required: {
            //     validators: {
            //         notEmpty: {
            //             message: 'Required'
            //         }
            //     }
            // },
            // html5MinLength: {
            //     validators: {
            //         stringLength: {
            //             min: 3,
            //             message: 'Min length: 3'
            //         }
            //     }
            // },
            // html5MaxLength: {
            //     validators: {
            //         stringLength: {
            //             max: 5,
            //             message: 'Max length: 5'
            //         }
            //     }
            // },
            // html5RangeLength: {
            //     validators: {
            //         stringLength: {
            //             min: 3,
            //             max: 5,
            //             message: 'Text between 3 and 5 chars'
            //         }
            //     }
            // },
            // html5MinValue: {
            //     validators: {
            //         greaterThan: {
            //             value: 3,
            //             message: 'Min value: 3'
            //         }
            //     }
            // },
            // html5MaxValue: {
            //     validators: {
            //         lessThan: {
            //             value: 5,
            //             message: 'Max value: 5'
            //         }
            //     }
            // },
            // html5RangeValue: {
            //     validators: {
            //         between: {
            //             min: 3,
            //             max: 5,
            //             message: 'Number between 3 and 5'
            //         }
            //     }
            // },
            // html5RegExp: {
            //     validators: {
            //         regexp: {
            //             regexp: '^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$',
            //             message: 'Hex Color'
            //         }
            //     }
            // },
            // html5EqualsTo1: {
            //     validators: {
            //         identical: {
            //             field: 'html5EqualsTo2',
            //             message: 'Must be the same as next field'
            //         }
            //     }
            // },
            // html5EqualsTo2: {
            //     validators: {
            //         identical: {
            //             field: 'html5EqualsTo1',
            //             message: 'Must be the same as previous field'
            //         }
            //     }
            // },
            // html5ColorInput: {
            //     validators: {

            //     }
            // }
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
                Basic Form Validation
            </div>
            <div class="panel-body">
                <form id="registrationForm1" method="post" class="form-horizontal bootstrap-validator-form">

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Username</label>
                        <div class="col-lg-8">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Email address</label>
                        <div class="col-lg-8">
                            <input class="form-control" name="email" type="email" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Password</label>
                        <div class="col-lg-8">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Retype password</label>
                        <div class="col-lg-8">
                            <input type="password" class="form-control" name="confirmPassword" />
                        </div>
                    </div>

                    <hr class="wide">

                    <div class="form-group">
                        <label class="col-lg-4 control-label">Full name</label>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="firstName" placeholder="First name" />
                        </div>
                        <div class="col-lg-4">
                            <input type="text" class="form-control" name="lastName" placeholder="Last name" />
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
                Tabbed Form Validation
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
                                        <input type="text" class="form-control" name="username" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Email address</label>
                                    <div class="col-lg-8">
                                        <input class="form-control" name="email" type="email" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Password</label>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" name="password" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Retype password</label>
                                    <div class="col-lg-8">
                                        <input type="password" class="form-control" name="confirmPassword" />
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="address-tab">
                                <div class="form-group">
                                    <label class="col-lg-4 control-label">Full name</label>
                                    <div class="col-lg-4">
                                        <input type="text" class="form-control" name="firstName" placeholder="First name" />
                                    </div>
                                    <div class="col-lg-4">
                                        <input type="text" class="form-control" name="lastName" placeholder="Last name" />
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

                        <br>

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
            <i class="fa fa-fw fa-html5"></i>
                HTML5 Inputs Validation
            </div>
            <div class="panel-body">
                <form class="form-horizontal group-border-dashed" action="#">
{#                   <div class="form-group">
                    <label class="col-sm-3 control-label">Required</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5Required" class="form-control" required placeholder="Type something"  />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Min Length</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5MinLength" class="form-control" required placeholder="Minimum 3 chars" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Max Length</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5MaxLength" class="form-control" required placeholder="Maximum 5 chars" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Range Length</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5RangeLength" class="form-control" required placeholder="Text between 3 and 5 chars" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Min Value</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5MinValue" class="form-control" required placeholder="Minimum value: 3" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Max Value</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5MaxValue" class="form-control" required placeholder="Maximum value: 5" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Range Value</label>
                    <div class="col-sm-6">
                      <input name="html5RangeValue" class="form-control" required type="text range" placeholder="Number between 3 and 5" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Regular Expression</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5RegExp" class="form-control" required placeholder="Hex Color" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Equals To</label>
                    <div class="col-sm-3">
                      <input type="password" name="html5EqualsTo1" id="pass2" class="form-control" required placeholder="Password" />
                    </div>
                    <div class="col-sm-3">
                      <input type="password" name="html5EqualsTo2" class="form-control" required placeholder="Re-Type Password" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Min check</label>
                    <div class="col-sm-6">
                      <div class="radio">
                        <label for="ck1"> <input id="ck1" name="ck1" type="checkbox" value="bar"> Option 1</label>
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
                    <label class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-6">
                      <input type="email" name="html5Email" class="form-control" required placeholder="Enter a valid email" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">URL</label>
                    <div class="col-sm-6">
                      <input type="url" name="html5Url" class="form-control" required placeholder="URL" />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Digits</label>
                    <div class="col-sm-6">
                      <input type="text" name="html5Digits" class="form-control" required placeholder="Enter only digits" />
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
                  </div> #}




                  <div class="form-group">
                    <label class="col-sm-3 control-label">Color</label>
                    <div class="col-sm-6">
                      <input type="color" name="html5ColorInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Email</label>
                    <div class="col-sm-6">
                      <input type="email" name="html5EmailInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Number</label>
                    <div class="col-sm-6">
                      <input type="number" name="html5NumberInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">Range</label>
                    <div class="col-sm-6">
                      <input type="range" name="html5RangeInput" min="0" max="100" step="1" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label">URL</label>
                    <div class="col-sm-6">
                      <input type="url" name="html5UrlInput" class="form-control" required />
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-6">
                      <button type="submit" class="btn btn-primary">Validate</button>
                    </div>
                  </div>
                </form>
            </div>
        </div>
    </div>
</div>
{% endblock %}