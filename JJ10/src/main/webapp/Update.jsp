<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Information Update Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        header {
            text-align: center;
            margin-bottom: 20px;
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
        input[type="number"],
        input[type="date"] {
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
<%@page import="pack.Employee"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="d" class="pack.Dbcode"></jsp:useBean>
<header><h1>Employee Information Update</h1></header>
<%
int eid = Integer.parseInt(request.getParameter("eid"));
ArrayList<Employee> a = d.view();
for (Employee e : a) {
    if (e.getEid() == eid) {
        out.print("<fieldset>");
        out.print("<form action='Process.jsp'>");
        out.print("<label>Employee Id</label><br>");
        out.print("<input type='number' value='" + e.getEid() + "' name='eid' readonly><br>");
        out.print("<label>Employee Name</label><br>");
        out.print("<input type='text' value='" + e.getEname() + "' name='ename'><br>");
        out.print("<label>Employee Salary</label><br>");
        out.print("<input type='number' value='" + e.getEsal() + "' name='esal'><br>");
        out.print("<label>Employee Department</label><br>");
        out.print("<input type='text' value='" + e.getEdep() + "' name='edep'><br>");
        out.print("<label>Employee Date of Joining</label><br>");
        out.print("<input type='date' value='" + e.getEdoj() + "' name='ejoin' disabled><br>");
        out.print("<input type='submit' value='Update'>");
        out.print("</form>");
        out.print("</fieldset>");
    }
}
d.conClose();
%>
<a href='View.jsp'>Back</a>
</body>
</html>
