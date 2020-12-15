<%@include file="/WEB-INF/views/headers/header.jspf"%>
	<div class="column">
		<div class="row-sm-4">
			<div class="navbar">
				<a href="/cust-after-login" class="navbar-brand">Air Ticket Reservation</a>
				<img alt="Airplane/Logo"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSu6RxgJnI4vAJEoO-6-96RpyMDJwThynTH8d2emIrbhsDlhyZb&usqp=CAU"
					height="75" width="75">
				<ul class="nav navbar nav navbar-right">
					<li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
					<table>
						<tr>
							<td><li><a href="/cust-after-login" class="menu">Menu</a></li></td>
							<td><li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li></td>
							<td><li><a href="/main-page" class="menu">Logout</a></li></td>
							<td><li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li></td>
						</tr>
					</table>
			</div>
		</div>
		<div class="container">
			<table class="table">
				<b><h2>Air Tickets</h2></b>
				<thead>
					<tr>
						<th>Name</th>
						<th>Source</th>
						<th>Destination</th>
						<th>Type</th>
						<th>No_Of_Stops</th>
						<th>Price</th>
						<th>Action</th>
						<th></th>
					</tr>


				</thead>
				<tbody>

					<c:forEach items="${list}" var="f">
						<tr>
							<td>${f.f_name}</td>
							<td>${f.f_sour}</td>
							<td>${f.f_dest}</td>
							<td>${f.f_type}</td>
							<td>${f.f_stops }</td>
							<td>${f.f_price }</td>
							<!--  -->
							<td><a href="/book-item" class="btn btn-success">Book Ticket</a></td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
			<a href="/sort-item" class="btn btn-warning">Back</a>
		</div>

		<%@include file="/WEB-INF/views/headers/footer.jspf"%>