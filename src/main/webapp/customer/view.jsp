<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
    <link href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>

</head>
<body>
    <h1>Customer details</h1>
    <p>
        <a class="btn btn-success" href="customers">Back to customer list</a>
    </p>
    <table>
        <tr>
            <td>Name: </td>
            <td>${requestScope["customer"].getName()}</td>
        </tr>
        <tr>
            <td>Email: </td>
            <td>${requestScope["customer"].getEmail()}</td>
        </tr>
        <tr>
            <td>Address: </td>
            <td>${requestScope["customer"].getAddress()}</td>
        </tr>
    </table>
</body>
</html>
