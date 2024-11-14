package com.ilal

class CartItem {
    Book book
    Integer quantity = 1
    Cart cart

    static constraints = {
        book nullable: false
        quantity nullable: false, min: 1
        cart nullable: false
    }
}