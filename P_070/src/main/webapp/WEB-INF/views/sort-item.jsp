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
	<div class="row-sm-8">
		<div class="container">
			<form action="/sort-item-status" autocomplete="off">

				<table class="table">
					<tr>
						<td><b>Sort Based on </b></td>
					<tr>
						<td>Source</td>
						<td>Destination</td>
						<td>Type</td>
					</tr>
					<tr>
						<td><input type="text" name="sour" required="true"></td>
						<td><input type="text" name="dest" required="true"></td>
						<td><input type="text" name="type" required="true"></td>
					</tr>
					<td><input type="submit" class="btn btn-success"
						value="Search" /></td>
					</form>

				</table>

				<%@include file="/WEB-INF/views/headers/footer.jspf"%>