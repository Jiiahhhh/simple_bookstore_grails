<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 16.30
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Buku</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Tambah Buku</h2>
    <g:form controller="book" action="save" class="mt-3">
        <div class="form-group">
            <label for="title">Judul</label>
            <g:textField name="title" id="title" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="author">Penulis</label>
            <g:textField name="author" id="author" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="price">Harga</label>
            <g:textField name="price" id="price" type="number" class="form-control" required="true"/>
        </div>
        <div class="form-group">
            <label for="stock">Stok</label>
            <g:textField name="stock" id="stock" type="number" class="form-control" required="true"/>
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </g:form>
</div>
</body>
</html>