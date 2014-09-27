{% extends '../layouts/layout-1.swig' %}

{% block title %}Basic elements{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Labels
            </div>
            <div class="panel-body">
                <div class="text-center">
                	<span class="label label-default">
	                    DEFAULT
	                </span>
	                <span class="label label-primary">
	                    PRIMARY
	                </span>
	                <span class="label label-success">
	                    SUCCESS
	                </span>
	                <span class="label label-info">
	                    INFO
	                </span>
	                <span class="label label-warning">
	                    WARNING
	                </span>
	                <span class="label label-danger">
	                    DANGER
	                </span>

	                <br>

	                <span class="label label-yellow">
	                    YELLOW
	                </span>
	                <span class="label label-violet">
	                    VIOLET
	                </span>
	                <span class="label label-brown">
	                    BROWN
	                </span>
	                <span class="label label-light-grey">
	                    LIGHT GREY
	                </span>
	                <span class="label label-dark-grey">
	                    DARK GREY
	                </span>
	                <span class="label label-light-navy">
	                    LIGHT NAVY
	                </span>
	                <span class="label label-dark-navy">
	                    DARK NAVY
	                </span>

	                <hr>

	                <span class="label sharp label-default">
	                    DEFAULT
	                </span>
	                <span class="label sharp label-primary">
	                    PRIMARY
	                </span>
	                <span class="label sharp label-success">
	                    SUCCESS
	                </span>
	                <span class="label sharp label-info">
	                    INFO
	                </span>
	                <span class="label sharp label-warning">
	                    WARNING
	                </span>
	                <span class="label sharp label-danger">
	                    DANGER
	                </span>

	                <br>

	                <span class="label sharp label-yellow">
	                    YELLOW
	                </span>
	                <span class="label sharp label-violet">
	                    VIOLET
	                </span>
	                <span class="label sharp label-brown">
	                    BROWN
	                </span>
	                <span class="label sharp label-light-grey">
	                    LIGHT GREY
	                </span>
	                <span class="label sharp label-dark-grey">
	                    DARK GREY
	                </span>
	                <span class="label sharp label-light-navy">
	                    LIGHT NAVY
	                </span>
	                <span class="label sharp label-dark-navy">
	                    DARK NAVY
	                </span>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Badges
            </div>
            <div class="panel-body">
            	<div class="text-center">
            		<span class="badge badge-default">
                    	1
	                </span>
	                <span class="badge badge-primary">
	                    2
	                </span>
	                <span class="badge badge-success">
	                    3
	                </span>
	                <span class="badge badge-info">
	                    4
	                </span>
	                <span class="badge badge-warning">
	                    5
	                </span>
	                <span class="badge badge-danger">
	                    6
	                </span>

					<br>

	                <span class="badge badge-yellow">
	                    1
	                </span>
	                <span class="badge badge-violet">
	                    2
	                </span>
	                <span class="badge badge-brown">
	                    3
	                </span>
	                <span class="badge badge-light-grey">
	                    4
	                </span>
	                <span class="badge badge-dark-grey">
	                    5
	                </span>
	                <span class="badge badge-light-navy">
	                    6
	                </span>
	                <span class="badge badge-dark-navy">
	                    7
	                </span>

	                <hr>

	                <span class="badge sharp badge-default">
                    	1
	                </span>
	                <span class="badge sharp badge-primary">
	                    2
	                </span>
	                <span class="badge sharp badge-success">
	                    3
	                </span>
	                <span class="badge sharp badge-info">
	                    4
	                </span>
	                <span class="badge sharp badge-warning">
	                    5
	                </span>
	                <span class="badge sharp badge-danger">
	                    6
	                </span>

	                <br>

	                <span class="badge sharp badge-yellow">
	                    1
	                </span>
	                <span class="badge sharp badge-violet">
	                    2
	                </span>
	                <span class="badge sharp badge-brown">
	                    3
	                </span>
	                <span class="badge sharp badge-light-grey">
	                    4
	                </span>
	                <span class="badge sharp badge-dark-grey">
	                    5
	                </span>
	                <span class="badge sharp badge-light-navy">
	                    6
	                </span>
	                <span class="badge sharp badge-dark-navy">
	                    7
	                </span>
            	</div>
            </div>
        </div>
    </div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
            <div class="panel-heading">
                Dropdowns
            </div>
            <div class="panel-body">
                <div id="dropdownbuttons">
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
                        <a class="btn btn-info " href="javascript:void(0);">info</a>
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
                    <div class="btn-group">
                        <a class="btn btn-default " href="javascript:void(0);">Inverse</a>
                        <a class="btn btn-default  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-inverse">
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
                        <a class="btn btn-blue " href="javascript:void(0);">Blue</a>
                        <a class="btn btn-blue  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-blue">
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
                        <a class="btn btn-maroon " href="javascript:void(0);">Blue</a>
                        <a class="btn btn-maroon  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-maroon">
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
                        <a class="btn btn-darkorange " href="javascript:void(0);">Combined</a>
                        <a class="btn btn-palegreen  dropdown-toggle" data-toggle="dropdown" href="javascript:void(0);"><i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu dropdown-palegreen">
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
                Default Progress Bars
            </div>
            <div class="panel-body">
            	<div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                        <span class="sr-only">
                            40% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span class="sr-only">
                            100% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
	</div>

    <div class="col-lg-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Striped Progress Bars
            </div>
            <div class="panel-body">
            	<div class="progress progress-striped">
                    <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                        <span class="sr-only">
                            40% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span class="sr-only">
                            100% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Animated Progress Bars
            </div>
            <div class="panel-body">
            	<div class="progress progress-striped active">
                    <div class="progress-bar" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                        <span class="sr-only">
                            40% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span class="sr-only">
                            100% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
	</div>

	<div class="col-lg-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                Stacked Progress Bars
            </div>
            <div class="panel-body">
            	<div class="progress">
                    <div class="progress-bar" style="width: 5%">
                        <span class="sr-only">
                            5% Complete (success)
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-success" style="width: 10%">
                        <span class="sr-only">
                            10% Complete (success)
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-info progress-bar" style="width: 15%">
                        <span class="sr-only">
                            15% Complete (success)
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-warning" style="width: 20%">
                        <span class="sr-only">
                            20% Complete (warning)
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-danger" style="width: 25%">
                        <span class="sr-only">
                            10% Complete (danger)
                        </span>
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
                Pagination
            </div>
            <div class="panel-body">
                <h6>Default</h6>
                <ul class="pagination">
                    <li class="disabled"><a href="#">«</a></li>
                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">»</a></li>
                </ul>
                <hr class="wide">
                <h6>Sizes</h6>
                <div>
                    <ul class="pagination pagination-lg">
                        <li class="disabled"><a href="#">«</a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div>
                <div>
                    <ul class="pagination pagination-sm">
                        <li class="disabled"><a href="#">«</a></li>
                        <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div>
                <hr class="wide">
                <h6>Pager</h6>
                <div>
                    <ul class="pager">
                        <li class="disabled"><a href="#">← Older</a></li>
                        <li><a href="#">Newer →</a></li>
                    </ul>
                </div>
                <div class="horizontal-space"></div>
                <hr class="wide">
                <h6>Aligned Pager</h6>
                <ul class="pager">
                    <li class="previous"><a href="#">← Older</a></li>
                    <li class="next"><a href="#">Newer →</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
{% endblock %}