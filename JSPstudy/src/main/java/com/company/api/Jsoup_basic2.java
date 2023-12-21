package com.company.api;

import java.io.IOException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class Jsoup_basic2 {
	public String jsoup() {
		String result = "";

		// 1. url 접속
		String url = "https://www.kofic.or.kr/kofic/business/main/main.do";

		// 2. 데이터 가져오기
		try {
			Document doc = Jsoup.connect(url).get();
			Elements ele = doc.select(".btn_top_etc img");
			System.out.println("jsoup 처리 완료");

			for (Element e : ele) {
				result += 
						"<tr><td>" + e.tagName() + 
						"</td><td>" + e.attr("abs:src") + 
						"</td><td><img src='"+ e.attr("abs:src") + 
						"' alt='' /></td></tr>";
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}
}
