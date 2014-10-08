{% extends '../layouts/layout-1.swig' %}

{% set currentRouteSlug = 'pages-invoice' %}

{% block headEnd %}

{% endblock %}

{% block bodyEnd %}

{% endblock %}

{% block content2 %}
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default separated">
			<div class="panel-heading">
				<div class="row">
					<div class="col-lg-8">
						<h2>Customer Invoice</h2>
					</div>

					<div class="col-lg-4">
						<div class="row">
							<div class="col-md-6">Invoice: #140472</div>
							<div class="col-md-6">Date: 08/10/2014</div>
						</div>
					</div>
				</div>
			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-6 col-print-6">
						<h3>FROM</h3>
						<p class="name">The Develovers</p>
						<address>
							12345 North Main Street<br /> New York, 2233845<br />
							<div class="contact">
								<p><span>Email:</span> email@example.com</p>
								<p><span>Phone:</span> (1800) 765 - 4321<br><span>Fax:</span> (1800) 765 - 4322</p>
							</div>
						</address>
					</div>
					<div class="col-sm-6 col-print-6 text-right">
						<h3>TO</h3>
						<p class="name">Hardware Studio Inc.</p>
						<address>
							28435 East Main Street<br /> New York, 2233845<br />
							<div class="contact">
								<p><span>Email:</span> email@example.com</p>
								<p><span>Phone:</span> (1800) 888 - 4321<br><span>Fax:</span> (1800) 888 - 4322</p>
							</div>
						</address>
					</div>
				</div>

				<table class="table">
					<thead>
						<tr>
							<th>Service</th>
							<th>Description</th>
							<th>Hrs/Qty</th>
							<th>Rate/Price</th>
							<th>Sub Total</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>Article</td>
							<td>Title of your article here</td>
							<td>-</td>
							<td>$200.00</td>
							<td>$200.00</td>
						</tr>

						<tr>
							<td>Template Design</td>
							<td>Details of project here</td>
							<td>10</td>
							<td>$75.00</td>
							<td>$750.00</td>
						</tr>

						<tr>
							<td>Development</td>
							<td>WordPress Blogging theme</td>
							<td>5</td>
							<td>$50.00</td>
							<td>$250.00</td>
						</tr>
					</tbody>
				</table>

				<div class="row">
					<div class="col-lg-8">
						<h3>Notes &amp; Information:</h3>
						<p>Competently brand interactive expertise and interactive solutions. Proactively orchestrate viral innovation vis-a-vis customized leadership.</p>
					</div>
					<div class="col-lg-4">
						<table class="table">
							<tbody>
								<tr>
									<th>Subtotal</th>
									<td>$11.110</td>
								</tr>

								<tr>
									<th>VAT (10%)</th>
									<td>$1.111</td>
								</tr>

								<tr class="invoice-total-cost-row">
									<th>Total</th>
									<td>$12.221</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>

				<hr class="wide">

				<div class="text-right">
					<a href="#" class="btn btn-primary btn-lg raised"><i class="fa fa-print"></i> Print</a>
					<a href="#" class="btn btn-success btn-lg raised">Proceed to Payment <i class="fa fa-hand-o-right"></i></a>
				</div>
			</div>
		</div>
	</div>
</div>
{% endblock %}

