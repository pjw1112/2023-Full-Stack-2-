package Json_Ex;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

class UserInfo {

	String name;
	int age;
	String loc;

	public UserInfo() {
		super();
	}

	public UserInfo(String name, int age, String loc) {
		super();
		this.name = name;
		this.age = age;
		this.loc = loc;
	}

	@Override
	public String toString() {
		return "UserInfo [name=" + name + ", age=" + age + ", loc=" + loc + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

}

public class Json001 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// Json 이란? { "name" : "sally", "age" : "3", "loc" : "경기" } 키 - 값 쌍으로 이루어진 데이터
		// https://mvnrepository.com/artifact/com.google.code.gson/gson/2.8.7 여기에서 GSON
		// JAR 파일을 라이브러리에 추가

		// 1. Json 객체를 만들어서 객체안에 키-값 추가하기
		JsonObject job = new JsonObject();
		job.addProperty("name", "sally");
		job.addProperty("age", 3);
		job.addProperty("loc", "경기");
		System.out.println("JsonObject job 출력 : " + job);

		// 2. Json 객체를 String 으로 변환
		Gson gson = new Gson();
		String str = gson.toJson(job);
		System.out.println("job 객체를 gson.toJson메서드를 사용해 String 문자열로 변환 : " + str);
		System.out.println("job 객체를 job.toString메서드를 사용해 String 문자열로 변환 : " + job.toString());
		System.out.println(str.equals(job.toString()));

		// 3. class 객체를 String 으로 변환
		Gson gson2 = new Gson();
		UserInfo uu = new UserInfo();
		uu.name = "sally";
		uu.age = 3;
		uu.loc = "경기";

		String str2 = gson2.toJson(uu);
		System.out.println("클래스 객체를 String 문자열로 변환 (직렬화)  : " + str2);
		System.out.println("String 문자열을 클래스 객체로 변환 (역직렬화) : " + gson.fromJson(str2, UserInfo.class));

	}

}
