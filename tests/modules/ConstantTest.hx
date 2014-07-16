package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;

class ConstantTest extends BaseTestCase {
    var module : Constant;

	@Before
    public override function setup(){
        module = new Constant();
    }
	
	@Test
    public function should_have_an_input_count_of_0(){
        Assert.areEqual(0, module.inputModuleCount);
    }

	@Test
    public function should_return_zero_by_default() {
        Assert.areEqual(0.0, module.getValue(0, 0, 0));
    }

	@Test
    public function should_return_value_when_set() {
        module = new Constant(5);
        Assert.areEqual(5.0, module.getValue(0, 0, 0));
    }
}
