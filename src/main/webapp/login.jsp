<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<head>
	    <title>Login Page</title>
	    <link rel="preconnect" href="https://fonts.googleapis.com">
	    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
	    <style>
	        body {
	            font-family: 'Montserrat', sans-serif;
	            background-color: #f4f4f4;
	            margin: 0;
	            display: flex;
	            align-items: center;
	            justify-content: center;
	            min-height: 100vh;
	        }
	
	        .container {
	            width: 450px; 
	            margin: 100px auto; 
	            background-color: #fff;
	            padding: 40px; 
	            border-radius: 15px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	        }
	
	        h2 {
	            text-align: center;
	            color: #333;
	            margin-top: 20px; 
	            font-size: 32px; 
	        }
	
	        label {
	            display: block;
	            margin-bottom: 10px; 
	            color: #555;
	            font-size: 26px; 
	            font-weight: 600;
	        }
	
	        input[type="text"],
	        input[type="password"] {
	            width: 100%;
	            padding: 16px; 
	            margin-bottom: 30px; 
	            box-sizing: border-box;
	            border: 1px solid #ccc;
	            border-radius: 4px;
	            font-size: 25px;
	        }
	
	        input[type="text"]::placeholder,
	        input[type="password"]::placeholder {
	            opacity: 0.4;
	            font-size: 22px; 
	            font-family: 'Montserrat', sans-serif;
	        }
	
	        input[type="submit"] {
	            width: 100%;
	            background-color: #000000;
	            color: #FFFFFF;
	            padding: 20px; 
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            font-size: 32px; 
	        }
	
	        input[type="submit"]:hover {
	            background-color: #FF0063;
	        }
	    </style>
	</head>

	<body>
	    <div class="container">
	        <h2>Login</h2>
	        <form action="callHome" method="post">
	            <label for="username">Username:</label>
	            <input type="text" id="username" name="username" required placeholder="abc@xyz.com">
	
	            <label for="password">Password:</label>
	            <input type="password" id="password" name="password" required placeholder="super secret">
	
	            <input type="submit" value="Login">
	        </form>
	    </div>
	</body>

</html>
