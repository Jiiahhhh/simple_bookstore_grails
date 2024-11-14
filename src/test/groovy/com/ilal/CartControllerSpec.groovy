package com.ilal

import grails.testing.web.controllers.ControllerUnitTest
import spock.lang.Specification

class CartControllerSpec extends Specification implements ControllerUnitTest<CartController> {

     void "test index action"() {
        when:
        controller.index()

        then:
        status == 200

     }
}
