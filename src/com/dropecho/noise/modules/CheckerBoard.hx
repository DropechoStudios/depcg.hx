package com.dropecho.noise.modules;

class CheckerBoard extends Module {
    public function new(){
        super(0);
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        var ix = cast(Math.floor(NoiseGen.MakeInt32Range(x)), Int); 
		var iy = cast(Math.floor(NoiseGen.MakeInt32Range(y)), Int); 
		var iz = cast(Math.floor(NoiseGen.MakeInt32Range(z)), Int); 
		
		return cast((ix & 1 ^ iy & 1 ^ iz & 1),Bool) ? -1.0 : 1.0;
    }
}
