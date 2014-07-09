package com.dropecho.noise.modules;

class Blend extends Module {
    public function new(){
        super(1);
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        return getInputValue(0, x, y, z);
    }
}
