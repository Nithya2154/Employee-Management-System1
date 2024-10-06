<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            text-align: center;
        }
        .message {
            margin: 20px auto;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            background-color: white;
        }
        .success {
            color: green;
            font-weight: bold;
        }
        .error {
            color: red;
            font-weight: bold;
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
<jsp:useBean id="d" class="pack.Dbcode"></jsp:useBean>
<%
if(d.update(request.getParameter("ename"),
        request.getParameter("edep"),
        Float.parseFloat(request.getParameter("esal")),
        Integer.parseInt(request.getParameter("eid"))) > 0) {
    out.print("<div class='message success'>Updated Successfully!</div>");
} else {
    out.print("<div class='message error'>Not Updated. Please try again.</div>");
}
d.conClose();
%>

<a href='View.jsp'>Back</a>
</body>
</html>
