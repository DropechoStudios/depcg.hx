package com.dropecho.noise.modules;

import com.dropecho.noise.NoiseGen;

class Billow extends Module {
    private var frequency : Float = 1.0;
    private var lacunarity : Float = 2.0;
    private var octaveCount : Int = 6;
    private var persistance : Float = 0.5;
    private var seed : Int = 0;
    private var maxOctave : Int = 30;
    private var noiseQuality : NoiseQuality = QUALITY_STD;

    public function new(){
        super(0);
    }

    public override function getValue(x : Float, y : Float, z : Float) : Float {
        var value = 0.0;
        var signal = 0.0;
        var curPersistence = 1.0;
        var nx : Float, ny : Float, nz : Float;

        x *= frequency;
        y *= frequency;
        z *= frequency;

        for (curOctave in 0 ... octaveCount) {

            // Make sure that these floating-point values have the same range as a 32-
            // bit integer so that we can pass them to the coherent-noise functions.
            nx = NoiseGen.MakeInt32Range (x);
            ny = NoiseGen.MakeInt32Range (y);
            nz = NoiseGen.MakeInt32Range (z);

            // Get the coherent-noise value from the input value and add it to the
            // final result.
            seed = (seed + curOctave) & 0xffffffff;
            signal = NoiseGen.GradientCoherentNoise3D(nx, ny, nz, seed, noiseQuality);
            signal = 2.0 * Math.abs(signal) - 1.0;
            value += signal * curPersistence;

            // Prepare the next octave.
            x *= lacunarity;
            y *= lacunarity;
            z *= lacunarity;

            curPersistence *= persistance;
        }

        return value + 0.5;
    }
}
