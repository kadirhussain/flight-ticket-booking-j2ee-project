package com.yatra.flight_ticket_booking.controller;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yatra.flight_ticket_booking.dto.AdminAddFlight;
import com.yatra.flight_ticket_booking.service.AdminAddFlightService;

@SuppressWarnings("serial")
@WebServlet("/flightAdd")
public class AdminAddFlightsController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminAddFlight addFlight = new AdminAddFlight();

		AdminAddFlightService addFlightService = new AdminAddFlightService();

		int flightNumber = Integer.parseInt(req.getParameter("flight-number"));
		String flightName = req.getParameter("flight-name");
		String flightSource = req.getParameter("source");
		String flightDestination = req.getParameter("destination");
		String departureTime = req.getParameter("departureTime");
		String arrivalTime = req.getParameter("arrivalTime");
		double economyTicketPrice = Double.parseDouble(req.getParameter("economyPrice"));
		double businessTicketPrice = Double.parseDouble(req.getParameter("businessPrice"));

		DateFormat formatter = new SimpleDateFormat("HH:mm");
		java.sql.Time dtime = null;
		java.sql.Time atime = null;
		try {
			dtime = new java.sql.Time(formatter.parse(departureTime).getTime());
			atime = new java.sql.Time(formatter.parse(arrivalTime).getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}

		addFlight.setFlightNumber(flightNumber);
		addFlight.setFlightName(flightName);
		addFlight.setFlightSource(flightSource);
		addFlight.setFlightDestination(flightDestination);
		addFlight.setDepartureTime(dtime);
		addFlight.setArrivalTime(atime);
		addFlight.setEconomyTicketPrice(economyTicketPrice);
		addFlight.setBusinessTicketPrice(businessTicketPrice);

		addFlightService.addAdminFlight(addFlight);

	}

}
