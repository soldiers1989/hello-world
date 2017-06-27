package com.test.demo.listenser.core;

import java.util.Iterator;
import java.util.Vector;

/**
 * 基础事件源对象，其他事件源都可以继承EventSouce
 * <p>
 * 持有监听器集合
 * <p>
 * 提供添加、删除监听器方法
 * <p>
 * 提供触发监听器处理方法
 * <p>
 * 
 * @author xiangmeibao
 *
 */
public class EventSource {
	/**
	 * 该事件源注册的所有监听器集合
	 */
	protected Vector<BaseEventListener> listenerList = new Vector<BaseEventListener>();

	/**
	 * 注册监听器
	 * @param listener 监听器
	 */
	public void addListener(BaseEventListener listener) {
		listenerList.add(listener);
	}
	
	/**
	 * 移除监听器
	 * @param listener 监听器
	 */
	public void removeListener(BaseEventListener listener) {
		listenerList.remove(listener);
	}


	/**
	 * 触发监听器处理方法
	 * @param baseEvent
	 */
	public void notifyListeners(BaseEvent baseEvent) {
		Iterator<BaseEventListener> iterator = listenerList.iterator();
		while (iterator.hasNext()) {
			BaseEventListener listener = iterator.next();
			listener.handleEvent(baseEvent);
		}
	}
}
