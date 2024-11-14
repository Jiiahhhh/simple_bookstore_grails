package com.ilal

import grails.testing.gorm.DomainUnitTest
import spock.lang.Specification

class CartSpec extends Specification implements DomainUnitTest<Cart> {

     void "test domain constraints"() {
        when:
        Cart domain = new Cart()
        //TODO: Set domain props here

        then:
        domain.validate()
     }
}
