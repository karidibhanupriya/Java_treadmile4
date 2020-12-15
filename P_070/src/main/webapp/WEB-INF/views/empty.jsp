<%@include file="/WEB-INF/views/headers/header.jspf"%>
<div class="column">
	<div class="row-sm-4">
		<div class="navbar">
			<a href="/cust-after-login" class="navbar-brand">Air Ticket Reservation</a>
			<img alt="truYum/Logo"
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSu6RxgJnI4vAJEoO-6-96RpyMDJwThynTH8d2emIrbhsDlhyZb&usqp=CAU"
				height="75" width="75">
			<ul class="nav navbar nav navbar-right">
				<li><a href="/admin-after-login">Menu</a></li>
		</div>
	</div>
	<div class="row-sm-8">
		<div class="container">
			<h1>Flight Sorting Status</h1>
			<br> <br>
			<h3 class="success">
				Sorry!,, There Are No Such Flights <a href="/sort-item">Click
					here to Sort</a>
			</h3>
			<br> <br> <br> <br> <br>
		</div>



		<%@include file="/WEB-INF/views/headers/footer.jspf"%>