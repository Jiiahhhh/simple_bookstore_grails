<%--
  Created by IntelliJ IDEA.
  User: ilal
  Date: 14/11/24
  Time: 15.11
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Detail Transaksi</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2>Detail Transaksi</h2>
    <ul class="list-group">
        <li class="list-group-item"><strong>Nama:</strong> ${transaction.name}</li>
        <li class="list-group-item"><strong>Alamat:</strong> ${transaction.address}</li>
        <li class="list-group-item"><strong>Tanggal:</strong> ${transaction.transactionDate}</li>
    </ul>
    <h4 class="mt-4">Item yang Dibeli:</h4>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Judul</th>
            <th>Jumlah</th>
            <th>Harga</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${transaction.items}" var="item">
            <tr>
                <td>${item.book.title}</td>
                <td>${item.quantity}</td>
                <td>Rp ${item.book.price * item.quantity}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>