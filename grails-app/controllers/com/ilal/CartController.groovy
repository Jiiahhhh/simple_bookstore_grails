package com.ilal

import grails.gorm.transactions.Transactional

class CartController {

    // Simpan keranjang di session agar keranjang tetap ada selama sesi pengguna berlangsung
    def index() {
        def cart = session.cart ?: []
        def total = calculateTotal(cart)
        [cart: cart, total: total]
    }

    // Tambahkan item ke keranjang
    @Transactional
    def addToCart(Long bookId) {
        def book = Book.get(bookId)
        if (book) {
            def cart = session.cart ?: []
            def existingItem = cart.find { it.book.id == bookId }

            if (existingItem) {
                // Jika item sudah ada, tambahkan jumlahnya
                existingItem.quantity += 1
            } else {
                // Jika item belum ada, tambahkan item baru
                cart << [book: book, quantity: 1]
            }
            session.cart = cart
            flash.message = "Buku berhasil ditambahkan ke keranjang."
        } else {
            flash.message = "Buku tidak ditemukan."
        }
        redirect(action: "index")
    }

    // Hapus item dari keranjang
    @Transactional
    def removeFromCart(Long bookId) {
        def cart = session.cart ?: []
        cart.removeAll { it.book.id == bookId }
        session.cart = cart
        flash.message = "Buku berhasil dihapus dari keranjang."
        redirect(action: "index")
    }

    // Checkout keranjang
    def checkout() {
        def cart = session.cart ?: []
        if (cart.isEmpty()) {
            flash.message = "Keranjang kosong. Silakan tambahkan buku terlebih dahulu."
            redirect(action: "index")
        } else {
            def total = calculateTotal(cart)
            render(view: "checkout", model: [cart: cart, total: total])
        }
    }

    // Proses checkout dan buat transaksi
    @Transactional
    def processCheckout(String name, String address) {
        def cart = session.cart ?: []
        if (cart.isEmpty()) {
            flash.message = "Keranjang kosong. Silakan tambahkan buku terlebih dahulu."
            redirect(action: "index")
            return
        }

        def transaction = new Transaction(name: name, address: address, transactionDate: new Date())
        cart.each { item ->
            transaction.addToItems(new CartItem(book: item.book, quantity: item.quantity))
        }

        if (transaction.save(flush: true)) {
            session.cart = []  // Kosongkan keranjang setelah transaksi
            flash.message = "Checkout berhasil. Terima kasih atas pembelian Anda!"
            redirect(controller: "transaction", action: "show", id: transaction.id)
        } else {
            flash.message = "Gagal melakukan checkout. Coba lagi."
            render(view: "checkout", model: [cart: cart, total: calculateTotal(cart)])
        }
    }

    // Fungsi untuk menghitung total harga di keranjang
    private BigDecimal calculateTotal(cart) {
        cart.sum { it.book.price * it.quantity } ?: 0.0
    }
}