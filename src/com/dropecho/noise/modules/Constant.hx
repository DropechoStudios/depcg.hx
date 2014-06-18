package com.dropecho.noise.modules;

class Constant extends Module {
    var value : Float;

    public function new(value : Float = 0){
        super();
        this.value = value;
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        return value;
    }
}
