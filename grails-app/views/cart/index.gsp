<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 15.10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="container my-4">
    <h2 class="mb-4">Your Cart</h2>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${cartItems}" var="item">
                <tr>
                    <td>${item.book.title}</td>
                    <td>${item.book.author}</td>
                    <td>Rp ${item.book.price}</td>
                    <td>${item.quantity}</td>
                    <td>Rp ${item.book.price * item.quantity}</td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
    <a href="${createLink(controller: 'transaction', action: 'checkout')}"
       class="btn btn-primary">Proceed to Checkout</a>
    <a href="${createLink(controller: 'cart', action: 'clearCart')}" class="btn btn-danger">Clear Cart</a>
</div>
</body>
</html>