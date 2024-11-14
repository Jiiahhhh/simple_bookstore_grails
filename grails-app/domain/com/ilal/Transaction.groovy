package com.ilal

class Transaction {
    String name
    String address
    Date transactionDate = new Date()
    static hasMany = [items: CartItem]

    static constraints = {
        name nullable: false, blank: false
        address nullable: false, blank: false
        transactionDate nullable: false
        items nullable: false
    }
}