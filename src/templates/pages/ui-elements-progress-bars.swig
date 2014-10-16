{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'ui-elements-progress-bars' %}

{% block content2 %}
<div class="row">
    <div class="col-lg-4">
        <div class="panel panel-success raised">
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
                <div class="progress">
                    <div class="progress-bar progress-bar-yellow" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-violet" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-brown" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-navy" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span class="sr-only">
                            100% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="panel panel-info raised">
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
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-yellow" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-violet" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-brown" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-navy" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span class="sr-only">
                            100% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-4">
        <div class="panel panel-warning raised">
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
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-yellow" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-violet" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-brown" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                        <span class="sr-only">
                            80% Complete
                        </span>
                    </div>
                </div>
                <div class="progress progress-striped active">
                    <div class="progress-bar progress-bar-navy" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span class="sr-only">
                            100% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-danger raised">
            <div class="panel-heading">
                Stacked Progress Bars
            </div>
            <div class="panel-body">
                <div class="progress">
                    <div class="progress-bar" style="width: 5%">
                        <span class="sr-only">
                            5% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-success" style="width: 10%">
                        <span class="sr-only">
                            10% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-info progress-bar" style="width: 15%">
                        <span class="sr-only">
                            15% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-warning" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-danger" style="width: 25%">
                        <span class="sr-only">
                            10% Complete
                        </span>
                    </div>
                </div>

                <div class="progress progress-striped active">
                    <div class="progress-bar" style="width: 5%">
                        <span class="sr-only">
                            5% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-success" style="width: 10%">
                        <span class="sr-only">
                            10% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-info progress-bar" style="width: 15%">
                        <span class="sr-only">
                            15% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-warning" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-danger" style="width: 25%">
                        <span class="sr-only">
                            10% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-violet raised">
            <div class="panel-heading">
                Sharp Progress Bars
            </div>
            <div class="panel-body">
                <div class="progress sharp">
                    <div class="progress-bar" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                </div>

                <div class="progress sharp">
                    <div class="progress-bar progress-bar-info" style="width: 50%">
                        <span class="sr-only">
                            50% Complete
                        </span>
                    </div>
                </div>

                <div class="progress progress-striped active sharp">
                    <div class="progress-bar" style="width: 5%">
                        <span class="sr-only">
                            5% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-success" style="width: 10%">
                        <span class="sr-only">
                            10% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-info progress-bar" style="width: 15%">
                        <span class="sr-only">
                            15% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-warning" style="width: 20%">
                        <span class="sr-only">
                            20% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-danger" style="width: 25%">
                        <span class="sr-only">
                            10% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-brown raised">
            <div class="panel-heading">
                Progress Bars Sizes
            </div>
            <div class="panel-body">
                <p>Extra Small Size</p>

                <div class="progress progress-xs sharp">
                    <div class="progress-bar" style="width: 40%">
                        <span class="sr-only">
                            40% Complete
                        </span>
                    </div>
                </div>

                <p>Small Size</p>

                <div class="progress progress-sm">
                    <div class="progress-bar progress-bar-success" style="width: 60%">
                        <span class="sr-only">
                            60% Complete
                        </span>
                    </div>
                </div>

                <p>Default Size</p>

                <div class="progress progress-striped sharp">
                    <div class="progress-bar progress-bar-warning" style="width: 85%">
                        <span class="sr-only">
                            85% Complete
                        </span>
                    </div>
                </div>

                <p>Large Size</p>

                <div class="progress progress-lg">
                    <div class="progress-bar progress-bar-danger" style="width: 35%">
                        <span class="sr-only">
                            35% Complete
                        </span>
                    </div>
                </div>

                <p>Extra Large Size</p>

                <div class="progress progress-xl progress-striped active sharp">
                    <div class="progress-bar" style="width: 25%">
                        <span class="sr-only">
                            25% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-success" style="width: 15%">
                        <span class="sr-only">
                            15% Complete
                        </span>
                    </div>
                    <div class="progress-bar progress-bar-info" style="width: 30%">
                        <span class="sr-only">
                            30% Complete
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}


