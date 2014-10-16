{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'tables-datatables' %}

{% block headEnd %}
<link href="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
{% endblock %}

{% block bodyEnd %}
<script src="bower_components/jeditable/js/jquery.jeditable.js"></script>
<script src="bower_components/DataTables/media/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.js"></script>

<script>
$(document).ready(function() {
    $('#dataTables-example').dataTable();

    //Search input style
    $('.dataTables_filter input').addClass('form-control').attr('placeholder','Search');
    $('.dataTables_length select').addClass('form-control');

    /* Formating function for row details */
    function fnFormatDetails ( oTable, nTr )
    {
        var aData = oTable.fnGetData( nTr );
        var sOut = '<table class="table">';
        sOut += '<tr><th>Rendering engine:</th><td>'+aData[1]+' '+aData[4]+'</td></tr>';
        sOut += '<tr><th>Link to source:</th><td>Could provide a link here</td></tr>';
        sOut += '<tr><th>Extra info:</th><td>And any further details here (images etc)</td></tr>';
        sOut += '</table>';

        return sOut;
    }

    /*
     * Insert a 'details' column to the table
     */
    var nCloneTh = document.createElement( 'th' );
    var nCloneTd = document.createElement( 'td' );
    // nCloneTd.innerHTML = '<img class="toggle-details" src="images/plus.png" />';
    nCloneTd.innerHTML = '<i class="fa fa-fw fa-plus toggle-row-details-action"></i>';
    nCloneTd.className = "text-center";

    $('#datatable2 thead tr').each( function () {
        this.insertBefore( nCloneTh, this.childNodes[0] );
    } );

    $('#datatable2 tbody tr').each( function () {
        this.insertBefore(  nCloneTd.cloneNode( true ), this.childNodes[0] );
    } );

    /*
     * Initialse DataTables, with no sorting on the 'details' column
     */
    var oTable = $('#datatable2').dataTable( {
        "aoColumnDefs": [
            { "bSortable": false, "aTargets": [ 0 ] }
        ],
        "aaSorting": [[1, 'asc']]
    });

    /* Add event listener for opening and closing details
     * Note that the indicator for showing which row is open is not controlled by DataTables,
     * rather it is done here
     */
    $('#datatable2').delegate('tbody td .toggle-row-details-action','click', function () {
        var nTr = $(this).parents('tr')[0];
        if ( oTable.fnIsOpen(nTr) )
        {
            /* This row is already open - close it */
            // this.src = "images/plus.png";
            $(this)
            .removeClass('fa-minus')
            .addClass('fa-plus');

            oTable.fnClose( nTr );
        }
        else
        {
            /* Open this row */
            // this.src = "images/minus.png";
            $(this)
            .removeClass('fa-plus')
            .addClass('fa-minus');

            oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
        }
    });
    // $('#datatable2').delegate('tbody td img','click', function () {
    //     var nTr = $(this).parents('tr')[0];
    //     if ( oTable.fnIsOpen(nTr) )
    //     {
    //         /* This row is already open - close it */
    //         this.src = "images/plus.png";
    //         oTable.fnClose( nTr );
    //     }
    //     else
    //     {
    //         /* Open this row */
    //         this.src = "images/minus.png";
    //         oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
    //     }
    // });

    $('.dataTables_filter input').addClass('form-control').attr('placeholder','Search');
    $('.dataTables_length select').addClass('form-control');

    /* Init DataTables */
    var aTable = $('#datatable3').dataTable();

    /* Apply the jEditable handlers to the table */
    aTable.$('td').editable( 'js/jquery.datatables/examples/examples_support/editable_ajax.php', {
      "callback": function( sValue, y ) {
          var aPos = aTable.fnGetPosition( this );
          aTable.fnUpdate( sValue, aPos[0], aPos[1] );
      },
      "submitdata": function ( value, settings ) {
          return {
              "row_id": this.parentNode.getAttribute('id'),
              "column": aTable.fnGetPosition( this )[2]
          };
      },
      "height": "14px",
    });
});
</script>
{% endblock %}

{% block content2 %}
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-navy raised">
            <div class="panel-heading">
                Basic DataTable
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                        {% include '../partials/table-rows-2.swig' %}
                    </table>
                </div>
                <!-- /.table-responsive -->
            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-navy raised">
            <div class="panel-heading">
                <i class="fa fa-fw fa-plus"></i>
                Row Details
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="datatable2" >
                        {% include '../partials/table-rows-2.swig' %}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-navy raised">
            <div class="panel-heading">
            <i class="fa fa-fw fa-edit"></i>
                Editable Cells
            </div>
            <!-- /.panel-heading -->
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="datatable3" >
                        {% include '../partials/table-rows-2.swig' %}
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}