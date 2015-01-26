package com.dempe.zhizus.utils;

import java.math.BigInteger;

/**
 * 负载均衡
 * User: Dempe
 * Date: 2015/1/26
 * Time: 16:00
 * To change this template use File | Settings | File Templates.
 */
public class LoadBalance {
    private int i = 0;
    private int cw = 0;
    private int[] weight;
    private int count;

    public LoadBalance(int count) {
        this.count = count;
    }

    public LoadBalance(int[] weight) {
        this.count = weight.length;
        this.weight = weight;
    }

    public int hashIndex(String key) {
        long hash = 5381L;

        int index;
        for (index = 0; index < key.length(); ++index) {
            hash = (hash << 5) + hash + (long) key.charAt(index);
            hash &= 4294967295L;
        }

        index = (int) hash % this.count;
        index = Math.abs(index);
        return index;
    }

    public int roundIndexByWeight() {
        do {
            this.i = (this.i + 1) % this.count;
            if (this.i == 0) {
                this.cw -= this.gcd();
                if (this.cw <= 0) {
                    this.cw = this.max();
                    if (this.cw == 0) {
                        return 0;
                    }
                }
            }
        } while (this.weight[this.i] < this.cw);

        return this.i;
    }

    public int roundIndex() {
        int j = this.i;
        j = (j + 1) % this.count;
        this.i = j;
        return this.i;
    }

    private int gcd() {
        BigInteger value = null;
        if (this.weight.length > 0) {
            value = BigInteger.valueOf((long) this.weight[this.i]);
        }

        for (int i = 0; i < this.weight.length - 1; ++i) {
            BigInteger tmp = BigInteger.valueOf((long) this.weight[i]);
            tmp = tmp.gcd(BigInteger.valueOf((long) this.weight[i + 1]));
            if (value.compareTo(tmp) > 0) {
                value = tmp;
            }
        }

        if (null != value) {
            return value.intValue();
        } else {
            return 0;
        }
    }

    private int max() {
        int value = 0;
        if (this.weight.length > 0) {
            value = this.weight[0];
        }

        for (int i = 0; i < this.weight.length - 1; ++i) {
            int tmp = this.weight[i];
            if (value < tmp) {
                value = tmp;
            }
        }

        return value;
    }
}
