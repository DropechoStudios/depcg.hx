package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Min;

class MinTest extends BaseTestCase {
    var module : Min;

	@Before
    public override function setup(){
        module = new Min();
    }

	@Test
    public function should_have_an_input_count_of_2(){
        Assert.areEqual(2, module.inputModuleCount);
    }

	@Test
    public function should_throw_an_exception_when_it_has_no_input_module(){
        //assertThrows(function(){ module.getValue(0,0,0); });
    }

	@Test
	public function should_return_the_min_of_the_two_input_values(){
        module.setInputModule(0, new Constant(-10));
        module.setInputModule(1, new Constant(0));
        Assert.areEqual(-10.0, module.getValue(0,0,0));
    }
}
