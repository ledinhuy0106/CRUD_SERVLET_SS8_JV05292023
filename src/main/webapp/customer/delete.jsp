<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
    <link href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>

</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="customers">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer information</legend>
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
            <tr>
                <td><input class="btn btn-danger" type="submit" value="Delete customer"></td>
                <td><a class="btn btn-success" href="customers">Back to customer list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>
