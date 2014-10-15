{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'ui-elements-basic-elements' %}

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
	                <span class="label label-navy">
	                    NAVY
	                </span>

	                <hr class="wide">

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
	                <span class="label sharp label-navy">
	                    NAVY
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
	                <span class="badge badge-navy">
	                    7
	                </span>

	                <hr class="wide">

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
	                <span class="badge sharp badge-navy">
	                    7
	                </span>
            	</div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Background Colors
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-center">
                            <p class="bg-primary">Primary Color Background</p>
                            <p class="bg-success">Success Color Background</p>
                            <p class="bg-info">Info Color Background</p>
                            <p class="bg-warning">Warning Color Background</p>
                            <p class="bg-danger">Danger Color Background</p>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="text-center">
                            <p class="bg-yellow">Yellow Background</p>
                            <p class="bg-violet">Violet Background</p>
                            <p class="bg-brown">Brown Background</p>
                            <p class="bg-navy">Navy Background</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Button Dropdowns
            </div>
            <div class="panel-body">
                <p>See <a href="ui-elements-buttons.html">Buttons</a> page for more examples.</p>

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
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Modals
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <!-- Button trigger modal -->
                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                    Open Default Modal
                </button>
                <!-- Modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->

                <!-- Button trigger modal -->
                <button class="btn btn-primary" data-toggle="modal" data-target="#myModalSharp">
                    Open Sharp Modal
                </button>
                <!-- Modal -->
                <div class="modal fade" id="myModalSharp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content sharp">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default sharp" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary sharp">Save changes</button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
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
                <h4>Hoverable Tooltips</h4>
                <div class="tooltip-demo">
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right"><i class="fa fa-chevron-circle-right"></i> On Right</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top"><i class="fa fa-chevron-circle-up"></i> On Top</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom"><i class="fa fa-chevron-circle-down"></i> On Bottom</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left"><i class="fa fa-chevron-circle-left"></i> On Left</button>
                </div>
                <br>

                <h4>Clickable Popovers</h4>
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
                <br>

                <h4>Hoverable Popovers with Titles</h4>
                <div class="spacer2 text-center">
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in right" data-content="This is the popover content space, put your ideas here!" data-placement="right" data-trigger="hover"><i class="fa fa-chevron-circle-right"></i> On Right</button>
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in top" data-content="This is the popover content space, put your ideas here!" data-placement="top" data-trigger="hover"><i class="fa fa-chevron-circle-up"></i> On Top</button>
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in bottom" data-content="This is the popover content space, put your ideas here!" data-placement="bottom" data-trigger="hover"><i class="fa fa-chevron-circle-down"></i> On Bottom</button>
                    <button data-toggle="popover" type="button" class="btn btn-success" data-original-title="Popover in left" data-content="This is the popover content space, put your ideas here!" data-placement="left" data-trigger="hover"><i class="fa fa-chevron-circle-left"></i> On Left</button>
                </div>
                <br>

                <h4>Popovers as Tooltips</h4>

                <p>Click <a href="javascript:;" data-toggle="popover" data-content="This is a popover without a title!" data-placement="top">here</a> to see a popover without a title and click <a href="javascript:;" data-toggle="popover" data-original-title="Popover Title" data-content="This is a popover with a title!" data-placement="top">here</a> to see a popover with a title.</p>
            </div>
            <!-- .panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-6 -->

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-fw fa-list"></i>
                List Group
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="list-group">
                    <span class="list-group-item">
                        Default List Group Item
                    </span>
                    <a href="#" class="list-group-item">
                        List Group Item as a Link
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i> List Group Item with Icon
                    </a>
                    <a href="#" class="list-group-item">
                        <i class="fa fa-comment fa-fw"></i> List Group Item with Text
                        <span class="pull-right text-muted small"><em>Lorem ipsum dolor sit amet.</em>
                        </span>
                    </a>
                    {# <a href="#" class="list-group-item">
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
                    </a> #}
                </div>
                <!-- /.list-group -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
{# </div>

<div class="row"> #}
	<div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Pagination
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="pagination pagination-lg">
                            <li class="disabled"><a href="#">«</a></li>
                            <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">»</a></li>
                        </ul>

                        <ul class="pagination">
                            <li class="disabled"><a href="#">«</a></li>
                            <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">»</a></li>
                        </ul>

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

                {# <hr class="wide"> #}

                    <div class="col-lg-6">
                        <h5>Pager</h5>

                        <ul class="pager">
                            <li><a href="#" class="btn btn-primary"><i class="fa fa-fw fa-arrow-circle-left"></i> Older</a></li>
                            <li><a href="#" class="btn btn-primary">Newer <i class="fa fa-fw fa-arrow-circle-right"></i></a></li>
                        </ul>

                        <h5>Aligned Pager</h5>

                        <ul class="pager">
                            <li class="previous"><a href="#" class="btn btn-primary"><i class="fa fa-fw fa-arrow-circle-left"></i> Older</a></li>
                            <li class="next"><a href="#" class="btn btn-primary">Newer <i class="fa fa-fw fa-arrow-circle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}