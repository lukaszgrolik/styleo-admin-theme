{% extends '../layouts/layout-1.swig' %}

{% block title %}Basic elements{% endblock %}

{% block breadcrumbs %}
<li><a href="#">UI Elements</a></li>
<li><a href="#">Basic Elements</a></li>
{% endblock %}

{% block bodyEnd %}
<script>
// tooltip demo
$('.tooltip-demo').tooltip({
    selector: "[data-toggle=tooltip]",
    container: "body"
});

// popover demo
$('[data-toggle=popover]').popover()
</script>
{% endblock %}

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
                Button Dropdowns
            </div>
            <div class="panel-body">
                <div id="dropdownbuttons" class="text-center">
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
                <div id="dropdownbuttons2" class="text-center">
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
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Tooltips and Popovers
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <h4>Tooltip Demo</h4>
                <div class="tooltip-demo text-center">
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right"><i class="fa fa-chevron-circle-right"></i> On Right</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top"><i class="fa fa-chevron-circle-up"></i> On Top</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom"><i class="fa fa-chevron-circle-down"></i> On Bottom</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left"><i class="fa fa-chevron-circle-left"></i> On Left</button>
                </div>
                <br>
                <h4>Clickable Popover Demo</h4>
                <div class="text-center">
                    <button type="button" class="btn btn-primary" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        <i class="fa fa-chevron-circle-right"></i> On Right
                    </button>
                    <button type="button" class="btn btn-primary" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        <i class="fa fa-chevron-circle-up"></i> On Top
                    </button>
                    <button type="button" class="btn btn-primary" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        <i class="fa fa-chevron-circle-down"></i> On Bottom
                    </button>

                    <button type="button" class="btn btn-primary" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        <i class="fa fa-chevron-circle-left"></i> On Left
                    </button>
                </div>
                <h4>Hoverable Popover With Title</h4>
                <p>This is just an example of popover use in a paragrhap content without a title writen by <a href="javascript:;" data-toggle="popover" data-content="This is a popover without a title!" data-placement="top">Author</a>, and there is another example with a title <a href="javascript:;" data-toggle="popover" data-original-title="Popover Title" data-content="This is a popover with a title!" data-placement="top">Tooltip</a> options.</p>
                <div class="spacer2 text-center">
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in right" data-content="This is the popover content space, put your ideas here!" data-placement="right" data-trigger="hover"><i class="fa fa-chevron-circle-right"></i> On Right</button>
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in top" data-content="This is the popover content space, put your ideas here!" data-placement="top" data-trigger="hover"><i class="fa fa-chevron-circle-up"></i> On Top</button>
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in bottom" data-content="This is the popover content space, put your ideas here!" data-placement="bottom" data-trigger="hover"><i class="fa fa-chevron-circle-down"></i> On Bottom</button>
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in left" data-content="This is the popover content space, put your ideas here!" data-placement="left" data-trigger="hover"><i class="fa fa-chevron-circle-left"></i> On Left</button>
                </div>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-bell fa-fw"></i> List
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="list-group">
                    <span class="list-group-item">
                        New Comment
                    </span>
                    <a href="#" class="list-group-item">
                        New Comment
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i> New Comment
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i> New Comment
                        <span class="pull-right text-muted small"><em>4 minutes ago</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                        <span class="pull-right text-muted small"><em>12 minutes ago</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                        <span class="pull-right text-muted small"><em>27 minutes ago</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-tasks fa-fw"></i> New Task
                        <span class="pull-right text-muted small"><em>43 minutes ago</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                        <span class="pull-right text-muted small"><em>11:32 AM</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-bolt fa-fw"></i> Server Crashed!
                        <span class="pull-right text-muted small"><em>11:13 AM</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-warning fa-fw"></i> Server Not Responding
                        <span class="pull-right text-muted small"><em>10:57 AM</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-shopping-cart fa-fw"></i> New Order Placed
                        <span class="pull-right text-muted small"><em>9:49 AM</em>
                        </span>
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-money fa-fw"></i> Payment Received
                        <span class="pull-right text-muted small"><em>Yesterday</em>
                        </span>
                    </a>
                </div>
                <!-- /.list-group -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
</div>

<div class="row">
	<div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Pagination
            </div>
            <div class="panel-body">
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
                    <ul class="pagination">
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

                <h5>Pager</h5>

                <div>
                    <ul class="pager">
                        <li class="disabled"><a href="#" class="btn btn-primary sharp">← Older</a></li>
                        <li><a href="#" class="btn btn-primary sharp">Newer →</a></li>
                    </ul>
                </div>

                <hr class="wide">

                <h5>Aligned Pager</h5>

                <ul class="pager">
                    <li class="previous"><a href="#" class="btn btn-primary sharp">← Older</a></li>
                    <li class="next"><a href="#" class="btn btn-primary sharp">Newer →</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
{% endblock %}