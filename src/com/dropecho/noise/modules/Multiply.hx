package com.dropecho.noise.modules;

class Multiply extends Module {
    public function new(){
        super(2);
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        return getInputValue(0, x, y, z) * getInputValue(1, x, y, z);
    }
}
