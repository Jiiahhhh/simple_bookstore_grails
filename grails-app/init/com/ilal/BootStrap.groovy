package com.ilal

class BootStrap {

    def init = { servletContext ->
        if (Book.count() == 0) {
            new Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", price: 150000, stock: 10).save()
            new Book(title: "To Kill a Mockingbird", author: "Harper Lee", price: 120000, stock: 5).save()
            new Book(title: "1984", author: "George Orwell", price: 130000, stock: 8).save()
            new Book(title: "Pride and Prejudice", author: "Jane Austen", price: 100000, stock: 12).save()
            new Book(title: "The Catcher in the Rye", author: "J.D. Salinger", price: 140000, stock: 6).save()
            new Book(title: "The Hobbit", author: "J.R.R. Tolkien", price: 160000, stock: 7).save()
            new Book(title: "Moby Dick", author: "Herman Melville", price: 110000, stock: 4).save()
            new Book(title: "War and Peace", author: "Leo Tolstoy", price: 200000, stock: 3).save()
            new Book(title: "The Odyssey", author: "Homer", price: 180000, stock: 9).save()
            new Book(title: "Crime and Punishment", author: "Fyodor Dostoevsky", price: 170000, stock: 6).save()
        }
    }

    def destroy = {
    }
}