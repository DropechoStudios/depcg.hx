package com.dropecho.noise.tests.modules;

import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Clamp;

class ClampTests extends BaseTestCase {
    var module : Clamp;

    public override function setup(){
        module = new Clamp(-1,1);
    }

    public function test_add_should_have_an_input_count_of_2(){
        assertEquals(1, module.inputModuleCount);
    }

    public function test_clamp_should_throw_an_exception_when_it_has_no_input_module(){
        assertThrows(function(){ module.getValue(0,0,0); });
    }

    public function test_clamp_should_return_the_max_if_val_is_over_max(){
        module.setInputModule(0, new Constant(10));
        assertEquals(1.0, module.getValue(0,0,0));
    }
    
	public function test_clamp_should_return_the_min_if_val_is_under_min(){
        module.setInputModule(0, new Constant(-10));
        assertEquals(-1.0, module.getValue(0,0,0));
    }
}
