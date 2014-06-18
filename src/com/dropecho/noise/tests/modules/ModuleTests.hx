package com.dropecho.noise.tests.modules;

import com.dropecho.noise.modules.Module;

class ModuleTests extends BaseTestCase {
    var module : Module;

    public override function setup(){
        module = new Module();
    }

    public function test_default_module_should_have_input_count_of_zero(){
        assertEquals(0, module.inputModuleCount);
    }

    public function test_default_module_should_always_output_0(){
        assertEquals(0.0, module.getValue(0,0,0));
    }

    public function test_setting_input_index_to_lower_than_zero_should_throw_an_exception(){
        assertThrows(function(){ module.setInputModule(-1,null); });
    }
}
