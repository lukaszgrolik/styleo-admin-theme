{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'tables-simple-responsive-tables' %}

{% macro tableContent1() %}
<thead>
    <tr>
        <th>#</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Username</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>1</td>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
    </tr>
    <tr>
        <td>2</td>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Larry</td>
        <td>the Bird</td>
        <td>@twitter</td>
    </tr>
</tbody>
{% endmacro %}

{% block headEnd %}
{% endblock %}

{% block bodyEnd %}
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Default Table with Hover
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-hover">
                        {{tableContent1()}}
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Condensed Table
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-condensed table-hover">
                        {{tableContent1()}}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Bordered Table
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered">
                        {{tableContent1()}}
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Bordered &amp; Striped Table
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-hover table-bordered table-striped">
                        {{tableContent1()}}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Contextual Rows
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="success">
                                <td>1</td>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                            </tr>
                            <tr class="info">
                                <td>2</td>
                                <td>Jacob</td>
                                <td>Thornton</td>
                                <td>@fat</td>
                            </tr>
                            <tr class="warning">
                                <td>3</td>
                                <td>Larry</td>
                                <td>the Bird</td>
                                <td>@twitter</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-6">
        <div class="panel panel-default">
            <div class="panel-heading">
                Contextual Cells
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Username</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td class="danger">Mark</td>
                                <td class="brown">Otto</td>
                                <td class="primary">@mdo</td>
                            </tr>
                            <tr>
                                <td class="violet">2</td>
                                <td>Jacob</td>
                                <td class="info">Thornton</td>
                                <td class="navy">@fat</td>
                            </tr>
                            <tr>
                                <td class="success">3</td>
                                <td class="yellow">Larry</td>
                                <td>the Bird</td>
                                <td class="warning">@twitter</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Responsive Table (Horizontal Scrollbar)
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-hover table-responsive">
                        {% include '../partials/table-rows-1.swig' %}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}