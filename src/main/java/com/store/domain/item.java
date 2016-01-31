package com.store.domain;

/**
 * Created by tomaszowczarczyk on 26.01.2016.
 */
public class item {

    private int data;
    private int number;

    public item(int data, int number) {
        this.data = data;
        this.number = number;
    }

    public int getData() {
        return this.data;
    }

    public int getNumber() {
        return this.number;
    }

    public void setData(int d) {
        this.data = d;
    }

    public void setNumber(int n) {
        this.number = n;
    }

    @Override
    public String toString(){
        return "data: " + data + "number: " + number;
    }
}
