package Json_Ex;

import java.lang.reflect.Type;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class test {

public static void main(String[] args) {
		
UserInfo user = new UserInfo();
user.age= 37; user.loc="서울"; user.name="진우";
Gson gson = new Gson();
JsonParser parser = new JsonParser();
JsonElement ele;
String str_json;

//1. 사용자 정의 클래스를 Json형식 문자열로
str_json = gson.toJson(user);
System.out.println("1 : "+str_json);
System.out.println(str_json.getClass());
System.out.println();

//2. 사용자 정의 클래스를 JsonElement로
ele = gson.toJsonTree(user);
System.out.println("2 : "+ele);
System.out.println(ele.getClass());
System.out.println();

//3. Json형식 문자열을 사용자 정의 클래스로
user = gson.fromJson(str_json, UserInfo.class);
System.out.println("3 : "+user);
System.out.println(user.getClass());
System.out.println();

//4. Json형식 문자열을 JsonElement로
ele = parser.parse(str_json);
System.out.println("4 : "+ele);
System.out.println(ele.getClass());
System.out.println();

//5. JsonElement를 Json형식 문자열로
str_json = gson.toJson(ele);
System.out.println("5 : "+str_json);
System.out.println(str_json.getClass());
System.out.println();

//6. JsonElement를 사용자 정의 클래스로
user = gson.fromJson(ele, UserInfo.class);
System.out.println("6 : "+user);
System.out.println(user.getClass());
System.out.println();
	}
}
