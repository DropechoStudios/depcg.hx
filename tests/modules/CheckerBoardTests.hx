package tests.modules;

import com.dropecho.noise.modules.Constant;
import com.dropecho.noise.modules.CheckerBoard;

class CheckerBoardTests extends BaseTestCase {
    var module : CheckerBoard;

    public override function setup(){
        module = new CheckerBoard();
    }

    public function test_checkerboard_should_have_an_input_count_of_0(){
        assertEquals(0, module.inputModuleCount);
    }

    public function test_checkboard_should_return_negative_1_when_at_0(){
        assertEquals(-1.0, module.getValue(0,0,0));
    }
}
