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
		</div>
	</div>
	<div class="row-sm-8">
		<div class="container">
			<table class="table">
				<form:form method="post" modelAttribute="list" autocomplete="off">
					<table class="table">
						<fieldset class="form-group">
							<tr>
								<td><form:label path="f_name">Name</form:label></td>
							</tr>
							<tr>
								<td><form:input path="f_name" type="text" /></td>
							</tr>
							<tr>
									<td><form:label path="f_sour">Source</form:label></td>
								<td><form:label path="f_dest">Destination</form:label></td>
								<td><form:label path="f_type">Class Type</form:label></td>
								<td><form:label path="f_stops">No Of Stops</form:label></td>
								<td><form:label path="f_price">Price</form:label></td>
							</tr>
							<tr>
								<td><form:input path="f_sour"  type="text" /></td>
								<td><form:input path="f_dest" type="text" /></td>
								<td><form:input path="f_type" type="text" /></td>
								<td><form:input path="f_stops" type="text" /></td>
								<td><form:input path="f_price" type="text" /></td>

							</tr>

						</fieldset>
						<tr>
							<td><form:button type="submit" class="btn btn-success">Save</form:button></td>
						</tr>
					</table>
				</form:form>
				<%@include file="/WEB-INF/views/headers/footer.jspf"%>