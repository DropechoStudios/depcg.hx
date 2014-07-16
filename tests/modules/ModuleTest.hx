package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Module;

class ModuleTest extends BaseTestCase {
    var module : Module;

	@Before
    public override function setup(){
        module = new Module();
    }

	@Test
    public function should_have_input_count_of_zero(){
        Assert.areEqual(0, module.inputModuleCount);
    }

	@Test
    public function should_always_output_0(){
        Assert.areEqual(0.0, module.getValue(0,0,0));
    }

	@Test
    public function setting_input_index_to_lower_than_zero_should_throw_an_exception(){
        //assertThrows(function(){ module.setInputModule(-1,null); });
    }
}
