<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ABC Private Limited -  Login page</title>
<style>
header
{
background-color: #f0c7e6;
text-align: center;
text-decoration: underline;
color: white;
}
main
{
background-color: white;
text-align: center;
color: #6e7070;
height:500px;
}
footer
{
background-color: black;
text-align: center;
color: white;
height:200px;
}
input[type="submit"],input[type="reset"]
{
color: red;
background-color: #69cfba;
width:70px;
height:20px;
border-radius:15px; 
}
</style>
</head>
<body bgcolor="#e6ffeb">
<header>
<h1>ABC Private Limited</h1>
</header>
<main>
<fieldset>
	<legend><h3> Login page</h3></legend>
	<form action="Validate.jsp" method="post">
	<p><label for="user">Username</label></p>
	<p><input type="text" id='user' name='u' placeholder="Enter a Username" required> </p>
	<p><label for="pass">Password</label></p>
	<p><input type="text" id='pass' name='p' placeholder="Enter a Password" required></p>
	<input type="submit" value='Login'>
	<input type="reset" value='Cancel'>
	</form>
</fieldset>
</main>
<footer>
<p>Setting</p>
</footer>
</body>
</html>