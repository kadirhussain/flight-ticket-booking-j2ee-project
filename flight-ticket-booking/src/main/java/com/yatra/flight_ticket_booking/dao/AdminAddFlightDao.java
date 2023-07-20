package com.yatra.flight_ticket_booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yatra.flight_ticket_booking.connection.FlightConnection;
import com.yatra.flight_ticket_booking.dto.Admin;
import com.yatra.flight_ticket_booking.dto.AdminAddFlight;

public class AdminAddFlightDao {

	Connection connection = FlightConnection.getFlightConnection();

	/*
	 * add flight
	 */

	public AdminAddFlight addAdminFlight(AdminAddFlight addFlight) {

		String addFlightQuery = "INSERT INTO flightdetails VALUES (?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(addFlightQuery);

			preparedStatement.setInt(1, addFlight.getFlightNumber());
			preparedStatement.setString(2, addFlight.getFlightName());
			preparedStatement.setString(3, addFlight.getFlightSource());
			preparedStatement.setString(4, addFlight.getFlightDestination());
			preparedStatement.setTime(5, addFlight.getDepartureTime());
			preparedStatement.setTime(6, addFlight.getArrivalTime());
			preparedStatement.setDouble(7, addFlight.getEconomyTicketPrice());
			preparedStatement.setDouble(8, addFlight.getBusinessTicketPrice());

			preparedStatement.execute();
			return addFlight;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	/*
	 * getAllFlight
	 */

	public List<AdminAddFlight> getAllFlights() {

		String displayAllFlight = "SELECT * FROM flightdetails";

		List<AdminAddFlight> addFlights = new ArrayList<AdminAddFlight>();
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = connection.prepareStatement(displayAllFlight);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {

				AdminAddFlight addFlight = new AdminAddFlight();

				addFlight.setFlightNumber(resultSet.getInt("flightnumber"));
				addFlight.setFlightName(resultSet.getString("flightname"));
				addFlight.setFlightSource(resultSet.getString("source"));
				addFlight.setFlightDestination(resultSet.getString("destination"));
				addFlight.setDepartureTime(resultSet.getTime("departure"));
				addFlight.setArrivalTime(resultSet.getTime("arrival"));
				addFlight.setEconomyTicketPrice(resultSet.getDouble("economyprice"));
				addFlight.setBusinessTicketPrice(resultSet.getDouble("businessprice"));

				addFlights.add(addFlight);
			}
			return addFlights;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	/*
	 * delete flight
	 */
	public int deleteFlight(int flightNumber) {

		String deleteQuery = "DELETE from flightdetails where flightnumber=?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(deleteQuery);

			preparedStatement.setInt(1, flightNumber);

			return preparedStatement.executeUpdate();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return 0;
	}

	/*
	 * update flight
	 */
	public int updateFlight(AdminAddFlight addFlight) {
		String updateQuery = "UPDATE flightdetails SET flightname=?, source=?, destination=?, departure=?, arrival=?, economyprice=?, businessprice=? WHERE flightnumber=?";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(updateQuery);
			preparedStatement.setString(1, addFlight.getFlightName());
			preparedStatement.setString(2, addFlight.getFlightSource());
			preparedStatement.setString(3, addFlight.getFlightDestination());
			preparedStatement.setTime(4, addFlight.getDepartureTime());
			preparedStatement.setTime(5, addFlight.getArrivalTime());
			preparedStatement.setDouble(6, addFlight.getEconomyTicketPrice());
			preparedStatement.setDouble(7, addFlight.getBusinessTicketPrice());
			preparedStatement.setInt(8, addFlight.getFlightNumber());

			return preparedStatement.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}
		return 0;
	}

	/*
	 * getFlighByNumber
	 */

	public AdminAddFlight getFlightByNumber(int flightnumber) {

		String getFlightQuery = "SELECT * FROM flightdetails WHERE flightnumber=?";

		try {

			PreparedStatement preparedStatement = connection.prepareStatement(getFlightQuery);
			preparedStatement.setInt(1, flightnumber);
			ResultSet resultSet = preparedStatement.executeQuery();

			resultSet.next();

			AdminAddFlight addFlight = new AdminAddFlight();

			addFlight.setFlightNumber(resultSet.getInt("flightnumber"));
			addFlight.setFlightName(resultSet.getString("flightname"));
			addFlight.setFlightSource(resultSet.getString("source"));
			addFlight.setFlightDestination(resultSet.getString("destination"));
			addFlight.setDepartureTime(resultSet.getTime("departure"));
			addFlight.setArrivalTime(resultSet.getTime("arrival"));
			addFlight.setEconomyTicketPrice(resultSet.getDouble("economyprice"));
			addFlight.setBusinessTicketPrice(resultSet.getDouble("businessprice"));

			return addFlight;

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	/*
	 * get FlightBySourceToDestination
	 */

	public List<AdminAddFlight> getFlightBySourceToDestination(String source, String destination) {
		List<AdminAddFlight> addFlights = getAllFlights();
		List<AdminAddFlight> filterFlightDetails = new ArrayList<AdminAddFlight>();

		for (AdminAddFlight adminAddFlight : addFlights) {
			if ((adminAddFlight.getFlightSource().equalsIgnoreCase(source))
					&& (adminAddFlight.getFlightDestination().equalsIgnoreCase(destination))) {
				filterFlightDetails.add(adminAddFlight);
			}
		}
		return filterFlightDetails;
	}
}
