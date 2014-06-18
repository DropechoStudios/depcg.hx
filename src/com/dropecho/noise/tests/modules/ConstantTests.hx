package com.dropecho.noise.tests.modules;

import com.dropecho.noise.modules.Constant;

class ConstantTests extends BaseTestCase {
    var module : Constant;

    public override function setup(){
        module = new Constant();
    }

    public function test_constant_should_have_an_input_count_of_0(){
        assertEquals(0, module.inputModuleCount);
    }

    public function test_constant_should_return_zero_by_default() {
        assertEquals(0.0, module.getValue(0, 0, 0));
    }

    public function test_constant_should_return_value_when_set() {
        module = new Constant(5);
        assertEquals(5.0, module.getValue(0, 0, 0));
    }
}
