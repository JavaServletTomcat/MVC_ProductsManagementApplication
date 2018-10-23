<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Customer List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<div class="example">
    <div class="container">
        <div class="row">
            <h2>Hiển thị danh sách sản phẩm</h2>
            <table class="table">
                <p>
                    <a href="/products?action=create"><h3>Create New Product</h3></a>
                </p>
                <thead>
                <tr>
                    <td>Name</td>
                    <td>Description</td>
                    <td>Amount</td>
                    <td>Quantity</td>
                    <td>Category</td>
                    <td>Edit</td>
                    <td>Delete</td>
                </tr>
                </thead>
                <tbody>
                <c:forEach items='${requestScope["products"]}' var="product">
                    <tr>
                        <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                        <td>${product.getDescription()}</td>
                        <td>${product.getAmount()}</td>
                        <td>${product.getQuantity()}</td>
                        <td>${product.getCategory()}</td>
                        <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
                        <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</div>
</body>
</html>