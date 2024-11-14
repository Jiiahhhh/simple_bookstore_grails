package com.ilal


class TransactionController {

    def transactionService
    def cartService

    def index() {
        def transactions = Transaction.list()
        [transactions: transactions]
    }

    def show(Long id) {
        def transaction = Transaction.get(id)
        if (!transaction) {
            flash.message = "Transaksi tidak ditemukan."
            redirect(action: "index")
            return
        }
        [transaction: transaction]
    }

    def create() {
        def cart = cartService.getCart()
        if (cart.items.isEmpty()) {
            flash.message = "Keranjang kosong. Silakan tambahkan buku terlebih dahulu."
            redirect(controller: "cart", action: "index")
            return
        }

        def transaction = transactionService.createTransaction(cart)
        if (transaction) {
            flash.message = "Transaksi berhasil dibuat. ID Transaksi: ${transaction.id}"
            cartService.clearCart()
            redirect(action: "show", id: transaction.id)
        } else {
            flash.message = "Gagal membuat transaksi."
            redirect(controller: "cart", action: "index")
        }
    }
}