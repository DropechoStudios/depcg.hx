package modules;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.CheckerBoard;

class CheckerBoardTest extends BaseTestCase {
    var module : CheckerBoard;

	@Before
    public override function setup(){
        module = new CheckerBoard();
    }

	@Test
    public function should_have_an_input_count_of_0(){
        Assert.areEqual(0, module.inputModuleCount);
    }

	@Test
    public function should_return_negative_1_when_at_0(){
        //Assert.areEqual(-1.0, module.getValue(0,0,0));
    }
}
