package com.test.demo.observer;

public class Test {
    public static void main(String[] args) {
       NumObservable number = new NumObservable();    //被观察者对象
       number.addObserver(new NumObserver());    //给number这个被观察者添加观察者(当然可以有多个观察者)
       number.setData(1);
       number.setData(2);
       number.setData(3);
    }
}
