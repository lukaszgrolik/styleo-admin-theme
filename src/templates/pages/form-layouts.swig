{% extends '../layouts/layout-1.swig' %}

{% block title %}Form Layouts{% endblock %}

{% block breadcrumbs %}
<li><a href="#">Forms</a></li>
<li><a href="#">Form Layouts</a></li>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Panel
            </div>
            <div class="panel-body">
            	<form role="form">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input class="form-control" id="exampleInputEmail1" placeholder="Enter email" type="email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input class="form-control" id="exampleInputPassword1" placeholder="Password" type="password">
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">
                                <span class="text">Remember me next time.</span>
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-blue">Submit</button>
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
            	<form class="form-horizontal" role="form">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label no-padding-right">Email</label>
                        <div class="col-sm-10">
                            <input class="form-control" id="inputEmail3" placeholder="Email" type="email">
                            <p class="help-block">Example block-level help text here.</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Password</label>
                        <div class="col-sm-10">
                            <input class="form-control" id="inputPassword3" placeholder="Password" type="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    <span class="text">Remember me next time.</span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Sign in</button>
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
                Default Panel
            </div>
            <div class="panel-body">
				<form class="form-inline" role="form">
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputEmail2">Email address</label>
                        <input class="form-control" id="exampleInputEmail2" placeholder="Enter email" type="email">
                    </div>
                    <div class="form-group">
                        <label class="sr-only" for="exampleInputPassword2">Password</label>
                        <input class="form-control" id="exampleInputPassword2" placeholder="Password" type="password">
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">
                            <span class="text">Remember me</span>
                        </label>
                    </div>
                    <button type="submit" class="btn btn-default">Sign in</button>
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
				<form class="form-horizontal form-bordered" role="form">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label no-padding-right">Email</label>
                        <div class="col-sm-10">
                            <input class="form-control" id="inputEmail3" placeholder="Email" type="email">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label no-padding-right">Password</label>
                        <div class="col-sm-10">
                            <input class="form-control" id="inputPassword3" placeholder="Password" type="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-palegreen">Sign in</button>
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
				<form class="form-horizontal" role="form">
                    <div class="row">
                        <div class="col-md-6">
                            <input name="to" placeholder="To" class="form-control" type="email">
                            <div class="horizontal-space"></div>
                        </div>
                        <div class="col-md-6">
                            <input name="subject" placeholder="Subject" class="form-control" type="text">
                            <div class="horizontal-space"></div>
                        </div>
                    </div>
                    <textarea class="form-control" rows="3" placeholder="Content"></textarea>
                    <div class="horizontal-space"></div>
                    <div>
                        <button type="submit" class="btn btn-default">Send</button>
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
				<form role="form">
                    <div class="form-title">
                        User Information
                    </div>
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
                    <div class="form-group">
                        <span class="input-icon icon-right">
                            <input class="form-control" id="confirmPasswordInput" placeholder="Confirm Password" type="text">
                            <i class="fa fa-lock circular"></i>
                        </span>
                    </div>
                    <div class="form-title">
                        Personal Information
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
                                    <input class="form-control" placeholder="Family" type="text">
                                    <i class="fa fa-user"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <span class="input-icon icon-right">
                                    <input class="form-control" placeholder="Phone" type="text">
                                    <i class="glyphicon glyphicon-earphone"></i>
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
                    <hr class="wide">
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
                                    <input class="form-control" placeholder="Birth Place" type="text">
                                    <i class="fa fa-globe"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input class="colored-blue" type="checkbox">
                                <span class="text">Auto Sign In After Registration</span>
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-blue">Register</button>
                </form>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <form role="form">
                    <div class="form-title">
                        Contact Us
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="exampleInputEmail2">Email address</label>
                                <span class="input-icon icon-right">
                                    <input class="form-control" id="exampleInputEmail2" placeholder="Enter Email" type="text">
                                    <i class="fa fa-envelope blue"></i>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="exampleInputName2">Name</label>
                                <span class="input-icon icon-right">
                                    <input class="form-control" id="exampleInputName2" placeholder="Name" type="text">
                                    <i class="glyphicon glyphicon-user palegreen"></i>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="exampleInputEmail2">Message</label>
                                <span class="input-icon icon-right">
                                    <textarea class="form-control" rows="10"></textarea>
                                    <i class="glyphicon glyphicon-briefcase darkorange"></i>
                                </span>
                                <p class="help-block">Your message will be in this text area.</p>
                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="checkbox">
                            <label>
                                <input class="colored-danger" type="checkbox">
                                <span class="text">Notify me through E-mail</span>
                            </label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-danger">Submit</button>
                </form>
            </div>
            <div class="panel-body">

            </div>
        </div>
    </div>
</div>
{% endblock %}