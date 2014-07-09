package tests.modules;

import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Min;

class MinTests extends BaseTestCase {
    var module : Min;

    public override function setup(){
        module = new Min();
    }

    public function test_add_should_have_an_input_count_of_2(){
        assertEquals(2, module.inputModuleCount);
    }

    public function test_clamp_should_throw_an_exception_when_it_has_no_input_module(){
        assertThrows(function(){ module.getValue(0,0,0); });
    }

	public function test_clamp_should_return_the_min_of_the_two_input_values(){
        module.setInputModule(0, new Constant(-10));
        module.setInputModule(1, new Constant(0));
        assertEquals(-10.0, module.getValue(0,0,0));
    }
}