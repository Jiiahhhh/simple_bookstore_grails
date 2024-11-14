<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 16.30
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Buku</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Edit Buku</h2>
    <g:form controller="book" action="update" class="mt-3">
        <g:hiddenField name="id" value="${book.id}"/>
        <div class="form-group">
            <label for="title">Judul</label>
            <g:textField name="title" value="${book.title}" id="title" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="author">Penulis</label>
            <g:textField name="author" value="${book.author}" id="author" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="price">Harga</label>
            <g:textField name="price" value="${book.price}" id="price" type="number" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="stock">Stok</label>
            <g:textField name="stock" value="${book.stock}" id="stock" type="number" class="form-control" required="true"/>
        </div>
        <button type="submit" class="btn btn-primary">Perbarui</button>
    </g:form>
</div>
</body>
</html>