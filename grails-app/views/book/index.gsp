<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 15.20
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Buku</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="container mt-5">
    <h2>Daftar Buku</h2>
    <a href="${createLink(controller: 'book', action: 'create')}" class="btn btn-primary mb-3">Tambah Buku</a>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Judul</th>
            <th>Penulis</th>
            <th>Harga</th>
            <th>Stok</th>
            <th>Aksi</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${books}" var="book">
            <tr>
                <td>${book.title}</td>
                <td>${book.author}</td>
                <td>Rp ${book.price}</td>
                <td>${book.stock}</td>
                <td>
                    <a href="${createLink(controller: 'cart', action: 'addToCart', id: book.id)}"
                       class="btn btn-success btn-sm">Add to Chart</a>
                    <a href="${createLink(controller: 'book', action: 'show', id: book.id)}"
                       class="btn btn-info btn-sm">Detail</a>
                    <a href="${createLink(controller: 'book', action: 'edit', id: book.id)}"
                       class="btn btn-warning btn-sm">Edit</a>
                    <g:form action="delete" id="${book.id}" class="d-inline">
                        <g:hiddenField name="id" value="${book.id}"/>
                        <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
                    </g:form>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>