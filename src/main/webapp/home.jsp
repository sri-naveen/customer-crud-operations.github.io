<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.util.List, com.customer.model.Customer"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<title>Customer Data</title>
		<link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
		<style>
			body {
				font-family: 'Montserrat', sans-serif;
				background-color: #f4f4f4;
				margin: 0;
				padding: 0;
			}
			
			header {
				text-align: center;
				font-size: 45px;
				background-color: #333;
				color: #fff;
				padding: 15px;
				margin-bottom: 20px;
			}
			
			.container {
				display: flex;
				align-items: center;
				justify-content: center;
				background-color: #fff;
				padding: 10px;
				box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
				margin-bottom: 20px;
			}
			
			.add-customer-button {
				margin-right: 10px;
				padding: 8px;
                border-radius: 6px;
                font-family: 'Montserrat', sans-serif;
			}
			
			.add-customer-button {
				cursor: pointer;
			}
			
			table {
				width: 90%;
				border-collapse: collapse;
				background-color: #fff;
				box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
				margin: auto;
			}
			
			th, td {
				border: 1px solid #ddd;
				padding: 12px;
				text-align: left;
			}
			
			th {
				background-color: #f2f2f2;
			}
			
			.edit-button, .delete-button, .add-customer-button{
				padding: 8px 12px;
				margin-right: 5px;
				cursor: pointer;
				background-color: #219C90;
				color: #fff;
				border: none;
				border-radius: 4px;
			}
			
			.add-customer-button{
				background-color: #65B741;
				color: #fff;
			}
			
			.delete-button {
				background-color: #f44336;
			}
			
			a{
				text-decoration: none;
			}
		</style>
	</head>
	<body>
		<header> Customer Data </header>
	
		<div class="container">
			<a href="add" class="add-customer-button">Add Customer</a>
		</div>
	
		<table>
			<thead>
				<tr>
					<th>Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Gender</th>
					<th>City</th>
					<th>Country</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Action</th>
				</tr>
			</thead>
			
			<tbody>
				<%
				List<Customer> customerList = (List<Customer>) request.getAttribute("customers");
				if (customerList != null) {
				       for (Customer customer : customerList) {
				%>
				<tr>
					<td><%=customer.getId()%></td>
					<td><%=customer.getFirstName()%></td>
					<td><%=customer.getLastName()%></td>
					<td><%=customer.getGender()%></td>
					<td><%=customer.getCity()%></td>
					<td><%=customer.getCountry()%></td>
					<td><%=customer.getEmail()%></td>
					<td><%=customer.getPhone()%></td>
					<td>
						<a href="edit?customerId=<%=customer.getId()%>" class="edit-button">Edit</a>
						<a href="delete?customerId=<%=customer.getId()%>" class="delete-button">Delete</a>

					</td>
				</tr>
				<%	}
				}
				%>
			</tbody>
		</table>
	
	</body>
</html>
