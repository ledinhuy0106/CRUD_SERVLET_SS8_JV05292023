<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Customer List</title>
    <link href="/webjars/bootstrap/4.6.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="/webjars/bootstrap/4.6.0/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
    <h1 class="mt-4">Customers</h1>
    <p>
        <a href="${pageContext.request.contextPath}/customers?action=create" class="btn btn-success">Create new customer</a>
    </p>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Address</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${requestScope['customers']}" var="customer">
            <tr>
                <td><a href="${pageContext.request.contextPath}/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
                <td>${customer.email}</td>
                <td>${customer.address}</td>
                <td><a href="${pageContext.request.contextPath}/customers?action=edit&id=${customer.getId()}" class="btn btn-warning">Edit</a></td>
                <td><a href="${pageContext.request.contextPath}/customers?action=delete&id=${customer.getId()}" class="btn btn-danger">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
