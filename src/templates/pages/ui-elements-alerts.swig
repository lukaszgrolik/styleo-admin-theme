{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'ui-elements-alerts' %}

{% block content2 %}
<div class="row">
    <div class="col-lg-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Alert Sizes
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary alert-xs">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>Extra Small</strong> Alert
                </div>
                <div class="alert alert-primary alert-sm">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>Small</strong> Alert
                </div>
                <div class="alert alert-primary">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>Default</strong> Alert
                </div>
                <div class="alert alert-primary alert-lg">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>Large</strong> Alert
                </div>
                <div class="alert alert-primary alert-xl">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>Extra Large</strong> Alert
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>


    <!-- /.col-lg-4 -->
    <div class="col-lg-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Alert Types
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>Default</strong> Alert
                </div>
                <div class="alert alert-primary bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>Bordered</strong> Alert
                </div>
                <div class="alert alert-primary sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>Sharp</strong> Alert
                </div>
                <div class="alert alert-primary bordered sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>Bordered Sharp</strong> Alert
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Alerts Colors
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="alert alert-primary">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-comments"></i> <strong>Primary</strong> Alert
                        </div>
                        <div class="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-check"></i> <strong>Success</strong> Alert
                        </div>
                        <div class="alert alert-info">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-info-circle"></i> <strong>Info</strong> Alert
                        </div>
                        <div class="alert alert-warning">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-warning"></i> <strong>Warning</strong> Alert
                        </div>
                        <div class="alert alert-danger">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-times"></i> <strong>Danger</strong> Alert
                        </div>

                    </div>
                    <div class="col-lg-6">
                        <div class="alert alert-yellow">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-star"></i> <strong>Yellow</strong> Alert
                        </div>
                        <div class="alert alert-violet">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-child"></i> <strong>Violet</strong> Alert
                        </div>
                        <div class="alert alert-brown">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-support"></i> <strong>Brown</strong> Alert
                        </div>
                        <div class="alert alert-navy">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-shopping-cart"></i> <strong>Navy</strong> Alert
                        </div>
                    </div>
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Alerts
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="alert alert-primary alert-xl bordered sharp">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="alert alert-success alert-sm">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="alert alert-info sharp">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="alert alert-warning alert-lg">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="alert alert-danger alert-xs sharp">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="alert alert-yellow bordered">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-star"></i> <strong>Lorem ipsum!</strong> Lorem ipsum dolor sit amet.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="alert alert-violet">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-child"></i> <strong>Lorem ipsum!</strong> Lorem ipsum dolor sit amet.
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="alert alert-brown bordered sharp alert-sm">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-support"></i> <strong>Lorem ipsum!</strong> Lorem ipsum dolor sit amet.
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="alert alert-navy alert-lg">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <i class="fa fa-fw fa-shopping-cart"></i> <strong>Lorem ipsum!</strong> Lorem ipsum dolor sit amet.
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
                <div class="alert alert-yellow">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
                <div class="alert alert-violet">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
                <div class="alert alert-brown">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
                <div class="alert alert-navy">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Sharp Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Bordered Sharp Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
            <div class="alert alert-primary sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Small Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary alert-sm">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success alert-sm">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info alert-sm">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning alert-sm">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger alert-sm">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Small Sharp Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary alert-sm sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success alert-sm sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info alert-sm sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning alert-sm sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger alert-sm sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Small Bordered Sharp Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
            <div class="alert alert-primary alert-sm sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success alert-sm sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info alert-sm sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning alert-sm sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger alert-sm sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Extra Small Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary alert-xs">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success alert-xs">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info alert-xs">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning alert-xs">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger alert-xs">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Extra Small Sharp Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
            <div class="alert alert-primary alert-xs sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success alert-xs sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info alert-xs sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning alert-xs sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger alert-xs sharp">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-4 -->
    <div class="col-lg-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                Extra Small Bordered Sharp Alerts
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="alert alert-primary alert-xs sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-comments"></i> <strong>HELLO!</strong> What do you think about our new admin panel?
                </div>
                <div class="alert alert-success alert-xs sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-check"></i> <strong>SUCCESS!</strong> The page has been loaded.
                </div>
                <div class="alert alert-info alert-xs sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-info-circle"></i> <strong>INFO!</strong> You have 3 unread messages.
                </div>
                <div class="alert alert-warning alert-xs sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-warning"></i> <strong>WARNING!</strong> Your monthly traffic is reaching limit.
                </div>
                <div class="alert alert-danger alert-xs sharp bordered">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <i class="fa fa-fw fa-times"></i> <strong>DANGER!</strong> Update has failed.
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->
</div>
<!-- /.row -->
{% endblock %}