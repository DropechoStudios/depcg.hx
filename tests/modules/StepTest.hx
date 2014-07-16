package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.Step;

class StepTest extends BaseTestCase {
    var module : Step;

	@Before
    public override function setup(){
        module = new Step();
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
	public function should_throw_an_exception_when_there_are_not_three_or_more_control_points(){
        module.setInputModule(0, new Constant(2));
        //assertThrows(function(){ module.getValue(0,0,0); });
	};

	@Test
    public function should_return_a_mapped_output_value(){
		module.addControlPoint({inputValue: -1, outputValue: -1});
		module.addControlPoint({inputValue: 0, outputValue: 0});
		module.addControlPoint({inputValue: 1, outputValue: 1});

        module.setInputModule(0, new Constant(-1));
        Assert.areEqual(-1.0, module.getValue(0,0,0));

		module.setInputModule(0, new Constant(-0.5));
        Assert.areEqual(-1.0, module.getValue(0,0,0));

		module.setInputModule(0, new Constant(0));
        Assert.areEqual(0.0, module.getValue(0,0,0));

		module.setInputModule(0, new Constant(0.5));
        Assert.areEqual(0.0, module.getValue(0,0,0));

		module.setInputModule(0, new Constant(1));
        Assert.areEqual(1.0, module.getValue(0,0,0));

		module.setInputModule(0, new Constant(5));
        Assert.areEqual(1.0, module.getValue(0,0,0));
    }
}
