{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-invoice' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}

{% endblock %}

{% block content2 %}
{# <div class="row"> #}
	{# <div class="col-lg-12"> #}
		<div class="well">
			<!-- INVOICE -->
<div class="invoice">
	<!-- invoice header -->
	<div class="invoice-header">
		<div class="row">
			<div class="col-md-3 col-print-3">
				<img src="assets/img/queenadmin-logo.png" class="logo" alt="QueenAdmin Logo" />
			</div>
			<div class="col-md-9 col-print-9" >
				<ul class="list-inline">
					<li>Invoice #: <strong>15240776</strong></li>
					<li>Invoice Date: <strong>Nov 22, 2013</strong></li>
					<li>Total Amount: <strong>$12,221</strong></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- end invoice header -->

	<!-- invoice address -->
	<div class="invoice-from-to">
		<div class="row">
			<div class="col-sm-6 col-print-6">
				<span>FROM</span>
				<p class="name">The Develovers</p>
				<address>
					12345 North Main Street<br /> New York, 2233845<br />
					<div class="contact">
						<p><span>Email:</span> email@example.com</p>
						<p><span>Phone:</span> (1800) 765 - 4321</p>
						<p><span>Fax:</span> (1800) 765 - 4322</p>
						</div>
				</address>
			</div>
			<div class="col-sm-6 col-print-6">
				<span>TO</span>
				<p class="name">Hardware Studio Inc.</p>
				<address>
					28435 East Main Street<br /> New York, 2233845<br />
					<div class="contact">
						<p><span>Email:</span> email@example.com</p>
						<p><span>Phone:</span> (1800) 888 - 4321</p>
						<p><span>Fax:</span> (1800) 888 - 4322</p>
						</div>
				</address>
			</div>
		</div>
	</div>
	<!-- end invoice address -->

	<!-- invoice item table -->
	<div class="table-responsive">
		<table class="table invoice-table">
			<thead>
				<tr>
					<th>#</th>
					<th>Item Name</th>
					<th>Quantity</th>
					<th>Unit Price</th>
					<th>Total</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>LED Monitor 23"</td>
					<td>4</td>
					<td>$250</td>
					<td>$10,000</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Wireless Keyboard</td>
					<td>8</td>
					<td>$80</td>
					<td>$640</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Wireless Mouse</td>
					<td>8</td>
					<td>$40</td>
					<td>$320</td>
				</tr>
				<tr>
					<td>4</td>
					<td>UPS</td>
					<td>1</td>
					<td>$150</td>
					<td>$150</td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- end invoice item table -->

	<!-- invoice footer -->
	<div class="invoice-footer">
		<div class="row">
			<div class="col-sm-5 col-sm-offset-1 col-print-4 col-print-offset-2 right-col">
				<div class="invoice-total">
					<div class="row">
						<div class="col-xs-4 col-xs-offset-4 col-print-6 col-print-offset-2">
							<p>Subtotal</p>
							<p>VAT (10%)</p>
							<p>Total</p>
						</div>
						<div class="col-xs-4 text-right col-print-4">
							<p>$11,110</p>
							<p>$1,111</p>
							<p>$12,221</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-print-6 left-col">
				<blockquote class="invoice-notes">
					<strong>Notes:</strong>
					<p>Competently brand interactive expertise and interactive solutions. Proactively orchestrate viral innovation vis-a-vis customized leadership.</p>
				</blockquote>
			</div>
		</div>
	</div>
	<!-- end invoice footer -->

	<!-- invoice action buttons -->
	<div class="invoice-buttons">
		<button class="btn btn-default print-btn"><i class="icon ion-printer"></i> Print</button>
		<a href="#" class="btn btn-success"><i class="icon ion-ios7-arrow-forward"></i> Proceed to Payment</a>
	</div>
	<!-- end invoice action buttons -->
</div>
<!-- END INVOICE -->
		</div>
	{# </div> #}
{# </div> #}
{% endblock %}

