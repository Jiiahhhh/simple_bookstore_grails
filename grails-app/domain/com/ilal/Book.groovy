package com.ilal

class Book {
    String title
    String author
    BigDecimal price
    Integer stock

    static constraints = {
        title nullable: false, blank: false
        author nullable: false, blank: false
        price nullable: false, min: 0.0
        stock nullable: false, min: 0
    }
}