<%@include file="/WEB-INF/views/headers/header.jspf"%>
<div class="column">
	<div class="row-sm-4">
		<div class="navbar">
			<a href="/cust-after-login" class="navbar-brand">Air Ticket Reservation</a>
			<img alt="truYum/Logo"
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
			<h1>Flight Booking Status</h1>
			<br>
			<h3 class="success">Flight Booked successfully.</h3>
			<h4>Your order is booked on :<%= (new java.util.Date()).toLocaleString()%></h4>
			<table>
			<tr>
			<td><h4 class="success">Thankyou</h4></td>
			<td><img src="https://banner2.cleanpng.com/20180330/bcq/kisspng-like-button-computer-icons-clip-art-player-5abdffab7b5153.8637216715224011955051.jpg" height="50" width="50"></td>
			</tr>
			</table>
			<br> <br> <br> <br> <br>
		</div>



		<%@include file="/WEB-INF/views/headers/footer.jspf"%>