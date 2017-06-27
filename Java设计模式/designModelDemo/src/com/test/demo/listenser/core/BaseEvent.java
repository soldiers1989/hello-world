package com.test.demo.listenser.core;

import java.util.EventObject;

/**
 * 基础事件类
 * @author xiangmeibao
 *
 */
public class BaseEvent extends EventObject {
	/**
	 * 事件名称
	 */
	protected String name;

	public BaseEvent(Object source,String name) {
		super(source);
		this.name = name;
	}

	/**
	 * 序列号
	 */
	public static final long serialVersionUID = 834261931783706409L;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
