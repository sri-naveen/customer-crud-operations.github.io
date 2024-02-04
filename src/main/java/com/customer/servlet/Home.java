package com.customer.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.customer.daoImpl.CustomerDaoImpl;
import com.customer.model.Customer;

@WebServlet("/callHome")

public class Home extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CustomerDaoImpl obj = CustomerDaoImpl.getInstance();
		
		List<Customer> customerList = obj.getAllCustomers();
		
		request.setAttribute("customers", customerList);
		
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		
		rd.include(request, response);
	
	}

	

}
