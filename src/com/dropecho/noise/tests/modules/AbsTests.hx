package com.dropecho.noise.tests.modules;

import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Abs;

class AbsTests extends BaseTestCase {
    var module : Abs;

    public override function setup(){
        module = new Abs();
    }

    public function test_abs_should_have_an_input_count_of_1(){
        assertEquals(1, module.inputModuleCount);
    }

    public function test_abs_should_throw_an_exception_when_it_has_no_input_module(){
        assertThrows(function(){ module.getValue(0,0,0); });
    }

    public function test_abs_should_return_the_abs_of_the_value(){
        module.setInputModule(0, new Constant(-5));
        assertEquals(5.0, module.getValue(0,0,0));
    }
}
