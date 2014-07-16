package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Abs;

class AbsTest extends BaseTestCase {
    var module : Abs;
	
	@Before
    public override function setup(){
        module = new Abs();
    }

	@Test
    public function should_have_an_input_count_of_1(){
        Assert.areEqual(1, module.inputModuleCount);
    }

	@Test
    public function should_throw_an_exception_when_it_has_no_input_module(){
        //assertThrows(function(){ module.getValue(0,0,0); });
    }

	@Test
    public function should_return_the_abs_of_the_value(){
        module.setInputModule(0, new Constant(-5));
        Assert.areEqual(5.0, module.getValue(0,0,0));
    }
}
