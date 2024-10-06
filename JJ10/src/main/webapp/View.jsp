<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        a {
            color: #4CAF50;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        h1 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
<%@page import="pack.Employee"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="d" class="pack.Dbcode"></jsp:useBean>
<h1>Employee Information</h1>
<table>
    <tr>
        <th>Employee Id</th>
        <th>Employee Name</th>
        <th>Employee Department</th>
        <th>Employee Salary</th>
        <th>Employee Date of Joining</th>
        <th>Deleted Employee Details</th>
        <th>Update Employee Details</th>
    </tr>
<%
ArrayList<Employee> e = d.view();
for (Employee a : e) {
    out.print("<tr>");
    out.print("<td>" + a.getEid() + "</td>");
    out.print("<td>" + a.getEname() + "</td>");
    out.print("<td>" + a.getEdep() + "</td>");
    out.print("<td>" + a.getEsal() + "</td>");
    out.print("<td>" + a.getEdoj() + "</td>");
    out.print("<td><a href='Delete.jsp?eid=" + a.getEid() + "'>Delete</a></td>");
    out.print("<td><a href='Update.jsp?eid=" + a.getEid() + "'>Update</a></td>");
    out.print("</tr>");
}
d.conClose();
%>    
</table>
</body>
</html>
