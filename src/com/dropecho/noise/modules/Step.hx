package com.dropecho.noise.modules;

typedef ControlPoint = {
	inputValue : Float,
	outputValue: Float
}

class Step extends Module {
	private var controlPoints : Array<ControlPoint>;

    public function new(){
        super(1);

		controlPoints = new Array<ControlPoint>();
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
		if(controlPoints.length < 2){
			throw "Not enough control points";
		}

		var value = getInputValue(0, x, y, z);

		var usePoint = 0;
		for(i in 1...controlPoints.length){
			if(value >= controlPoints[i].inputValue){
				usePoint = i;
			}
		}

		return controlPoints[usePoint].outputValue; 
    }

	public function addControlPoint(point : ControlPoint) : Void {
		var filterFunc = function(p : ControlPoint){
			return p.inputValue == point.inputValue;
		};

		if(controlPoints.filter(filterFunc).length != 0){
			throw "Cannot have two identical input values for control points";
		}

		controlPoints.push(point);

		var sortFunc = function(x : ControlPoint, y : ControlPoint){
			if(x.inputValue == y.inputValue){
				return 0;
			}

			return x.inputValue > y.inputValue ? 1 : -1;
		};

		controlPoints.sort(sortFunc);
	}
}
