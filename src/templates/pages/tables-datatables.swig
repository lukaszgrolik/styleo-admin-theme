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
$(function() {
  //
  // table1
  //

  $('#table1').dataTable();

  // Add input style
  $('.dataTables_filter input').addClass('form-control').attr('placeholder', 'Search');
  $('.dataTables_length select').addClass('form-control');

  // Formating function for row details
  function tableDetailsFormat(table, row) {
    var aData = table.fnGetData(row);
    var result = '<table class="table">';
    result += '<tr><th>Rendering engine:</th><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
    result += '<tr><th>Link to source:</th><td><a href="http://example.com">example.com</a></td></tr>';
    result += '<tr><th>Details:</th><td>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur tenetur dignissimos odio consequatur sequi odit quos reprehenderit enim quo perferendis, inventore et soluta ullam perspiciatis, architecto natus autem, nobis amet!</td></tr>';
    result += '</table>';

    return result;
  }

  //
  // table2
  //

  // Insert a 'details' column to the table
  var thCopy = document.createElement('th');
  var tdCopy = document.createElement('td');

  tdCopy.innerHTML = '<i class="fa fa-fw fa-plus toggle-row-details-action"></i>';
  tdCopy.className = 'text-center';

  $('#table2 thead tr').each(function () {
    this.insertBefore(thCopy, this.childNodes[0]);
  });

  $('#table2 tbody tr').each(function () {
    this.insertBefore(tdCopy.cloneNode(true), this.childNodes[0]);
  });

  var table2 = $('#table2').dataTable({
    aoColumnDefs: [
      {
        bSortable: false,
        aTargets: [0]
      }
    ],
    aaSorting: [
      [1, 'asc']
    ]
  });

  // Add event listener for opening and closing details
  $('#table2').delegate('tbody td .toggle-row-details-action','click', function() {
    var row = $(this).parents('tr')[0];

    if (table2.fnIsOpen(row)) {
      $(this)
      .removeClass('fa-minus')
      .addClass('fa-plus');

      table2.fnClose(row);
    } else {
      $(this)
      .removeClass('fa-plus')
      .addClass('fa-minus');

      table2.fnOpen(row, tableDetailsFormat(table2, row), 'details');
    }
  });

  $('.dataTables_filter input').addClass('form-control').attr('placeholder','Search');
  $('.dataTables_length select').addClass('form-control');

  //
  // table3
  //

  var table3 = $('#table3').dataTable();

  // Apply jEditable handlers to the table
  // First argument is the URL of server-side processing script
  table3.$('td').editable('#', {
    callback: function(value) {
      var pos = table3.fnGetPosition(this);

      table3.fnUpdate(value, pos[0], pos[1]);
    },
    submitdata: function() {
      return {
        row_id: this.parentNode.getAttribute('id'),
        column: table3.fnGetPosition(this)[2]
      };
    },
    height: '14px',
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
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover" id="table1">
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
        <i class="fa fa-fw fa-plus"></i>
        Row Details
      </div>
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-bordered" id="table2" >
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
      <div class="panel-body">
        <div class="table-responsive">
          <table class="table table-bordered" id="table3" >
            {% include '../partials/table-rows-2.swig' %}
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
{% endblock %}