package com.test.demo.dynamicproxy;

/**
 * 业务实现类
 * @author xiangmeibao
 *
 */
public class ServiceImpl implements IService {

	@Override
	public void add() {
		System.out.println("This is add service"); 
	}

}
