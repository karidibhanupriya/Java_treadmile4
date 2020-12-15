<%@include file="/WEB-INF/views/headers/header.jspf"%>
	<div class="column">
		<div class="row-sm-4">
			<div class="navbar">
				<a href="/admin-after-login" class="navbar-brand">Air Ticket Reservation</a>
				<img alt="Airplane/Logo"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSu6RxgJnI4vAJEoO-6-96RpyMDJwThynTH8d2emIrbhsDlhyZb&usqp=CAU"
					height="75" width="75">
				<ul class="nav navbar nav navbar-right">
					<li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a>
						<table>
							<tr>
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
						<th>Action(Delete)</th>

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
							<td><a href="/edit-item?itemId=${f.f_id}"
								class="btn btn-warning">Edit</a></td>
							<td><a href="/delete-item?itemId=${f.f_id}"
								class="btn btn-danger">Cancel flight</a></td>

						</tr>
					</c:forEach>
					<tr>
						<td><a href="/add-item" class="btn btn-success">Add
								Flight Details</a>
					</tr>

				</tbody>
			</table>
		</div>
		<%@include file="/WEB-INF/views/headers/footer.jspf"%>