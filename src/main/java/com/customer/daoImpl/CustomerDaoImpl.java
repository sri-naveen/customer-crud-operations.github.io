package com.customer.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.customer.dao.CustomerDao;
import com.customer.model.Customer;

public class CustomerDaoImpl implements CustomerDao {

	private static Connection connection;
	private static Statement statement;
	private static PreparedStatement prepareStatement;
	private static ResultSet res;

	private static final String INSERT_QUERY = "INSERT into `customer`(`first_name`,`last_name`,`gender`,`city`,`country`,`email`,`phone`) VALUES(?,?,?,?,?,?,?)";
	private static final String DELETE_QUERY = "DELETE from `customer` WHERE `id` = ?";
	private static final String UPDATE_QUERY = "UPDATE `customer` SET `first_name` = ?, `last_name` = ?, `gender` = ?, `city` = ?, `country` = ?, `email` = ?, `phone` = ? WHERE `id`=?";
	private static final String SELECT_QUERY = "SELECT * from `customer` WHERE `id` = ?";
	private static final String SELECT_ALL_QUERY = "SELECT * from `customer`";

	public CustomerDaoImpl() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");

			String url = "jdbc:mysql://localhost:3306/project";
			String username = "root";
			String password = "root";

			connection = DriverManager.getConnection(url, username, password);

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static CustomerDaoImpl getInstance() {
		return CustomerDaoHolder.INSTANCE;
	}
	
	private static class CustomerDaoHolder {
        private static final CustomerDaoImpl INSTANCE = new CustomerDaoImpl();
    }

	@Override
	public int addCustomer(Customer c) {

		try {

			prepareStatement = connection.prepareStatement(INSERT_QUERY);

			prepareStatement.setString(1, c.getFirstName());
			prepareStatement.setString(2, c.getLastName());
			prepareStatement.setString(3, c.getGender());
			prepareStatement.setString(4, c.getCity());
			prepareStatement.setString(5, c.getCountry());
			prepareStatement.setString(6, c.getEmail());
			prepareStatement.setLong(7, c.getPhone());

			return prepareStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public int deleteCustomer(int id) {

		try {

			prepareStatement = connection.prepareStatement(DELETE_QUERY);

			prepareStatement.setInt(1, id);

			return prepareStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;
	}

	@Override
	public int deleteCustomer(Customer c) {

		return deleteCustomer(c.getId());

	}

	@Override
	public int updateCustomer(Customer c) {

		try {

			prepareStatement = connection.prepareStatement(UPDATE_QUERY);

			prepareStatement.setString(1, c.getFirstName());
			prepareStatement.setString(2, c.getLastName());
			prepareStatement.setString(3, c.getGender());
			prepareStatement.setString(4, c.getCity());
			prepareStatement.setString(5, c.getCountry());
			prepareStatement.setString(6, c.getEmail());
			prepareStatement.setLong(7, c.getPhone());
			prepareStatement.setInt(8, c.getId());

			return prepareStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return 0;

	}

	@Override
	public Customer getCustomer(int id) {

		try {

			prepareStatement = connection.prepareStatement(SELECT_QUERY);

			prepareStatement.setInt(1, id);

			res = prepareStatement.executeQuery();

			if (res.next()) {
				
				int id1 = res.getInt("id");
				String firstName = res.getString("first_name");
				String lastName = res.getString("last_name");
				String gender = res.getString("gender");
				String city = res.getString("city");
				String country = res.getString("country");
				String email = res.getString("email");
				long phone = res.getLong("phone");

				return new Customer(id1, firstName, lastName, gender, city, country, email, phone);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;

	}

	@Override
	public List<Customer> getAllCustomers() {

		List<Customer> customers = new ArrayList<Customer>();

		try {

			statement = connection.createStatement();

			res = statement.executeQuery(SELECT_ALL_QUERY);

			while (res.next()) {
				
				int id1 = res.getInt("id");
				String firstName = res.getString("first_name");
				String lastName = res.getString("last_name");
				String gender = res.getString("gender");
				String city = res.getString("city");
				String country = res.getString("country");
				String email = res.getString("email");
				long phone = res.getLong("phone");

				Customer c = new Customer(id1, firstName, lastName, gender, city, country, email, phone);

				customers.add(c);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customers;

	}
}
