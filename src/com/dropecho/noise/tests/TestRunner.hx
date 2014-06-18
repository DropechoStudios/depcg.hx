package com.dropecho.noise.tests;

import com.dropecho.noise.tests.modules.ModuleTests;
import com.dropecho.noise.tests.modules.AbsTests;
import com.dropecho.noise.tests.modules.ConstantTests;

class TestRunner {
    static function main(){
        var runner = new haxe.unit.TestRunner();

        runner.add(new ModuleTests());
        runner.add(new AbsTests());
        runner.add(new ConstantTests());

        if(!runner.run()){
        	throw "Failed Tests.";
        }
    }
}
