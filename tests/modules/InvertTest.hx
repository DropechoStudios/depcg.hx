package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Invert;

class InvertTest extends BaseTestCase {
    var module : Invert;

	@Before
    public override function setup(){
        module = new Invert();
    }

	@Test
    public function should_have_an_input_count_of_2(){
        Assert.areEqual(1, module.inputModuleCount);
    }

	@Test
    public function should_throw_an_exception_when_it_has_no_input_module(){
        //assertThrows(function(){ module.getValue(0,0,0); });
    }

	@Test
    public function should_return_the_inverse_of_a_positive_input_value(){
        module.setInputModule(0, new Constant(2));
        Assert.areEqual(-2.0, module.getValue(0,0,0));
    }

	@Test
	public function should_return_the_inverse_negative_input_value(){
        module.setInputModule(0, new Constant(-2));
        Assert.areEqual(2.0, module.getValue(0,0,0));
    }
}
