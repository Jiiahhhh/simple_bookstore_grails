<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 16.32
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Transaksi</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="container mt-5">
    <h2>Daftar Transaksi</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Nama</th>
            <th>Alamat</th>
            <th>Tanggal Transaksi</th>
            <th>Aksi</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${transactions}" var="transaction">
            <tr>
                <td>${transaction.name}</td>
                <td>${transaction.address}</td>
                <td>${transaction.transactionDate}</td>
                <td>
                    <a href="${createLink(controller: 'transaction', action: 'show', id: transaction.id)}"
                       class="btn btn-info btn-sm">Detail</a>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>