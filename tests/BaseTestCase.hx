package com.dropecho.noise.tests;

class BaseTestCase extends haxe.unit.TestCase {
    public function assertThrows(func : Void -> Void){
        var exceptionCaught = false;
        try{
            func();
        } catch (e:Dynamic) {
            exceptionCaught = true;
        }

        assertTrue(exceptionCaught);
    }
}
