package com.dropecho.noise.modules;

class Module {
    public var inputModuleCount(default, null) : Int = 0;
    private var inputModules : Array<Module> = new Array<Module>();

    public function new(inputModuleCount : Int = 0){
        this.inputModuleCount = inputModuleCount;
    }

    public function setInputModule(index : Int, module : Module) : Void {
        if(index >= inputModuleCount || index < 0){
            throw "Invalid index parameter.";
        }

        inputModules[index] = module;
    }

    public function getValue(x : Float, y : Float, z : Float) : Float {
        return 0;
    }

    private function verifyInputModules(){
        for(index in 0 ... inputModuleCount){
            if(inputModules[index] == null){
                throw "No or not enough input modules";
            }
        }
    }

    private function getInputValue(index : Int, x : Float, y : Float, z : Float){
        verifyInputModules();

        return inputModules[index].getValue(x, y, z);
    }
}
