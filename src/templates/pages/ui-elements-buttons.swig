{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'ui-elements-buttons' %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">Standard Buttons</div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <h4>Normal Buttons</h4>
                <p>
                    <button type="button" class="btn btn-default">DEFAULT</button>
                    <button type="button" class="btn btn-primary">PRIMARY</button>
                    <button type="button" class="btn btn-success">SUCCESS</button>
                    <button type="button" class="btn btn-info">INFO</button>
                    <button type="button" class="btn btn-warning">WARNING</button>
                    <button type="button" class="btn btn-danger">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp">INFO</button>
                    <button type="button" class="btn btn-warning sharp">WARNING</button>
                    <button type="button" class="btn btn-danger sharp">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round">DEFAULT</button>
                    <button type="button" class="btn btn-primary round">PRIMARY</button>
                    <button type="button" class="btn btn-success round">SUCCESS</button>
                    <button type="button" class="btn btn-info round">INFO</button>
                    <button type="button" class="btn btn-warning round">WARNING</button>
                    <button type="button" class="btn btn-danger round">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default disabled">DEFAULT</button>
                    <button type="button" class="btn btn-primary disabled">PRIMARY</button>
                    <button type="button" class="btn btn-success disabled">SUCCESS</button>
                    <button type="button" class="btn btn-info disabled">INFO</button>
                    <button type="button" class="btn btn-warning disabled">WARNING</button>
                    <button type="button" class="btn btn-danger disabled">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default active">DEFAULT</button>
                    <button type="button" class="btn btn-primary active">PRIMARY</button>
                    <button type="button" class="btn btn-success active">SUCCESS</button>
                    <button type="button" class="btn btn-info active">INFO</button>
                    <button type="button" class="btn btn-warning active">WARNING</button>
                    <button type="button" class="btn btn-danger active">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle"><i class="fa fa-heart"></i></button>
                </p>
                <br>

                <h4>Outline Buttons</h4>
                <p>
                    <button type="button" class="btn btn-outline btn-default">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default sharp">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary sharp">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success sharp">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info sharp">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning sharp">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger sharp">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default round">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary round">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success round">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info round">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning round">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger round">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default disabled">DEFAULT</button>
                    <button type="button" class="btn btn-outline btn-primary disabled">PRIMARY</button>
                    <button type="button" class="btn btn-outline btn-success disabled">SUCCESS</button>
                    <button type="button" class="btn btn-outline btn-info disabled">INFO</button>
                    <button type="button" class="btn btn-outline btn-warning disabled">WARNING</button>
                    <button type="button" class="btn btn-outline btn-danger disabled">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline btn-default btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-outline btn-primary btn-circle"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-outline btn-success btn-circle"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-outline btn-info btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-outline btn-warning btn-circle"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-outline btn-danger btn-circle"><i class="fa fa-heart"></i></button>
                </p>
                <br>

                <h4>Raised Buttons</h4>
                <p>
                    <button type="button" class="btn btn-default raised">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised">PRIMARY</button>
                    <button type="button" class="btn btn-success raised">SUCCESS</button>
                    <button type="button" class="btn btn-info raised">INFO</button>
                    <button type="button" class="btn btn-warning raised">WARNING</button>
                    <button type="button" class="btn btn-danger raised">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp raised">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp raised">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp raised">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp raised">INFO</button>
                    <button type="button" class="btn btn-warning sharp raised">WARNING</button>
                    <button type="button" class="btn btn-danger sharp raised">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round raised">DEFAULT</button>
                    <button type="button" class="btn btn-primary round raised">PRIMARY</button>
                    <button type="button" class="btn btn-success round raised">SUCCESS</button>
                    <button type="button" class="btn btn-info round raised">INFO</button>
                    <button type="button" class="btn btn-warning round raised">WARNING</button>
                    <button type="button" class="btn btn-danger round raised">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default raised disabled">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised disabled">PRIMARY</button>
                    <button type="button" class="btn btn-success raised disabled">SUCCESS</button>
                    <button type="button" class="btn btn-info raised disabled">INFO</button>
                    <button type="button" class="btn btn-warning raised disabled">WARNING</button>
                    <button type="button" class="btn btn-danger raised disabled">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle raised"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle raised"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle raised"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle raised"><i class="fa fa-heart"></i></button>
                </p>
                <br>

                <h4>Gradient Buttons</h4>
                <p>
                    <button type="button" class="btn btn-default gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info gradient">INFO</button>
                    <button type="button" class="btn btn-warning gradient">WARNING</button>
                    <button type="button" class="btn btn-danger gradient">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp gradient">INFO</button>
                    <button type="button" class="btn btn-warning sharp gradient">WARNING</button>
                    <button type="button" class="btn btn-danger sharp gradient">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary round gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success round gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info round gradient">INFO</button>
                    <button type="button" class="btn btn-warning round gradient">WARNING</button>
                    <button type="button" class="btn btn-danger round gradient">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default gradient disabled">DEFAULT</button>
                    <button type="button" class="btn btn-primary gradient disabled">PRIMARY</button>
                    <button type="button" class="btn btn-success gradient disabled">SUCCESS</button>
                    <button type="button" class="btn btn-info gradient disabled">INFO</button>
                    <button type="button" class="btn btn-warning gradient disabled">WARNING</button>
                    <button type="button" class="btn btn-danger gradient disabled">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle gradient"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle gradient"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle gradient"><i class="fa fa-heart"></i></button>
                </p>
                <br>

                <h4>Raised Gradient Buttons</h4>
                <p>
                    <button type="button" class="btn btn-default raised gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success raised gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info raised gradient">INFO</button>
                    <button type="button" class="btn btn-warning raised gradient">WARNING</button>
                    <button type="button" class="btn btn-danger raised gradient">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default sharp raised gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary sharp raised gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success sharp raised gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info sharp raised gradient">INFO</button>
                    <button type="button" class="btn btn-warning sharp raised gradient">WARNING</button>
                    <button type="button" class="btn btn-danger sharp raised gradient">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default round raised gradient">DEFAULT</button>
                    <button type="button" class="btn btn-primary round raised gradient">PRIMARY</button>
                    <button type="button" class="btn btn-success round raised gradient">SUCCESS</button>
                    <button type="button" class="btn btn-info round raised gradient">INFO</button>
                    <button type="button" class="btn btn-warning round raised gradient">WARNING</button>
                    <button type="button" class="btn btn-danger round raised gradient">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default raised gradient disabled">DEFAULT</button>
                    <button type="button" class="btn btn-primary raised gradient disabled">PRIMARY</button>
                    <button type="button" class="btn btn-success raised gradient disabled">SUCCESS</button>
                    <button type="button" class="btn btn-info raised gradient disabled">INFO</button>
                    <button type="button" class="btn btn-warning raised gradient disabled">WARNING</button>
                    <button type="button" class="btn btn-danger raised gradient disabled">DANGER</button>
                </p>
                <p>
                    <button type="button" class="btn btn-default btn-circle raised gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-primary btn-circle raised gradient"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-success btn-circle raised gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-info btn-circle raised gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-warning btn-circle raised gradient"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-danger btn-circle raised gradient"><i class="fa fa-heart"></i></button>
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
            <div class="panel-heading">Additional Buttons</div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <h4>Normal Buttons</h4>
                <p>
                    <button type="button" class="btn color-yellow">YELLOW</button>
                    <button type="button" class="btn color-violet">VIOLET</button>
                    <button type="button" class="btn color-brown">BROWN</button>
                    <button type="button" class="btn color-light-grey">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey">DARK GREY</button>
                    <button type="button" class="btn color-light-navy">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow sharp">YELLOW</button>
                    <button type="button" class="btn color-violet sharp">VIOLET</button>
                    <button type="button" class="btn color-brown sharp">BROWN</button>
                    <button type="button" class="btn color-light-grey sharp">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey sharp">DARK GREY</button>
                    <button type="button" class="btn color-light-navy sharp">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy sharp">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round">YELLOW</button>
                    <button type="button" class="btn color-violet round">VIOLET</button>
                    <button type="button" class="btn color-brown round">BROWN</button>
                    <button type="button" class="btn color-light-grey round">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round disabled">YELLOW</button>
                    <button type="button" class="btn color-violet round disabled">VIOLET</button>
                    <button type="button" class="btn color-brown round disabled">BROWN</button>
                    <button type="button" class="btn color-light-grey round disabled">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round disabled">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round disabled">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round disabled">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-violet btn-circle"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn color-brown btn-circle"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn color-light-grey btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-dark-grey btn-circle"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn color-light-navy btn-circle"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn color-dark-navy btn-circle"><i class="fa fa-envelope"></i></button>
                </p>
                <br>

                <h4>Outline Buttons</h4>
                <p>
                    <button type="button" class="btn btn-outline color-yellow">YELLOW</button>
                    <button type="button" class="btn btn-outline color-violet">VIOLET</button>
                    <button type="button" class="btn btn-outline color-brown">BROWN</button>
                    <button type="button" class="btn btn-outline color-light-grey">LIGHT GREY</button>
                    <button type="button" class="btn btn-outline color-dark-grey">DARK GREY</button>
                    <button type="button" class="btn btn-outline color-light-navy">LIGHT NAVY</button>
                    <button type="button" class="btn btn-outline color-dark-navy">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline color-yellow sharp">YELLOW</button>
                    <button type="button" class="btn btn-outline color-violet sharp">VIOLET</button>
                    <button type="button" class="btn btn-outline color-brown sharp">BROWN</button>
                    <button type="button" class="btn btn-outline color-light-grey sharp">LIGHT GREY</button>
                    <button type="button" class="btn btn-outline color-dark-grey sharp">DARK GREY</button>
                    <button type="button" class="btn btn-outline color-light-navy sharp">LIGHT NAVY</button>
                    <button type="button" class="btn btn-outline color-dark-navy sharp">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline color-yellow round">YELLOW</button>
                    <button type="button" class="btn btn-outline color-violet round">VIOLET</button>
                    <button type="button" class="btn btn-outline color-brown round">BROWN</button>
                    <button type="button" class="btn btn-outline color-light-grey round">LIGHT GREY</button>
                    <button type="button" class="btn btn-outline color-dark-grey round">DARK GREY</button>
                    <button type="button" class="btn btn-outline color-light-navy round">LIGHT NAVY</button>
                    <button type="button" class="btn btn-outline color-dark-navy round">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline color-yellow round disabled">YELLOW</button>
                    <button type="button" class="btn btn-outline color-violet round disabled">VIOLET</button>
                    <button type="button" class="btn btn-outline color-brown round disabled">BROWN</button>
                    <button type="button" class="btn btn-outline color-light-grey round disabled">LIGHT GREY</button>
                    <button type="button" class="btn btn-outline color-dark-grey round disabled">DARK GREY</button>
                    <button type="button" class="btn btn-outline color-light-navy round disabled">LIGHT NAVY</button>
                    <button type="button" class="btn btn-outline color-dark-navy round disabled">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn btn-outline color-yellow btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-outline color-violet btn-circle"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn btn-outline color-brown btn-circle"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn btn-outline color-light-grey btn-circle"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn btn-outline color-dark-grey btn-circle"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn btn-outline color-light-navy btn-circle"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn btn-outline color-dark-navy btn-circle"><i class="fa fa-envelope"></i></button>
                </p>
                <br>

                <h4>Raised Buttons</h4>
                <p>
                    <button type="button" class="btn color-yellow raised">YELLOW</button>
                    <button type="button" class="btn color-violet raised">VIOLET</button>
                    <button type="button" class="btn color-brown raised">BROWN</button>
                    <button type="button" class="btn color-light-grey raised">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey raised">DARK GREY</button>
                    <button type="button" class="btn color-light-navy raised">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy raised">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow sharp raised">YELLOW</button>
                    <button type="button" class="btn color-violet sharp raised">VIOLET</button>
                    <button type="button" class="btn color-brown sharp raised">BROWN</button>
                    <button type="button" class="btn color-light-grey sharp raised">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey sharp raised">DARK GREY</button>
                    <button type="button" class="btn color-light-navy sharp raised">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy sharp raised">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round raised">YELLOW</button>
                    <button type="button" class="btn color-violet round raised">VIOLET</button>
                    <button type="button" class="btn color-brown round raised">BROWN</button>
                    <button type="button" class="btn color-light-grey round raised">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round raised">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round raised">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round raised">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round raised disabled">YELLOW</button>
                    <button type="button" class="btn color-violet round raised disabled">VIOLET</button>
                    <button type="button" class="btn color-brown round raised disabled">BROWN</button>
                    <button type="button" class="btn color-light-grey round raised disabled">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round raised disabled">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round raised disabled">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round raised disabled">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow btn-circle raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-violet btn-circle raised"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn color-brown btn-circle raised"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn color-light-grey btn-circle raised"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-dark-grey btn-circle raised"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn color-light-navy btn-circle raised"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn color-dark-navy btn-circle raised"><i class="fa fa-envelope"></i></button>
                </p>
                <br>

                <h4>Gradient Buttons</h4>
                <p>
                    <button type="button" class="btn color-yellow gradient">YELLOW</button>
                    <button type="button" class="btn color-violet gradient">VIOLET</button>
                    <button type="button" class="btn color-brown gradient">BROWN</button>
                    <button type="button" class="btn color-light-grey gradient">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey gradient">DARK GREY</button>
                    <button type="button" class="btn color-light-navy gradient">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy gradient">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow sharp gradient">YELLOW</button>
                    <button type="button" class="btn color-violet sharp gradient">VIOLET</button>
                    <button type="button" class="btn color-brown sharp gradient">BROWN</button>
                    <button type="button" class="btn color-light-grey sharp gradient">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey sharp gradient">DARK GREY</button>
                    <button type="button" class="btn color-light-navy sharp gradient">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy sharp gradient">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round gradient">YELLOW</button>
                    <button type="button" class="btn color-violet round gradient">VIOLET</button>
                    <button type="button" class="btn color-brown round gradient">BROWN</button>
                    <button type="button" class="btn color-light-grey round gradient">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round gradient">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round gradient">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round gradient">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round gradient disabled">YELLOW</button>
                    <button type="button" class="btn color-violet round gradient disabled">VIOLET</button>
                    <button type="button" class="btn color-brown round gradient disabled">BROWN</button>
                    <button type="button" class="btn color-light-grey round gradient disabled">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round gradient disabled">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round gradient disabled">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round gradient disabled">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow btn-circle gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-violet btn-circle gradient"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn color-brown btn-circle gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn color-light-grey btn-circle gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-dark-grey btn-circle gradient"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn color-light-navy btn-circle gradient"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn color-dark-navy btn-circle gradient"><i class="fa fa-envelope"></i></button>
                </p>
                <br>

                <h4>Raised Gradient Buttons</h4>
                <p>
                    <button type="button" class="btn color-yellow raised gradient">YELLOW</button>
                    <button type="button" class="btn color-violet raised gradient">VIOLET</button>
                    <button type="button" class="btn color-brown raised gradient">BROWN</button>
                    <button type="button" class="btn color-light-grey raised gradient">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey raised gradient">DARK GREY</button>
                    <button type="button" class="btn color-light-navy raised gradient">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy raised gradient">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow sharp raised gradient">YELLOW</button>
                    <button type="button" class="btn color-violet sharp raised gradient">VIOLET</button>
                    <button type="button" class="btn color-brown sharp raised gradient">BROWN</button>
                    <button type="button" class="btn color-light-grey sharp raised gradient">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey sharp raised gradient">DARK GREY</button>
                    <button type="button" class="btn color-light-navy sharp raised gradient">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy sharp raised gradient">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round raised gradient">YELLOW</button>
                    <button type="button" class="btn color-violet round raised gradient">VIOLET</button>
                    <button type="button" class="btn color-brown round raised gradient">BROWN</button>
                    <button type="button" class="btn color-light-grey round raised gradient">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round raised gradient">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round raised gradient">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round raised gradient">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow round raised gradient disabled">YELLOW</button>
                    <button type="button" class="btn color-violet round raised gradient disabled">VIOLET</button>
                    <button type="button" class="btn color-brown round raised gradient disabled">BROWN</button>
                    <button type="button" class="btn color-light-grey round raised gradient disabled">LIGHT GREY</button>
                    <button type="button" class="btn color-dark-grey round raised gradient disabled">DARK GREY</button>
                    <button type="button" class="btn color-light-navy round raised gradient disabled">LIGHT NAVY</button>
                    <button type="button" class="btn color-dark-navy round raised gradient disabled">DARK NAVY</button>
                </p>
                <p>
                    <button type="button" class="btn color-yellow btn-circle raised gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-violet btn-circle raised gradient"><i class="fa fa-list"></i></button>
                    <button type="button" class="btn color-brown btn-circle raised gradient"><i class="fa fa-link"></i></button>
                    <button type="button" class="btn color-light-grey btn-circle raised gradient"><i class="fa fa-check"></i></button>
                    <button type="button" class="btn color-dark-grey btn-circle raised gradient"><i class="fa fa-times"></i></button>
                    <button type="button" class="btn color-light-navy btn-circle raised gradient"><i class="fa fa-heart"></i></button>
                    <button type="button" class="btn color-dark-navy btn-circle raised gradient"><i class="fa fa-envelope"></i></button>
                </p>
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">Buttons sizes</div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <p>All kinds of buttons can be any size.</p>
                <p class="text-center">
                    <button type="button" class="btn btn-primary btn-lg">LARGE BUTTON</button>
                    <button type="button" class="btn color-yellow sharp raised">DEFAULT BUTTON</button>
                    <button type="button" class="btn btn-success btn-sm round gradient">SMALL BUTTON</button>
                    <button type="button" class="btn btn-outline color-light-navy btn-xs">MINI BUTTON</button>
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

                    <div class="btn-group-vertical">
                        <button type="button" class="btn btn-primary sharp">PRIMARY</button>
                        <button type="button" class="btn btn-success sharp">SUCCESS</button>
                        <button type="button" class="btn btn-info sharp">INFO</button>
                        <button type="button" class="btn btn-warning sharp">WARNING</button>
                        <button type="button" class="btn btn-danger sharp">DANGER</button>
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
                Social Buttons with Font Awesome Icons
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

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Social Buttons with Font Awesome Icons
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