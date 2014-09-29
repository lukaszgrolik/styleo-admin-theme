{% extends '../layouts/layout-1.swig' %}

{% block title %}Notifications{% endblock %}

{% block breadcrumbs %}
<li><a href="#">UI Elements</a></li>
<li><a href="#">Notifications</a></li>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Modals
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <!-- Button trigger modal -->
                <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                    Launch Default Modal
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
                <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModalSharp">
                    Launch Sharp Modal
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
    <!-- /.col-lg-6 -->

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Tooltips and Popovers
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <h4>Tooltip Demo</h4>
                <div class="tooltip-demo">
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left">Tooltip on left</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">Tooltip on top</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">Tooltip on bottom</button>
                    <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">Tooltip on right</button>
                </div>
                <br>
                <h4>Clickable Popover Demo</h4>
                <div class="tooltip-demo">
                    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        Popover on left
                    </button>
                    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        Popover on top
                    </button>
                    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        Popover on bottom
                    </button>
                    <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
                        Popover on right
                    </button>
                </div>
                <h4>Hoverable Popover With Title</h4>
                <p>This is just an example of popover use in a paragrhap content without a title writen by <a href="javascript:;" data-toggle="popover" data-content="This is a popover without a title!" data-placement="top">Author</a>, and there is another example with a title <a href="javascript:;" data-toggle="popover" data-original-title="Popover Title" data-content="This is a popover with a title!" data-placement="top">Tooltip</a> options.</p>
                <div class="spacer2 text-center">
                    <button data-toggle="popover" type="button" class="btn btn-primary" data-original-title="Popover in top" data-content="This is the popover content space, put your ideas here!" data-placement="top" data-trigger="hover"><i class="fa fa-chevron-circle-up"></i> On Top</button>
                    <button data-toggle="popover" type="button" class="btn btn-primary" data-original-title="Popover in left" data-content="This is the popover content space, put your ideas here!" data-placement="left" data-trigger="hover"><i class="fa fa-chevron-circle-left"></i> On Left</button>
                    <button data-toggle="popover" type="button" class="btn btn-primary" data-original-title="Popover in right" data-content="This is the popover content space, put your ideas here!" data-placement="right" data-trigger="hover"><i class="fa fa-chevron-circle-right"></i> On Right</button>
                    <button data-toggle="popover" type="button" class="btn btn-primary" data-original-title="Popover in bottom" data-content="This is the popover content space, put your ideas here!" data-placement="bottom" data-trigger="hover"><i class="fa fa-chevron-circle-down"></i> On Bottom</button>
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

{% block bodyEnd %}
<script>
// tooltip demo
$('.tooltip-demo').tooltip({
    selector: "[data-toggle=tooltip]",
    container: "body"
})

// popover demo
$("[data-toggle=popover]")
    .popover()
</script>
{% endblock %}