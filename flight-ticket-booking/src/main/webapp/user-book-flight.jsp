<%@page import="com.yatra.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="com.yatra.flight_ticket_booking.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
	background-size: cover;
	background-repeat: no-repeat;
	height: 100vh;
}

h2 {
	text-align: center;
	font-size: 30px;
}

.admin-form {
	background-color: #ffffff;
	display: flex;
	flex-direction: column;
	align-items: center;
	position: relative;
	border: 2px solid gainsboro;
	border-radius: 10px;
	height: 98vh;
	width: 700px;
	margin-left: 270px;
}

.input {
	padding: 10px;
	color: aliceblue;
}

input {
	text-align: center;
	font-size: 15px;
	font-family: Times New Roman;
}

.fill-up {
	padding: 20px 40px;
	border: 1px solid #9b59b6;
	border-radius: 5px;
	width: 300px;
}

.btn {
	padding: 20px 120px;
	margin: 15px 9px;
	color: white;
	background-color: #9b59b6;
	border: 1PX solid #9b59b6;
	border-radius: 5px;
	font-size: 20px;
	font-family: Times New Roman;
}

select {
	width: 385PX;
	height: 40PX;
	border: 1px solid #9b59b6;
	border-radius: 5px;
	text-align: center;
	font-size: 16px;
}

form .gender-details .gender-title {
	font-size: 20px;
	font-weight: 500;
	display: none;
}

form .gender-details .category {
	/* background-color: red; */
	width: 80%;
	margin: 14px, 0px;
	display: flex;
	justify-content: space-between;
}

.gender-details .category label {
	display: flex;
	align-items: center;
	margin: 10px;
}

.gender-details .category .dot {
	height: 10px;
	width: 10px;
	background-color: #d9d9d9;
	border-radius: 50%;
	margin-right: 10px;
	border: 5px solid transparent;
	transition: all 0.3s ease;
	margin-left: 35px;
}

#dot-1:checked ~.category label .one, #dot-2:checked ~.category label .two,
	#dot-3:checked ~.category label .three {
	border-color: #d9d9d9;
	background-color: #9b59b6;
}

form input[type="radio"] {
	display: none;
}
</style>
</head>
<body>
	<%
	String flightNumber = request.getParameter("flightNumber");

	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();

	AdminAddFlight addFlight = addFlightDao.getFlightByNumber(Integer.parseInt(flightNumber));
	%>
	<div class="admin-form">
		<form action="flightBooking" method="post">

			<input type="number" name="number"
				value="<%=addFlight.getFlightNumber()%>" hidden="true"><br>

			<input type="decimal" placeholder="enter-flight-economy-ticket-price"
				name="price" class="common"
				value="<%=addFlight.getEconomyTicketPrice()%>" hidden="true"><br>

			<!-- passenger details -->
			<h2>Enter Passenger Details</h2>

			<div class="input">
				<input type="text" placeholder="Passenger Name" name="name"
					class="fill-up">
			</div>

			<div class="input">
				<input type="text" placeholder="Email Address" name="email"
					class="fill-up">
			</div>

			<div class="input">
				<input type="number" placeholder="Mobile Number" name="phone"
					class="fill-up">
			</div>

			<div class="input">
				<input type="number" placeholder="Age" name="age" class="fill-up">
			</div>

			<div class="gender-details">
				<input type="radio" name="gender" id="dot-1"> <input
					type="radio" name="gender" id="dot-2"> <input type="radio"
					name="gender" id="dot-3"> <span class="gender-title">Gender</span>
				<div class="category">
					<label for="dot-1""> <span class=" dot one"></span> <span
						class="gender">Male</span>
					</label> <label for="dot-2""> <span class=" dot two"></span> <span
						class="gender">Female</span>
					</label> <label for="dot-3"> <span class="dot three"></span> <span
						class="gender">Other</span>
					</label>
				</div>
			</div>

			<div class="sign-up">
				<button type="submit" class="btn">Book Your Ticket</button>
			</div>
			<input type="submit" value="<%=addFlight.getEconomyTicketPrice()%>"
				hidden="true">
		</form>

	</div>
</body>
</html>