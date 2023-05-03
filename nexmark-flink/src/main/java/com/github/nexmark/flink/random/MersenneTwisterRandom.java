package com.github.nexmark.flink.random;

import org.apache.commons.math3.random.MersenneTwister;

import java.util.Random;

public class MersenneTwisterRandom extends Random {

    private final MersenneTwister random = new MersenneTwister();

    @Override
    public int nextInt() {
        return random.nextInt();
    }

    @Override
    public int nextInt(int bound) {
        return random.nextInt(bound);
    }

    @Override
    public double nextDouble() {
        return random.nextDouble();
    }

}
