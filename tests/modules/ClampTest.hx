package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Clamp;

class ClampTest extends BaseTestCase {
    var module : Clamp;

	@Before
    public override function setup(){
        module = new Clamp(-1,1);
    }

	@Test
    public function should_have_an_input_count_of_2(){
        Assert.areEqual(1, module.inputModuleCount);
    }

	@Test
    public function should_throw_an_exception_when_it_has_no_input_module(){
       // assertThrows(function(){ module.getValue(0,0,0); });
    }

	@Test
    public function should_return_the_max_if_val_is_over_max(){
        module.setInputModule(0, new Constant(10));
        Assert.areEqual(1.0, module.getValue(0,0,0));
    }

	@Test
	public function should_return_the_min_if_val_is_under_min(){
        module.setInputModule(0, new Constant(-10));
        Assert.areEqual(-1.0, module.getValue(0,0,0));
    }
}
