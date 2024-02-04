<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Customer Details</title>
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
	
	        div {
	            max-width: 800px;
	            margin: 20px auto;
	            background-color: #fff;
	            padding: 20px;
	            border-radius: 8px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	        }
	
	        h1 {
	            color: #333;
	            text-align: center;
	            font-size: 45px;
	            margin: 10px;
	        }
	
	        form {
	            display: flex;
	            flex-wrap: wrap;
	            justify-content: center;
	            align-items: center;
	        }
	
	        label {
	            margin-bottom: 10px;
	            width: 30%;
	            font-size: 25px;
	            font-weight: 600;
	        }
	
	        input, select {
	            margin-bottom: 12px;
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 4px;
	            box-sizing: border-box;
	            width: 48%;
	            font-size: 25px;
	            font-weight: 400;
	            font-family: 'Montserrat', sans-serif;
	        }
	
	        input[type="submit"] {
	        	margin-top: 20px;
	            background-color: #000000;
	            color: #fff;
	            padding: 10px;
	            border: none;
	            border-radius: 4px;
	            cursor: pointer;
	            width: 40%;
	            font-size: 30px;
	        }
	
	        input[type="submit"]:hover {
	            background-color: #FF0063;
	        }
	    </style>
	</head>
	<body>
	
	<div>
	    <h1>Customer Details</h1>
	</div>
	
	<div>
	    <form action="addCustomer" method="post">
	        <label for="firstName">First Name:</label>
	        <input type="text" id="firstName" name="firstName" required>
	
	        <label for="lastName">Last Name:</label>
	        <input type="text" id="lastName" name="lastName" required>
	
	        <label for="gender">Gender:</label>
	        <select id="gender" name="gender" required>
	            <option value="Male">Male</option>
	            <option value="Female">Female</option>
	        </select>
	
	        <label for="city">City:</label>
	        <input type="text" id="city" name="city" required>
	
	        <label for="country">Country:</label>
	        <input type="text" id="country" name="country" required>
	
	        <label for="email">Email:</label>
	        <input type="text" id="email" name="email" required>
	
	        <label for="phone">Phone:</label>
	        <input type="text" id="phone" name="phone" required>
	
	        <input type="submit" value="Add Customer">
	    </form>
	</div>
	
	</body>
</html>
