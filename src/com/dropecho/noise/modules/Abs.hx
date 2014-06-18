package com.dropecho.noise.modules;

class Abs extends Module {
    public function new(){
        super(1);
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        return Math.abs(getInputValue(0, x, y, z));
    }
}
