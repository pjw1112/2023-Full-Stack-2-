package com.company.api;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

public class Jsoup_basic3 {
	public String jsoup(HttpServletResponse response) {
		String result="";
		
		// 1. url 접속
		String url = "https://www.kofic.or.kr/kofic/business/main/main.do";
		
		// 2. 데이터 가져오기
		try {
			Document doc = Jsoup.connect(url).get();
			Element ele = doc.selectFirst(".btn_top_etc");
			System.out.println("jsoup 처리 완료");
			
			result= ele.toString();
			
			
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return result;
	}
}
