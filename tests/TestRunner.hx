package tests;

import tests.modules.ModuleTests;
import tests.modules.AbsTests;
import tests.modules.AddTests;
import tests.modules.MinTests;
import tests.modules.MaxTests;
import tests.modules.MultiplyTests;
import tests.modules.PowerTests;
import tests.modules.ClampTests;
import tests.modules.StepTests;
import tests.modules.CheckerBoardTests;
import tests.modules.InvertTests;
import tests.modules.ConstantTests;

class TestRunner {
    static function main(){
        var runner = new haxe.unit.TestRunner();

        runner.add(new ModuleTests());
        runner.add(new AbsTests());
        runner.add(new AddTests());
        runner.add(new MultiplyTests());
        runner.add(new PowerTests());
        runner.add(new MinTests());
        runner.add(new MaxTests());
        runner.add(new ClampTests());
        runner.add(new StepTests());
        runner.add(new CheckerBoardTests());
        runner.add(new InvertTests());
        runner.add(new ConstantTests());

        if(!runner.run()){
        	throw "Failed Tests.";
        }
    }
}
