package com.ilal

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class CartItemSpec extends Specification implements DomainUnitTest<CartItem> {

     void "test domain constraints"() {
        when:
        CartItem domain = new CartItem()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
