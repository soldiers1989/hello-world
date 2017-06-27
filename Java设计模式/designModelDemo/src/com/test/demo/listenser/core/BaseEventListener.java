package com.test.demo.listenser.core;

import java.util.EventListener;

/**
 * 基础事件监听器
 * @author xiangmeibao
 *
 */
public interface BaseEventListener extends EventListener {
	/**
	 * 监听器处理方法
	 * @param event 事件对象
	 */
	public void handleEvent(BaseEvent event);
}
