package com.test.demo.staticproxy;

/**
 * 静态代理类，指定委托接口：ISubject
 * @author xiangmeibao
 *
 */
public class Proxy implements ISubject {
	private ISubject subject;
	
	public Proxy(ISubject subject){
        this.subject = subject;
    }
	
	@Override
	public void request(){
        System.out.println("begin proxy");
        subject.request();
        System.out.println("end proxy");
    }
	
	public static void main(String args[]) {
        RealSubject subject = new RealSubject();
        Proxy p = new Proxy(subject);
        p.request();
    }

}
