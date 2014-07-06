package com.dropecho.noise.tests.modules;

import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Invert;

class InvertTests extends BaseTestCase {
    var module : Invert;

    public override function setup(){
        module = new Invert();
    }

    public function test_add_should_have_an_input_count_of_2(){
        assertEquals(1, module.inputModuleCount);
    }

    public function test_add_should_throw_an_exception_when_it_has_no_input_module(){
        assertThrows(function(){ module.getValue(0,0,0); });
    }

    public function test_add_should_return_the_inverse_of_a_positive_input_value(){
        module.setInputModule(0, new Constant(2));
        assertEquals(-2.0, module.getValue(0,0,0));
    }
    
	public function test_add_should_return_the_inverse_negative_input_value(){
        module.setInputModule(0, new Constant(-2));
        assertEquals(2.0, module.getValue(0,0,0));
    }
}
