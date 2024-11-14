<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 16.31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Form Checkout</h2>
    <g:form controller="transaction" action="create" class="mt-3">
        <div class="form-group">
            <label for="name">Nama</label>
            <g:textField name="name" id="name" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="address">Alamat</label>
            <g:textField name="address" id="address" class="form-control" required="true"/>
        </div>
        <button type="submit" class="btn btn-primary">Proses Checkout</button>
    </g:form>
</div>
</body>
</html>