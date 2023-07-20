package com.yatra.flight_ticket_booking.service;

import com.yatra.flight_ticket_booking.dao.AdminAddFlightDao;
import com.yatra.flight_ticket_booking.dto.AdminAddFlight;

public class AdminAddFlightService {

	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();

	/*
	 * addFlight
	 */
	public AdminAddFlight addAdminFlight(AdminAddFlight addFlight) {

		return addFlightDao.addAdminFlight(addFlight);

	}

	/*
	 * delete flight
	 */
	public int deleteFlight(int flightNumber) {
		return addFlightDao.deleteFlight(flightNumber);
	}

	/*
	 * update flight
	 */
	public int updateFlight(AdminAddFlight addFlight) {
		return addFlightDao.updateFlight(addFlight);
	}

}
