<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
html {
	margin: 0px;
	height: 100%;
}

body {
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
}

h2 {
	text-align: center;
	margin: 10px 0px;
}

.admin-form {
	/* background-color: rgba(94, 97, 97, 0.5); */
	background-color: #ffffff;
	display: flex;
	flex-direction: column;
	align-items: center;
	position: relative;
	border: 2px solid #2fa8df;
	border-radius: 10px;
	height: 90%;
	width: 800px;
	margin-left: 233px;
}

.input {
	padding: 5px 0px;
	color: black;
}

label {
	width: 150PX;
	display: inline-block;
	font-size: 19px;
}

input {
	text-align: center;
}

.fill-up {
	padding: 12px 40px;
	border: 1px solid #2fa8df;
	border-radius: 5px;
	width: 400px;
}

select {
	width: 400PX;
	height: 40PX;
	border: 1px solid #2fa8df;
	border-radius: 5px;
	text-align: center;
	font-size: 16px;
}

.btn {
	padding: 15px 120px;
	margin-top: 20px;
	margin-left: 155px;
	color: white;
	background-color: #9b59b6;
	border: 1PX solid #3b71ca;
	border-radius: 20px;
	font-size: 20px;
	font-family: Times New Roman;
}
</style>
</head>
<body>
	<jsp:include page="admin-navbar.jsp"></jsp:include>

	<div class="admin-form">
		<form action="flightAdd" method="post">
			<h2>Enter Flight Details</h2>
			<div class="input">
				<label class="label">Flight Number</label> <input type="number"
					placeholder="Enter Flight Number" name="flight-number"
					class="fill-up">
			</div>

			<div class="input">
				<label class="label">Flight Name</label> <input type="text"
					placeholder="Enter Flight Name" name="flight-name" class="fill-up">
			</div>

			<div class="input">
				<label class="label">Source</label> <input type="text"
					placeholder="Enter Source" name="source" class="fill-up">
			</div>

			<div class="input">
				<label class="label"> Destination</label> <input type="text"
					placeholder="Enter Destination" name="destination" class="fill-up">
			</div>

			<div class="input">
				<label class="label">Departure Time</label> <input type="time"
					placeholder="Enter Departure Time" name="departureTime"
					class="fill-up">
			</div>

			<div class="input">
				<label class="label">Arrival Time</label> <input type="time"
					placeholder="Enter Arrival time" name="arrivalTime" class="fill-up">
			</div>

			<div class="input">
				<label class="label">Economy ticket price</label> <input
					type="number" name="economyPrice" class="fill-up"
					placeholder="Economy ticket price">
			</div>

			<div class="input">
				<label class="label">Business ticket price</label> <input
					type="number" name="businessPrice" class="fill-up"
					placeholder="Bussiness ticket price">
			</div>


			<div class="sign-up">
				<button type="submit" class="btn">Submit</button>
			</div>

		</form>
	</div>

</body>
</html>