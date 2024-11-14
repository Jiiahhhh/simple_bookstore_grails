package com.ilal

import grails.gorm.transactions.Transactional

@Transactional
class BookController {

    def index() {
        def books = Book.list()
        [books: books]
    }

    def show(Long id) {
        def book = Book.get(id)
        if (!book) {
            flash.message = "Buku tidak ditemukan."
            redirect(action: "index")
            return
        }
        [book: book]
    }

    def create() { }

    def save(Book book) {
        if (book.save(flush: true)) {
            flash.message = "Buku berhasil disimpan."
            redirect(action: "index")
        } else {
            flash.message = "Gagal menyimpan buku."
            render(view: "create", model: [book: book])
        }
    }

    def edit(Long id) {
        def book = Book.get(id)
        if (!book) {
            flash.message = "Buku tidak ditemukan."
            redirect(action: "index")
            return
        }
        [book: book]
    }

    def update(Book book) {
        if (book.save(flush: true)) {
            flash.message = "Buku berhasil diperbarui."
            redirect(action: "index")
        } else {
            flash.message = "Gagal memperbarui buku."
            render(view: "edit", model: [book: book])
        }
    }

    def delete(Long id) {
        def book = Book.get(id)
        if (book) {
            book.delete(flush: true)
            flash.message = "Buku berhasil dihapus."
        } else {
            flash.message = "Buku tidak ditemukan."
        }
        redirect(action: "index")
    }
}