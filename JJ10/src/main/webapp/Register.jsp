<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Private Limited Employee Register Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        main {
            padding: 20px;
            text-align: center;
        }
        fieldset {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="date"],
        select {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #4CAF50;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<jsp:useBean id="d" class='pack.Dbcode'></jsp:useBean>
<header><h1>Employee Register Page</h1></header>
<main>
    <fieldset>
        <form>
            <label for="en">Employee Name</label>
            <input type='text' name='ename' id='en' placeholder="Enter an Employee Name" required>
            <label>Select an Employee Department</label>
            <select name='edep'>
                <option>---Select---</option>
                <option>HR</option>
                <option>Admin</option>
                <option>Sales</option>
            </select>
            <label>Select an Employee Date of Joining</label>
            <input type='date' name='edoj'>
            <input type="submit" value='Register' name='s'>
        </form>
    </fieldset>
    <%
    String s = request.getParameter("s");
    if (s != null) {
        String ename = request.getParameter("ename");
        String edep = request.getParameter("edep");
        float esal = 0;
        if (edep.equals("HR")) {
            esal = 78000;
        } else if (edep.equals("Admin")) {
            esal = 74000;
        } else if (edep.equals("Sales")) {
            esal = 80000;
        }
        String edoj = request.getParameter("edoj");
        if (d.insert(ename, edep, esal, edoj) > 0) {
            out.print("Employee Registered Successfully");
        } else {
            out.print("Employee Registration Unsuccessful");
        }
    }
    %>
    <br>
    <a href='Home.jsp'>Home</a>
</main>
</body>
</html>
