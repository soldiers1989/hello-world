package com.test.demo.listenser.demo;

public class Test {
	public static void main(String[] args) {
        Switch switchTest = new Switch();
        switchTest.addListener(new SwitchListener());
        switchTest.addListener(new SwitchListener2());

        //触发
        switchTest.open();
        switchTest.close();
        switchTest.test();
    }
}
