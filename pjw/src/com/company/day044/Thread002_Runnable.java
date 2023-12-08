package com.company.day044;

class PigShow2 implements Runnable{

	@Override
	public void run() {
		// TODO Auto-generated method stub
		for (int i = 0; i < 5; i++) {
			System.out.println("11첫번째 쓰레드");
			try {
				Thread.sleep(1000);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	

	
	
	
	
//	@Override
//	public void run() {
//		// TODO Auto-generated method stub
//		super.run();
//		for (int i = 0; i < 5; i++) {
//			System.out.println("11첫번째 쓰레드");
//			try {
//				Thread.sleep(1000);
//			} catch (Exception e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			}
//		}
//	} // #1-1.상속 1-2.run-todo 1-3.start
}

public class Thread002_Runnable {

	public static void main(String[] args) {
		System.out.println("메인 스타트====================");
		// TODO Auto-generated method stub
		// 1. 코어(일꾼수)
		System.out.println("0.코어 : " + Runtime.getRuntime().availableProcessors());
		// 2. 현재 쓰레드 확인
		Thread curThread = Thread.currentThread();
		System.out.println("1. 현재 쓰레드 이름 > " + curThread.getName());
		System.out.println("1. 활성화된 쓰레드 수 > " + Thread.activeCount());

		Thread myshow = new Thread(new PigShow2());

		myshow.start();

		for (int i = 0; i < 5; i++) {
			System.out.println("22두번째 쓰레드");
			System.out.println("1. 활성화된 쓰레드 수 > " + Thread.activeCount());
			try {
				Thread.sleep(1000);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		System.out.println("메인 엔드====================");
	}

}
