package com.dropecho.noise.modules;

class Power extends Module {
    public function new(){
        super(2);
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        return Math.pow(getInputValue(0, x, y, z), getInputValue(1, x, y, z));
    }
}
