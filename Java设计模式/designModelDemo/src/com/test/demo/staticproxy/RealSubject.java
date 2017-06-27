package com.test.demo.staticproxy;

/**
 * 委托类
 * @author xiangmeibao
 *
 */
public class RealSubject implements ISubject {

	@Override
	public void request() {
		System.out.println("RealSubject");
	}

}
