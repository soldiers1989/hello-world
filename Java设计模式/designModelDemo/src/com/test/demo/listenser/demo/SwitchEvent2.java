package com.test.demo.listenser.demo;

import com.test.demo.listenser.core.BaseEvent;
import com.test.demo.listenser.core.EventSource;

/**
 * 事件
 * @author xiangmeibao
 *
 */
public class SwitchEvent2 extends BaseEvent {
	/**
	 * 序列号
	 */
	private static final long serialVersionUID = 9147704572445523505L;
	
	protected String template;
	
	public SwitchEvent2(EventSource source,String name,String template) {
		super(source,name);
		this.template = template;
	}

	public String getTemplate() {
		return template;
	}

	public void setTemplate(String template) {
		this.template = template;
	}
}
