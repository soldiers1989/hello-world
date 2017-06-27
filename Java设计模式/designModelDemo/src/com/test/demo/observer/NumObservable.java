package com.test.demo.observer;
import java.util.Observable;

 //被观察者类
public class NumObservable extends Observable {
    int data = 0;
 
    public void setData(int i) {
       data = i;
       setChanged();    //标记此 Observable对象为已改变的对象
       notifyObservers();    //通知所有观察者
       //notifyObservers(Object obj);    //通知所有观察者，并且可以额外携带一个参数obj给观察者
    }
}