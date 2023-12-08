package access_modifier_Ex;

public class Any_class {

	private int a; // 동일 클래스 내에서
	protected int b; // 같은 패키지 내에서 + 상속 클래스에서
	int c; // 같은 패키지 내에서
	public int d;

	private Any_class(int a, int b, int c, int d) {
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
	}

	protected Any_class(int a, int b, int c) {
		this.a = a;
		this.b = b;
		this.c = c;
		
	}
	
	Any_class(int a, int b) {
		this.a = a;
		this.b = b;
		
	}
	
	public Any_class(int a) {
		this.a = a;
		
	}
	
	
	
	
	private void method_a() {

	}

	protected void method_b() {

	}

	void method_c() {

	}

	public void method_d() {

	}

}
