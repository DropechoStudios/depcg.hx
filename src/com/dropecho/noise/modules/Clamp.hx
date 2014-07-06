package com.dropecho.noise.modules;

class Clamp extends Module {
	private var min : Float;
	private var max : Float;

    public function new(min : Float = -1, max : Float = -1){
        super(1);

		this.min = min;
		this.max = max;
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
		var value = getInputValue(0, x, y, z);	

		//min => value,max, i.e. 5 vs 10, returns 5;
		//max => min'd value, max, i.e. 5 vs 0, returns 5;
		return Math.max(Math.min(value, max), min);
    }
}
