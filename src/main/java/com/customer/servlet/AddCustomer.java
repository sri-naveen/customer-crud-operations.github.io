package com.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.daoImpl.CustomerDaoImpl;
import com.customer.model.Customer;

@WebServlet("/addCustomer")

public class AddCustomer extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CustomerDaoImpl obj = CustomerDaoImpl.getInstance();

		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String gender = req.getParameter("gender");
		String city = req.getParameter("city");
		String country = req.getParameter("country");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));

		Customer c = new Customer(1, firstName, lastName, gender, city, country, email, phone);

		obj.addCustomer(c);

		RequestDispatcher rd = req.getRequestDispatcher("callHome");

		rd.include(req, resp);
	}

	
	
}
