package com.dropecho.noise.tests;

import com.dropecho.noise.tests.modules.ModuleTests;
import com.dropecho.noise.tests.modules.AbsTests;
import com.dropecho.noise.tests.modules.AddTests;
import com.dropecho.noise.tests.modules.MinTests;
import com.dropecho.noise.tests.modules.MaxTests;
import com.dropecho.noise.tests.modules.MultiplyTests;
import com.dropecho.noise.tests.modules.PowerTests;
import com.dropecho.noise.tests.modules.ClampTests;
import com.dropecho.noise.tests.modules.StepTests;
import com.dropecho.noise.tests.modules.InvertTests;
import com.dropecho.noise.tests.modules.ConstantTests;

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
        runner.add(new InvertTests());
        runner.add(new ConstantTests());

        if(!runner.run()){
        	throw "Failed Tests.";
        }
    }
}
