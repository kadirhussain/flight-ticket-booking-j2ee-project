<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background: rgb(2, 0, 36);
	background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%,
		rgba(0, 212, 255, 1) 100%);
	background-size: cover;
	background-repeat: no-repeat
}

h2 {
	text-align: center;
	font-size: 30px;
	margin: 25px 0px;
}

.admin-form {
	/* background-color: rgba(94, 97, 97, 0.5); */
	background-color: #ffffff;
	display: flex;
	flex-direction: column;
	align-items: center;
	position: relative;
	border: 2px solid gainsboro;
	border-radius: 10px;
	height: 85vh;
	width: 700px;
	margin-left: 270px;
	margin-top: 25px;
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
	padding: 15px 40px;
	border: 1px solid #2fa8df;
	border-radius: 5px;
	width: 450px;
	margin: 10px;
}

.btn {
	padding: 15px 170px;
	margin: 10px 20px;
	color: white;
	background-color: #3b71ca;
	border: 1PX solid #3b71ca;
	border-radius: 5px;
	font-size: 20px;
	font-family: Times New Roman;
}
</style>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="admin-form">
		<form action="userSearch" method="get">
			<h2>Book a flight</h2>
			<div class="input">
				<input type="text" placeholder="Departure airport" name="source"
					class="fill-up">
			</div>

			<div class="input">
				<input type="text" placeholder="Arrival airport" name="destination"
					class="fill-up">
			</div>

			<div class="input">
				<input type="date" placeholder="Journey date" name="date"
					class="fill-up" value="<%=LocalDate.now().plusDays(1)%>">
			</div>

			<div class="sign-up">
				<button type="submit" class="btn">Search flights</button>
			</div>

		</form>
	</div>
</body>
</html>