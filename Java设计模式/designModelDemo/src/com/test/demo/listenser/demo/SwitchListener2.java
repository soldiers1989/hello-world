package com.test.demo.listenser.demo;

import com.test.demo.listenser.core.BaseEvent;
import com.test.demo.listenser.core.BaseEventListener;

/**
 * 开关监听器
 * 
 * @author xiangmeibao
 *
 */
public class SwitchListener2 implements BaseEventListener {

	/**
	 * 监听到开关事件时输出
	 */
	@Override
	public void handleEvent(BaseEvent event) {
		if (event instanceof SwitchEvent2) {
			Switch source = (Switch) event.getSource(); // 获取事件源对象
			System.out.println("linstener2:" + source.toString());
			System.out.println(((SwitchEvent2) event).getTemplate());
		}
	}

}
