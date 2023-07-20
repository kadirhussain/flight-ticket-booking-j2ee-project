<%@page import="com.yatra.flight_ticket_booking.dto.AdminAddFlight"%>
<%@page import="java.util.List"%>
<%@page import="com.yatra.flight_ticket_booking.dao.AdminAddFlightDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap"
	rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	margin: 0px;
	padding: 0px;
	/* outline: 0px; */
	box-sizing: border-box;
}

/* tr:hover{
            background-color: #eeeeee;
        }  */
.img {
	border: 2px solid gray;
	border-radius: 50%;
	height: 60px;
	width: 60px;
}

.filter {
	position: absolute;
	right: 0px;
	left: 0px;
	top: 0px;
	bottom: 0px;
	z-index: 1;
	opacity: .7;
	background: rgb(2, 0, 36);
	background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%,
		rgba(0, 212, 255, 1) 100%);
}

table {
	position: absolute;
	z-index: 2;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	width: 60%;
	border-collapse: collapse;
	border-spacing: 0px;
	border-radius: 12px 12px 0 0;
	overflow: hidden;
	box-shadow: 0 5px 12px rgba(32, 32, 32, .3);
	background: #fafafa;
	text-align: center;
}

td {
	padding: 3px 15px;
}

th {
	padding: 10px 15px;
	background: #01749d;
	color: #fafafa;
	text-transform: uppercase;
	font-family: 'Roboto', 'sans-serif';
}

td {
	font-family: 'Open sans, ' sans-serif;
	font-size: 17px;
}

tr:nth-child(odd) {
	background-color: #eeeeee;
}

.heading {
	background-color: #024066;
	color: white;
	font-size: 20px;
}

.update {
	text-decoration: none;
	color: white;
	border: 2px solid white;
	background-color: #01749d;
	padding: 10px 15px;
	border-radius: 8px;
}

.delete {
	text-decoration: none;
	color: white;
	border: 2px solid white;
	background-color: #d71921;
	padding: 10px 15px;
	border-radius: 8px;
}
</style>
</head>
<body>
	<%
	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();

	List<AdminAddFlight> addFlights = addFlightDao.getAllFlights();
	%>
	<jsp:include page="navbar.jsp"></jsp:include>
	<div class="filter"></div>
	<div class="table-box">
		<table>
			<tr>
				<th colspan="11" class="heading">Flight Details</th>
			</tr>
			<tr class="table-row">
				<th>Image</th>
				<th>Flight Number</th>
				<th>Flight Name</th>
				<th>Source</th>
				<th>Destination</th>
				<th>Departure</th>
				<th>Arrival</th>
				<th>Economy Price</th>
				<th>Business Price</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
			for (AdminAddFlight addFlight : addFlights) {
			%>
			<%
			if (addFlight.getFlightName().equalsIgnoreCase("indigo")) {
			%>
			<tr class="table-row">
				<td><img
					src="https://paytm-travel-mum-akamai.paytm.com/travel_db/flights/airlines+logo/6E.png"
					alt="indigo" class="img"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getDepartureTime()%></td>
				<td><%=addFlight.getArrivalTime()%></td>
				<td><%=addFlight.getEconomyTicketPrice()%></td>
				<td><%=addFlight.getBusinessTicketPrice()%></td>
				<td><a
					href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="update">Update</a></td>
				<td><a
					href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="delete">Delete</a></td>
			</tr>

			<%
			}
			%>

			<%
			if (addFlight.getFlightName().equalsIgnoreCase("Air Asia")) {
			%>
			<tr class="table-row">
				<td><img
					src="https://paytm-travel-mum-akamai.paytm.com/travel_db/flights/airlines+logo/I5.png"
					alt="Air Asia" class="img"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getDepartureTime()%></td>
				<td><%=addFlight.getArrivalTime()%></td>
				<td><%=addFlight.getEconomyTicketPrice()%></td>
				<td><%=addFlight.getBusinessTicketPrice()%></td>
				<td><a
					href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="update">Update</a></td>
				<td><a
					href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="delete">Delete</a></td>
			</tr>

			<%
			}
			%>
			<%
			if (addFlight.getFlightName().equalsIgnoreCase("Air India")) {
			%>
			<tr class="table-row">
				<td><img
					src="https://paytm-travel-mum-akamai.paytm.com/travel_db/flights/airlines+logo/AI.png"
					alt="Air India" class="img"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getDepartureTime()%></td>
				<td><%=addFlight.getArrivalTime()%></td>
				<td><%=addFlight.getEconomyTicketPrice()%></td>
				<td><%=addFlight.getBusinessTicketPrice()%></td>
				<td><a
					href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="update">Update</a></td>
				<td><a
					href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="delete">Delete</a></td>
			</tr>

			<%
			}
			%>

			<%
			if (addFlight.getFlightName().equalsIgnoreCase("Spice Jet")) {
			%>
			<tr class="table-row">
				<td><img
					src="https://paytm-travel-mum-akamai.paytm.com/travel_db/flights/airlines+logo/SG.png"
					alt="Spice Jet" class="img"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getDepartureTime()%></td>
				<td><%=addFlight.getArrivalTime()%></td>
				<td><%=addFlight.getEconomyTicketPrice()%></td>
				<td><%=addFlight.getBusinessTicketPrice()%></td>
				<td><a
					href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="update">Update</a></td>
				<td><a
					href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="delete">Delete</a></td>
			</tr>

			<%
			}
			%>

			<%
			if (addFlight.getFlightName().equalsIgnoreCase("Akasa Air")) {
			%>
			<tr class="table-row">
				<td><img
					src="https://paytm-travel-mum-akamai.paytm.com/travel_db/flights/airlines+logo/QP.png"
					alt="Akasa Air" class="img"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getDepartureTime()%></td>
				<td><%=addFlight.getArrivalTime()%></td>
				<td><%=addFlight.getEconomyTicketPrice()%></td>
				<td><%=addFlight.getBusinessTicketPrice()%></td>
				<td><a
					href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="update">Update</a></td>
				<td><a
					href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="delete">Delete</a></td>
			</tr>

			<%
			}
			%>

			<%
			if (addFlight.getFlightName().equalsIgnoreCase("Vistara")) {
			%>
			<tr class="table-row">
				<td><img
					src="https://paytm-travel-mum-akamai.paytm.com/travel_db/flights/airlines+logo/UK.png"
					alt="Akasa Air" class="img"></td>
				<td><%=addFlight.getFlightNumber()%></td>
				<td><%=addFlight.getFlightName()%></td>
				<td><%=addFlight.getFlightSource()%></td>
				<td><%=addFlight.getFlightDestination()%></td>
				<td><%=addFlight.getDepartureTime()%></td>
				<td><%=addFlight.getArrivalTime()%></td>
				<td><%=addFlight.getEconomyTicketPrice()%></td>
				<td><%=addFlight.getBusinessTicketPrice()%></td>
				<td><a
					href="admin-edit.jsp?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="update">Update</a></td>
				<td><a
					href="deleteFlight?flightNumber=<%=addFlight.getFlightNumber()%>"
					class="delete">Delete</a></td>
			</tr>

			<%
			}
			%>

			<%
			}
			%>

		</table>

	</div>
</body>
</html>