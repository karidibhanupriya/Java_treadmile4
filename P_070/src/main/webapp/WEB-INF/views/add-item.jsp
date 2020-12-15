<%@include file="/WEB-INF/views/headers/header.jspf"%>

	<div class="column">
		<div class="row-sm-4">
			<div class="navbar">
				<a href="/admin-after-login" class="navbar-brand">Air Ticket Reservation</a>
				<img alt="truYum/Logo"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSu6RxgJnI4vAJEoO-6-96RpyMDJwThynTH8d2emIrbhsDlhyZb&usqp=CAU"
					height="75" width="75">
				<ul class="nav navbar nav navbar-right">
					<li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
					<table>
						<tr>
							<td><li><a href="/admin-after-login" class="menu">Menu</a></li></td>
							<td><li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li></td>
							<td><li><a href="/main-page" class="menu">Logout</a></li></td>
							<td><li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li></td>
						</tr>
					</table>
			</ul>
			</div>
			</div>
		</div>
		<div class="row-sm-8">
			<div class="container">
				<form action="/add-item-status" autocomplete="off">

					<table class="table">
						<tr>
							<td>Name</td>
							<td>Source</td>
							<td>Destination</td>
						</tr>
						<tr>
							<td><input type="text" name="name" required="true" placeholder="Name"></td>
							<td><input type="text" name="sour" required="true" placeholder="Source"></td>
							<td><input type="text" name="dest" required="true" placeholder="Destination"></td>
						</tr>

						<tr>
							<td>Type</td>
							<td>No_Of_Stops</td>
							<td>Price</td>
						</tr>
						<tr>
							<td><input type="text" name="type" required="true" placeholder="Type"></td>
							<td><input type="text" name="stops" required="true" placeholder="No.of Stops"></td>
							<td><input type="text" name="price" required="true" placeholder="Price"></td>
						</tr>
						<td><input type="submit" value="Add Flight"
							class="btn btn-success" /></td>
						</form>

					</table>

		<%@include file="/WEB-INF/views/headers/footer.jspf"%>