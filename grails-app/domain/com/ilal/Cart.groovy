package com.ilal

class Cart {
    static hasMany = [items: CartItem]

    static constraints = {
        items nullable: true
    }

    BigDecimal getTotalPrice() {
        items?.sum { it.book.price * it.quantity } ?: 0.0
    }
}