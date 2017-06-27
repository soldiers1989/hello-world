package com.test.demo.dynamicproxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/**
 * jdk中的动态代理通过反射类Proxy和InvocationHandler回调接口实现，要求委托类必须实现一个接口，
 * 只能对该类接口中定义的方法实现代理，这在实际编程中有一定的局限性。
 * @author xiangmeibao
 *
 */
public class MyInvocatioHandler implements InvocationHandler {
	
	//委托对象
	private Object target;
	
	public MyInvocatioHandler(Object target) {
        this.target = target;
    }

	@Override
	public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
		System.out.println("-----before-----");
        Object result = method.invoke(target, args);
        System.out.println("-----end-----");
        return result;
	}
	
	// 生成代理对象
    public Object getProxy() {
        ClassLoader loader = Thread.currentThread().getContextClassLoader();
        Class<?>[] interfaces = target.getClass().getInterfaces();
        return Proxy.newProxyInstance(loader, interfaces, this);
    }

    //使用动态代理
    public static void main(String[] args) {
        IService service = new ServiceImpl();
        MyInvocatioHandler handler = new MyInvocatioHandler(service);
        IService serviceProxy = (IService)handler.getProxy();
        serviceProxy.add();
    }
}
