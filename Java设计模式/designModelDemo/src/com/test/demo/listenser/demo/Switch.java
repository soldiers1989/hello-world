package com.test.demo.listenser.demo;

import com.test.demo.listenser.core.EventSource;

/**
 * 事件源：开关
 * @author xiangmeibao
 *
 */
public class Switch extends EventSource {
	protected void open() {
        SwitchEvent switchEvent = new SwitchEvent(this,"打开开关事件", "开");
        notifyListeners(switchEvent);
    }

    protected void close() {
    	SwitchEvent switchEvent = new SwitchEvent(this,"关闭开关事件", "关");
        notifyListeners(switchEvent);
    }
    
    protected void test(){
    	SwitchEvent2 switchEvent = new SwitchEvent2(this,"温度事件", "高");
    	notifyListeners(switchEvent);
    }
}
