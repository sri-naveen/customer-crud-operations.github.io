<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.customer.daoImpl.CustomerDaoImpl" %>

<%
    CustomerDaoImpl obj = CustomerDaoImpl.getInstance();
    int customerId = Integer.parseInt(request.getParameter("customerId"));
    int rowsAffected = obj.deleteCustomer(customerId);
%>

<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <title>Delete Confirmation</title>
	    <style>
	    	h1, p{
	    		text-align: center;
	    	}
	    </style>
	</head>
	<body>
	    <h1>Deletion Confirmation</h1>
	
	    <% if (rowsAffected > 0) { %>
	        <p>Customer deleted successfully.</p>
	    <% } else { %>
	        <p>Failed to delete customer. Please try again.</p>
	    <% } %>
	    
	    <form id="redirectForm" method="post" action="callHome">
	    	
	    </form>
	
	    <script>
		    setTimeout(function() {
	            document.getElementById('redirectForm').submit();
	        }, 2500);
	    </script>
	</body>
</html>
