package com.test.demo.listenser.demo;

import com.test.demo.listenser.core.BaseEvent;
import com.test.demo.listenser.core.EventSource;

/**
 * 开关事件
 * @author xiangmeibao
 *
 */
public class SwitchEvent extends BaseEvent {
	/**
	 * 序列号
	 */
	private static final long serialVersionUID = 9147704572445523505L;
	
	protected String state; // 开关状态
	
	public SwitchEvent(EventSource source,String name,String state) {
		super(source,name);
		this.state = state;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
}
