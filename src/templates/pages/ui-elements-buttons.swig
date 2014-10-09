{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'ui-elements-buttons' %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Button Shapes</div>
            <div class="panel-body text-center">
                <button type="button" class="btn btn-primary">DEFAULT</button>
                <button type="button" class="btn btn-primary sharp">SHARP</button>
                <button type="button" class="btn btn-primary round">ROUND</button>
                <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-check"></i></button>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Button Types</div>
            <div class="panel-body text-center">
                <button type="button" class="btn btn-primary">DEFAULT</button>
                <button type="button" class="btn btn-primary btn-outline">OUTLINE</button>
                <button type="button" class="btn btn-primary raised">RAISED</button>
                <button type="button" class="btn btn-primary gradient">GRADIENT</button>
                <button type="button" class="btn btn-primary raised gradient">RAISED GRADIENT</button>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Button Sizes</div>
            <div class="panel-body text-center">
                <button type="button" class="btn btn-primary btn-xs">EXTRA SMALL</button>
                <button type="button" class="btn btn-primary btn-sm">SMALL</button>
                <button type="button" class="btn btn-primary">DEFAULT</button>
                <button type="button" class="btn btn-primary btn-lg">LARGE</button>
                <button type="button" class="btn btn-primary btn-xl">EXTRA LARGE</button>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Button Colors</div>
            <div class="panel-body text-center">
                <div>
                    <button type="button" class="btn btn-default">DEFAULT</button>
                    <button type="button" class="btn btn-primary">PRIMARY</button>
                    <button type="button" class="btn btn-success">SUCCESS</button>
                    <button type="button" class="btn btn-info">INFO</button>
                    <button type="button" class="btn btn-warning">WARNING</button>
                    <button type="button" class="btn btn-danger">DANGER</button>
                </div>

                <hr class="wide">

                <div>
                    <button type="button" class="btn btn-yellow">YELLOW</button>
                    <button type="button" class="btn btn-violet">VIOLET</button>
                    <button type="button" class="btn btn-brown">BROWN</button>
                    <button type="button" class="btn btn-navy">NAVY</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Normal Buttons</div>
            <div class="panel-body text-center">
                <p>
                    <button type="button" class="btn btn-default">DEFAULT</button>
                    <button type="button" class="btn btn-primary">PRIMARY</button>
                    <button type="button" class="btn btn-success">SUCCESS</button>
                    <button type="button" class="btn btn-info">INFO</button>
                    <button type="button" class="btn btn-warning">WARNING</button>
                    <button type="button" class="btn btn-danger">DANGER</button>
                    <button type="button" class="btn btn-yellow">YELLOW</button>
                    <button type="button" class="btn btn-violet">VIOLET</button>
                    <button type="button" class="btn btn-brown">BROWN</button>
                    <button type="button" class="btn btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp">INFO</button>
                    <button type="button" class="btn btn-warning sharp">WARNING</button>
                    <button type="button" class="btn btn-danger sharp">DANGER</button>
                    <button type="button" class="btn btn-yellow sharp">YELLOW</button>
                    <button type="button" class="btn btn-violet sharp">VIOLET</button>
                    <button type="button" class="btn btn-brown sharp">BROWN</button>
                    <button type="button" class="btn btn-navy sharp">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round">DEFAULT</button>
                    <button type="button" class="btn btn-primary round">PRIMARY</button>
                    <button type="button" class="btn btn-success round">SUCCESS</button>
                    <button type="button" class="btn btn-info round">INFO</button>
                    <button type="button" class="btn btn-warning round">WARNING</button>
                    <button type="button" class="btn btn-danger round">DANGER</button>
                    <button type="button" class="btn btn-yellow round">YELLOW</button>
                    <button type="button" class="btn btn-violet round">VIOLET</button>
                    <button type="button" class="btn btn-brown round">BROWN</button>
                    <button type="button" class="btn btn-navy round">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default" disabled>DEFAULT</button>
                    <button type="button" class="btn btn-primary" disabled>PRIMARY</button>
                    <button type="button" class="btn btn-success" disabled>SUCCESS</button>
                    <button type="button" class="btn btn-info" disabled>INFO</button>
                    <button type="button" class="btn btn-warning" disabled>WARNING</button>
                    <button type="button" class="btn btn-danger" disabled>DANGER</button>
                    <button type="button" class="btn btn-yellow" disabled>YELLOW</button>
                    <button type="button" class="btn btn-violet" disabled>VIOLET</button>
                    <button type="button" class="btn btn-brown" disabled>BROWN</button>
                    <button type="button" class="btn btn-navy" disabled>NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn btn-yellow btn-circle"><i class="fa fa-user"></i></button>
                    <button type="button" class="btn btn-violet btn-circle"><i class="fa fa-bar-chart-o"></i></button>
                    <button type="button" class="btn btn-brown btn-circle"><i class="fa fa-cog"></i></button>
                    <button type="button" class="btn btn-navy btn-circle"><i class="fa fa-home"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Outline Buttons</div>
            <div class="panel-body text-center">
                <p>
                    <button type="button" class="btn btn-outline btn-default">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger">DANGER</button>
                    <button type="button" class="btn btn-outline btn-yellow">YELLOW</button>
                    <button type="button" class="btn btn-outline btn-violet">VIOLET</button>
                    <button type="button" class="btn btn-outline btn-brown">BROWN</button>
                    <button type="button" class="btn btn-outline btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default sharp">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary sharp">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success sharp">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info sharp">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning sharp">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger sharp">DANGER</button>
                    <button type="button" class="btn btn-outline sharp btn-yellow">YELLOW</button>
                    <button type="button" class="btn btn-outline sharp btn-violet">VIOLET</button>
                    <button type="button" class="btn btn-outline sharp btn-brown">BROWN</button>
                    <button type="button" class="btn btn-outline sharp btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default round">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary round">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success round">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info round">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning round">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger round">DANGER</button>
                    <button type="button" class="btn btn-outline round btn-yellow">YELLOW</button>
                    <button type="button" class="btn btn-outline round btn-violet">VIOLET</button>
                    <button type="button" class="btn btn-outline round btn-brown">BROWN</button>
                    <button type="button" class="btn btn-outline round btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default" disabled>DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary" disabled>PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success" disabled>SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info" disabled>INFO</button>
                    <button type="button" class="btn btn-outline btn-warning" disabled>WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger" disabled>DANGER</button>
                    <button type="button" class="btn btn-outline btn-yellow" disabled>YELLOW</button>
                    <button type="button" class="btn btn-outline btn-violet" disabled>VIOLET</button>
                    <button type="button" class="btn btn-outline btn-brown" disabled>BROWN</button>
                    <button type="button" class="btn btn-outline btn-navy" disabled>NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-outline btn-primary btn-circle"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-outline btn-success btn-circle"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-outline btn-info btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-outline btn-warning btn-circle"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-outline btn-danger btn-circle"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn btn-yellow btn-circle btn-outline"><i class="fa fa-user"></i></button>
                    <button type="button" class="btn btn-violet btn-circle btn-outline"><i class="fa fa-bar-chart-o"></i></button>
                    <button type="button" class="btn btn-brown btn-circle btn-outline"><i class="fa fa-cog"></i></button>
                    <button type="button" class="btn btn-navy btn-circle btn-outline"><i class="fa fa-home"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Raised Buttons</div>
            <div class="panel-body text-center">
                <p>
                    <button type="button" class="btn btn-default raised">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised">PRIMARY</button>
                    <button type="button" class="btn btn-success raised">SUCCESS</button>
                    <button type="button" class="btn btn-info raised">INFO</button>
                    <button type="button" class="btn btn-warning raised">WARNING</button>
                    <button type="button" class="btn btn-danger raised">DANGER</button>
                    <button type="button" class="btn raised btn-yellow">YELLOW</button>
                    <button type="button" class="btn raised btn-violet">VIOLET</button>
                    <button type="button" class="btn raised btn-brown">BROWN</button>
                    <button type="button" class="btn raised btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp raised">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp raised">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp raised">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp raised">INFO</button>
                    <button type="button" class="btn btn-warning sharp raised">WARNING</button>
                    <button type="button" class="btn btn-danger sharp raised">DANGER</button>
                    <button type="button" class="btn sharp raised btn-yellow">YELLOW</button>
                    <button type="button" class="btn sharp raised btn-violet">VIOLET</button>
                    <button type="button" class="btn sharp raised btn-brown">BROWN</button>
                    <button type="button" class="btn sharp raised btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round raised">DEFAULT</button>
                    <button type="button" class="btn btn-primary round raised">PRIMARY</button>
                    <button type="button" class="btn btn-success round raised">SUCCESS</button>
                    <button type="button" class="btn btn-info round raised">INFO</button>
                    <button type="button" class="btn btn-warning round raised">WARNING</button>
                    <button type="button" class="btn btn-danger round raised">DANGER</button>
                    <button type="button" class="btn round raised btn-yellow">YELLOW</button>
                    <button type="button" class="btn round raised btn-violet">VIOLET</button>
                    <button type="button" class="btn round raised btn-brown">BROWN</button>
                    <button type="button" class="btn round raised btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default raised disabled">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised disabled">PRIMARY</button>
                    <button type="button" class="btn btn-success raised disabled">SUCCESS</button>
                    <button type="button" class="btn btn-info raised disabled">INFO</button>
                    <button type="button" class="btn btn-warning raised disabled">WARNING</button>
                    <button type="button" class="btn btn-danger raised disabled">DANGER</button>
                    <button type="button" disabled class="btn raised btn-yellow">YELLOW</button>
                    <button type="button" disabled class="btn raised btn-violet">VIOLET</button>
                    <button type="button" disabled class="btn raised btn-brown">BROWN</button>
                    <button type="button" disabled class="btn raised btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle raised"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle raised"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle raised"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle raised"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn btn-yellow btn-circle raised"><i class="fa fa-user"></i></button>
                    <button type="button" class="btn btn-violet btn-circle raised"><i class="fa fa-bar-chart-o"></i></button>
                    <button type="button" class="btn btn-brown btn-circle raised"><i class="fa fa-cog"></i></button>
                    <button type="button" class="btn btn-navy btn-circle raised"><i class="fa fa-home"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Gradient Buttons</div>
            <div class="panel-body text-center">
                <p>
                    <button type="button" class="btn btn-default gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info gradient">INFO</button>
                    <button type="button" class="btn btn-warning gradient">WARNING</button>
                    <button type="button" class="btn btn-danger gradient">DANGER</button>
                    <button type="button" class="btn gradient btn-yellow">YELLOW</button>
                    <button type="button" class="btn gradient btn-violet">VIOLET</button>
                    <button type="button" class="btn gradient btn-brown">BROWN</button>
                    <button type="button" class="btn gradient btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp gradient">INFO</button>
                    <button type="button" class="btn btn-warning sharp gradient">WARNING</button>
                    <button type="button" class="btn btn-danger sharp gradient">DANGER</button>
                    <button type="button" class="btn gradient sharp btn-yellow">YELLOW</button>
                    <button type="button" class="btn gradient sharp btn-violet">VIOLET</button>
                    <button type="button" class="btn gradient sharp btn-brown">BROWN</button>
                    <button type="button" class="btn gradient sharp btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary round gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success round gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info round gradient">INFO</button>
                    <button type="button" class="btn btn-warning round gradient">WARNING</button>
                    <button type="button" class="btn btn-danger round gradient">DANGER</button>
                    <button type="button" class="btn round gradient btn-yellow">YELLOW</button>
                    <button type="button" class="btn round gradient btn-violet">VIOLET</button>
                    <button type="button" class="btn round gradient btn-brown">BROWN</button>
                    <button type="button" class="btn round gradient btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default gradient" disabled>DEFAULT</button>
                    <button type="button" class="btn btn-primary gradient" disabled>PRIMARY</button>
                    <button type="button" class="btn btn-success gradient" disabled>SUCCESS</button>
                    <button type="button" class="btn btn-info gradient" disabled>INFO</button>
                    <button type="button" class="btn btn-warning gradient" disabled>WARNING</button>
                    <button type="button" class="btn btn-danger gradient" disabled>DANGER</button>
                    <button type="button" class="btn gradient btn-yellow" disabled>YELLOW</button>
                    <button type="button" class="btn gradient btn-violet" disabled>VIOLET</button>
                    <button type="button" class="btn gradient btn-brown" disabled>BROWN</button>
                    <button type="button" class="btn gradient btn-navy" disabled>NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle gradient"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle gradient"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle gradient"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn btn-yellow btn-circle gradient"><i class="fa fa-user"></i></button>
                    <button type="button" class="btn btn-violet btn-circle gradient"><i class="fa fa-bar-chart-o"></i></button>
                    <button type="button" class="btn btn-brown btn-circle gradient"><i class="fa fa-cog"></i></button>
                    <button type="button" class="btn btn-navy btn-circle gradient"><i class="fa fa-home"></i></button>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Raised Gradient Buttons</div>
            <div class="panel-body text-center">
                <p>
                    <button type="button" class="btn btn-default raised gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success raised gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info raised gradient">INFO</button>
                    <button type="button" class="btn btn-warning raised gradient">WARNING</button>
                    <button type="button" class="btn btn-danger raised gradient">DANGER</button>
                    <button type="button" class="btn raised gradient btn-yellow">YELLOW</button>
                    <button type="button" class="btn raised gradient btn-violet">VIOLET</button>
                    <button type="button" class="btn raised gradient btn-brown">BROWN</button>
                    <button type="button" class="btn raised gradient btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp raised gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp raised gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp raised gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp raised gradient">INFO</button>
                    <button type="button" class="btn btn-warning sharp raised gradient">WARNING</button>
                    <button type="button" class="btn btn-danger sharp raised gradient">DANGER</button>
                    <button type="button" class="btn raised gradient raised btn-yellow">YELLOW</button>
                    <button type="button" class="btn raised gradient raised btn-violet">VIOLET</button>
                    <button type="button" class="btn raised gradient raised btn-brown">BROWN</button>
                    <button type="button" class="btn raised gradient raised btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round raised gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary round raised gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success round raised gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info round raised gradient">INFO</button>
                    <button type="button" class="btn btn-warning round raised gradient">WARNING</button>
                    <button type="button" class="btn btn-danger round raised gradient">DANGER</button>
                    <button type="button" class="btn raised gradient round btn-yellow">YELLOW</button>
                    <button type="button" class="btn raised gradient round btn-violet">VIOLET</button>
                    <button type="button" class="btn raised gradient round btn-brown">BROWN</button>
                    <button type="button" class="btn raised gradient round btn-navy">NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default raised gradient" disabled>DEFAULT</button>
                    <button type="button" class="btn btn-primary raised gradient" disabled>PRIMARY</button>
                    <button type="button" class="btn btn-success raised gradient" disabled>SUCCESS</button>
                    <button type="button" class="btn btn-info raised gradient" disabled>INFO</button>
                    <button type="button" class="btn btn-warning raised gradient" disabled>WARNING</button>
                    <button type="button" class="btn btn-danger raised gradient" disabled>DANGER</button>
                    <button type="button" class="btn raised gradient btn-yellow" disabled>YELLOW</button>
                    <button type="button" class="btn raised gradient btn-violet" disabled>VIOLET</button>
                    <button type="button" class="btn raised gradient btn-brown" disabled>BROWN</button>
                    <button type="button" class="btn raised gradient btn-navy" disabled>NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle raised gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle raised gradient"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle raised gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle raised gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle raised gradient"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle raised gradient"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn btn-yellow btn-circle raised gradient"><i class="fa fa-user"></i></button>
                    <button type="button" class="btn btn-violet btn-circle raised gradient"><i class="fa fa-bar-chart-o"></i></button>
                    <button type="button" class="btn btn-brown btn-circle raised gradient"><i class="fa fa-cog"></i></button>
                    <button type="button" class="btn btn-navy btn-circle raised gradient"><i class="fa fa-home"></i></button>
                </p>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Button with Icons</div>
            <div class="panel-body text-center">
                <button type="button" class="btn btn-default"><i class="fa fa-flag"></i> DEFAULT</button>
                <button type="button" class="btn btn-primary"><i class="fa fa-comments"></i> PRIMARY</button>
                <button type="button" class="btn btn-success"><i class="fa fa-check"></i> SUCCESS</button>
                <button type="button" class="btn btn-info"><i class="fa fa-info-circle"></i> INFO</button>
                <button type="button" class="btn btn-warning"><i class="fa fa-warning"></i> WARNING</button>
                <button type="button" class="btn btn-danger"><i class="fa fa-times"></i> DANGER</button>
                <button type="button" class="btn btn-yellow"><i class="fa fa-star"></i> YELLOW</button>
                <button type="button" class="btn btn-violet"><i class="fa fa-child"></i> VIOLET</button>
                <button type="button" class="btn btn-brown"><i class="fa fa-support"></i> BROWN</button>
                <button type="button" class="btn btn-navy"><i class="fa fa-shopping-cart"></i> NAVY</button>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Button Sizes</div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <p>All kinds of buttons can be any size.</p>
                <p class="text-center">
                    <button type="button" class="btn btn-primary btn-lg">LARGE BUTTON</button>
                    <button type="button" class="btn btn-yellow sharp raised">DEFAULT BUTTON</button>
                    <button type="button" class="btn btn-success btn-sm round gradient">SMALL BUTTON</button>
                    <button type="button" class="btn btn-outline btn-navy btn-xs">MINI BUTTON</button>
                    <button type="button" class="btn btn-warning btn-circle gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-default btn-circle btn-lg raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-danger btn-circle btn-xl"><i class="fa fa-heart"></i></button>
                    <br>
                    <br>
                    <button type="button" class="btn btn-info btn-lg btn-block raised gradient">BLOCK LEVEL LARGE BUTTON</button>
                </p>
            </div>
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Button Groups
            </div>

            <div class="panel-body">
                <div class="text-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-primary sharp">PRIMARY</button>
                        <button type="button" class="btn btn-success sharp">SUCCESS</button>
                        <button type="button" class="btn btn-info sharp">INFO</button>
                        <button type="button" class="btn btn-warning sharp">WARNING</button>
                        <button type="button" class="btn btn-danger sharp">DANGER</button>
                    </div>

                    <hr class="wide">

                    <div class="btn-group">
                        <button type="button" class="btn btn-primary sharp raised gradient">PRIMARY</button>
                        <button type="button" class="btn btn-success sharp raised gradient">SUCCESS</button>
                        <button type="button" class="btn btn-info sharp raised gradient">INFO</button>
                        <button type="button" class="btn btn-warning sharp raised gradient">WARNING</button>
                        <button type="button" class="btn btn-danger sharp raised gradient">DANGER</button>
                    </div>

                    <hr class="wide">

                    <div class="row">
                        <div class="col-lg-3 col-lg-push-3">
                            <div class="btn-group-vertical">
                                <button type="button" class="btn btn-primary">PRIMARY</button>
                                <button type="button" class="btn btn-success">SUCCESS</button>
                                <button type="button" class="btn btn-info">INFO</button>
                                <button type="button" class="btn btn-warning">WARNING</button>
                                <button type="button" class="btn btn-danger">DANGER</button>
                            </div>
                        </div>
                        <div class="col-lg-3 col-lg-push-3">
                            <div class="btn-group-vertical">
                                <button type="button" class="btn btn-yellow">YELLOW</button>
                                <button type="button" class="btn btn-violet">VIOLET</button>
                                <button type="button" class="btn btn-brown">BROWN</button>
                                <button type="button" class="btn btn-navy">NAVY</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Button Dropdowns
            </div>
            <div class="panel-body">
                <div class="text-center">
                    <div class="btn-group">
                        <a class="btn btn-default " href="javascript:void(0);">Default</a>
                        <a class="btn btn-default  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-primary " href="javascript:void(0);">Primary</a>
                        <a class="btn btn-primary  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-primary">
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
                    <div class="btn-group">
                        <a class="btn btn-info " href="javascript:void(0);">Info</a>
                        <a class="btn btn-info  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-info">
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
                    <div class="btn-group">
                        <a class="btn btn-success " href="javascript:void(0);">Success</a>
                        <a class="btn btn-success  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-success">
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
                    <div class="btn-group">
                        <a class="btn btn-warning " href="javascript:void(0);">Warning</a>
                        <a class="btn btn-warning  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-warning">
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
                    <div class="btn-group">
                        <a class="btn btn-danger " href="javascript:void(0);">Danger</a>
                        <a class="btn btn-danger  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-danger">
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

                    <hr class="wide">

                    <div class="btn-group">
                        <a class="btn btn-yellow " href="javascript:void(0);">Yellow</a>
                        <a class="btn btn-yellow  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-violet " href="javascript:void(0);">Violet</a>
                        <a class="btn btn-violet  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-brown " href="javascript:void(0);">Brown</a>
                        <a class="btn btn-brown  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-navy " href="javascript:void(0);">Navy</a>
                        <a class="btn btn-navy  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Split Button Dropdowns
            </div>
            <div class="panel-body">
                <div class="text-center">
                    <div class="btn-group">
                        <a class="btn btn-default  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Default <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-primary  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Primary <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-primary">
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
                    <div class="btn-group">
                        <a class="btn btn-info  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Info <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-info">
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
                    <div class="btn-group">
                        <a class="btn btn-success  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Success <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-success">
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
                    <div class="btn-group">
                        <a class="btn btn-warning  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Warning <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-warning">
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
                    <div class="btn-group">
                        <a class="btn btn-danger  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Danger <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-danger">
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

                    <hr class="wide">

                    <div class="btn-group">
                        <a class="btn btn-yellow  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Yellow <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-violet  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Violet <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-brown  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Brown <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                    <div class="btn-group">
                        <a class="btn btn-navy  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);">Navy <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
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
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Social Buttons
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <a class="btn btn-block btn-social btn-facebook">
                    <i class="fa fa-facebook"></i> Sign in with Facebook
                </a>
                <a class="btn btn-block btn-social btn-github">
                    <i class="fa fa-github"></i> Sign in with GitHub
                </a>
                <a class="btn btn-block btn-social btn-google-plus">
                    <i class="fa fa-google-plus"></i> Sign in with Google
                </a>
                <a class="btn btn-block btn-social btn-twitter">
                    <i class="fa fa-twitter"></i> Sign in with Twitter
                </a>
            </div>
            <!-- /.panel-body -->
        </div>
    </div>

    <div class="col-lg-9">
        <div class="panel panel-default">
            <div class="panel-heading">
                Social Icon Buttons
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="text-center">
                    <a class="btn btn-social-icon btn-adn"><i class="fa fa-adn"></i></a>
                    <a class="btn btn-social-icon btn-bitbucket"><i class="fa fa-bitbucket"></i></a>
                    <a class="btn btn-social-icon btn-dropbox"><i class="fa fa-dropbox"></i></a>
                    <a class="btn btn-social-icon btn-facebook"><i class="fa fa-facebook"></i></a>
                    <a class="btn btn-social-icon btn-flickr"><i class="fa fa-flickr"></i></a>
                    <a class="btn btn-social-icon btn-foursquare "><i class="fa fa-foursquare "></i></a>
                    <a class="btn btn-social-icon btn-github"><i class="fa fa-github"></i></a>
                    <a class="btn btn-social-icon btn-google-plus"><i class="fa fa-google-plus"></i></a>
                    <a class="btn btn-social-icon btn-instagram"><i class="fa fa-instagram"></i></a>
                    <a class="btn btn-social-icon btn-linkedin"><i class="fa fa-linkedin"></i></a>
                    <a class="btn btn-social-icon btn-microsoft"><i class="fa fa-windows"></i></a>
                    <a class="btn btn-social-icon btn-openid "><i class="fa fa-openid "></i></a>
                    <a class="btn btn-social-icon btn-pinterest "><i class="fa fa-pinterest "></i></a>
                    <a class="btn btn-social-icon btn-reddit"><i class="fa fa-reddit"></i></a>
                    <a class="btn btn-social-icon btn-soundcloud"><i class="fa fa-soundcloud"></i></a>
                    <a class="btn btn-social-icon btn-tumblr"><i class="fa fa-tumblr"></i></a>
                    <a class="btn btn-social-icon btn-twitter"><i class="fa fa-twitter"></i></a>
                    <a class="btn btn-social-icon btn-vimeo"><i class="fa fa-vimeo-square"></i></a>
                    <a class="btn btn-social-icon btn-vk"><i class="fa fa-vk"></i></a>
                    <a class="btn btn-social-icon btn-yahoo"><i class="fa fa-yahoo"></i></a>
                </div>
            </div>
            <!-- /.panel-body -->
        </div>
    </div>
</div>
{% endblock %}