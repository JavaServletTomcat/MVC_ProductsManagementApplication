<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
<h1>Edit product</h1>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/products">Back to product list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Amount: </td>
                <td><input type="text" name="amount" id="amount" value="${requestScope["product"].getAmount()}"></td>
            </tr>
            <tr>
                <td>Quantity: </td>
                <td><input type="text" name="quantity" id="quantity" value="${requestScope["product"].getQuantity()}"></td>
            </tr>
            <tr>
                <td>Category: </td>
                <td><input type="text" name="category" id="category" value="${requestScope["product"].getCategory()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><textarea name="description" id="description" cols="30" rows="10" >${requestScope["product"].getDescription()}</textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Update product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>