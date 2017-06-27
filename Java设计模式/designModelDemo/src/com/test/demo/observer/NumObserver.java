package com.test.demo.observer;

import java.util.Observable;
import java.util.Observer;

 //观察者类
public class NumObserver implements Observer{
    
    public void update(Observable o, Object arg) {    //有被观察者发生变化，自动调用对应观察者的update方法
       NumObservable myObserable=(NumObservable) o;     //获取被观察者对象
       System.out.println("Data has changed to " +myObserable.data);
    }
}
