<%@include file="/WEB-INF/views/headers/header.jspf"%>
	<div class="column">
			<div class="navbar">
				<a href="/main-page" class="navbar-brand">Air Ticket Reservation</a>
				<img alt="Airplane/Logo"
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSu6RxgJnI4vAJEoO-6-96RpyMDJwThynTH8d2emIrbhsDlhyZb&usqp=CAU"
					height="75" width="75">
				<ul class="nav navbar nav navbar-right">
					<li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li>
					<table>
						<tr>
							<td><li><a href="/main-page" class="menu">Home</a></li></td>
							<td><li><a>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a></li></td>
						</tr>
					</table>
			</div>
			<center>
		<div class="row-sm-8">
			<b><h1>Administrator Login Credentials</h1></b>
			<c:if test="${error>0}">
				<h4 style="color: red">Invalid Credentials...!!!</h4>
			</c:if>
			<form:form modelAttribute="login" action="submitlogin" method="POST" autocomplete="off">
				<table>
					<tr>
						<td><form:label path="userName">UserName:</form:label></td>
						<td><form:input path="userName" id="userName" name="userName"
								required="true" placeholder="UserName"/></td>
					</tr>
					<tr>
						<td><form:label path="password">Password:</form:label></td>
						<td><form:input path="password" id="password" name="password"
								type="password" required="true" placeholder="Password" /></td>
					</tr>
					<tr>
						<td><form:button type="submit" name="submit"
								class="btn btn-success">Login</form:button></td>
						<td><form:button type="reset" class="btn btn-warning">Cancel</form:button></td>
					</tr>
				</table>
			</form:form>
			</div>
			</center>
			<%@include file="/WEB-INF/views/headers/footer.jspf"%>