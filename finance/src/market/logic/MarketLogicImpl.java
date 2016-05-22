package market.logic;

import java.io.IOException;
import java.util.ArrayList;

import market.dto.MarketIndexDTO;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class MarketLogicImpl implements MarketLogic {
	public MarketIndexDTO marketindex() throws IOException{
		MarketIndexDTO indexList = null;
		
		Document document = Jsoup.connect("http://info.finance.naver.com/marketindex/").get();
		if(document!=null){
			Elements market1 = document.select("div.market1");

			
			Elements h_market1 = market1.select("h2");
							
			String m1Title = h_market1.get(0).text();
			
			Elements h_lst = market1.select("h3");
			int size = h_lst.size();
		
			ArrayList<String> m1Head = new ArrayList<String>();
			for(int i=0; i<size;i++){
				m1Head.add(h_lst.get(i).text());
			}
			
			
			
			Elements head_info = market1.select("div.head_info");	
			ArrayList<String> m1Value = new ArrayList<String>();
			ArrayList<String> m1Change = new ArrayList<String>();
			ArrayList<String> m1Fluctuation = new ArrayList<String>();
			
			for(int i=0; i<size;i++){
				m1Value.add(head_info.get(i).select("span.value").text());
				m1Change.add(head_info.get(i).select("span.change").text());
				m1Fluctuation.add(head_info.get(i).select("span.blind").get(1).text());
			}
			
			
			
			ArrayList<String> m1Img = new ArrayList<String>();
			for(int i=0;i<size;i++){
				m1Img.add(market1.select("img").get(i).attr("src"));
			}
			
		
			
			
			Elements market2 = document.select("div.market2");

			
			Elements h_market2 = market2.select("h2");
				
			String m2Title = h_market2.get(0).text();
			
			
			Elements h_lst2 = market2.select("h3");
			int size2 = h_lst2.size();
			
			
			
			ArrayList<String> m2Head = new ArrayList<String>();
			for(int i=0; i<size2;i++){
				m2Head.add(h_lst2.get(i).text());
			}
			
			
			Elements head_info2 = market2.select("div.head_info");	
			ArrayList<String> m2Value = new ArrayList<String>();
			ArrayList<String> m2Change = new ArrayList<String>();
			ArrayList<String> m2Fluctuation = new ArrayList<String>();
			
			for(int i=0; i<size2;i++){
				
				m2Value.add(head_info2.get(i).select("span.value").text());
				m2Change.add(head_info2.get(i).select("span.change").text());
				if(i==(size2-1)){
					m2Fluctuation.add(head_info2.get(i).select("span.blind").text());
				}else{
					m2Fluctuation.add(head_info2.get(i).select("span.blind").get(1).text());
				}
				
			}

			
			ArrayList<String> m2Img = new ArrayList<String>();
			for(int i=0;i<size;i++){
				m2Img.add(market2.select("img").get(i).attr("src"));
			}
			
			
			Elements market3 = document.select("div.market3");
			//System.out.println(elements.html());
			
			Elements h_market3 = market3.select("h2");
				
			String m3Title = h_market3.get(0).text();
			
			
			Elements h_lst3 = market3.select("h3");
			int size3 = h_lst3.size();
			
			
			
			ArrayList<String> m3Head = new ArrayList<String>();
			for(int i=0; i<size3;i++){
				m3Head.add(h_lst3.get(i).text());
			}
			
			
			Elements head_info3 = market3.select("div.head_info");	
			ArrayList<String> m3Value = new ArrayList<String>();
			ArrayList<String> m3Change = new ArrayList<String>();
			ArrayList<String> m3Fluctuation = new ArrayList<String>();
			
			for(int i=0; i<size3;i++){
				
				m3Value.add(head_info3.get(i).select("span.value").text());
				m3Change.add(head_info3.get(i).select("span.change").text());
				m3Fluctuation.add(head_info3.get(i).select("span.blind").get(1).text());
				
			}
			
	
			
			ArrayList<String> m3Img = new ArrayList<String>();
			for(int i=0;i<size;i++){
				m3Img.add(market3.select("img").get(i).attr("src"));
			}
			
			
			
			indexList = new MarketIndexDTO(m1Title, m1Head, m1Value, m1Change, m1Fluctuation, m1Img, 
											m2Title, m2Head, m2Value, m2Change, m2Fluctuation, m2Img, 
											m3Title, m3Head, m3Value, m3Change, m3Fluctuation, m3Img);
			
			
			/*indexList.setM1Title(h_market1.get(0).text());
			indexList.setM1Head(m1Head);
			indexList.setM1Value(m1Value);
			indexList.setM1Change(m1Change);
			indexList.setM1Fluctuation(m1Fluctuation);
			indexList.setM1Img(m1Img);
			
			indexList.setM2Title(h_market2.get(0).text());
			indexList.setM2Head(m2Head);
			indexList.setM2Value(m2Value);
			indexList.setM2Change(m2Change);
			indexList.setM2Fluctuation(m2Fluctuation);
			indexList.setM2Img(m2Img);
			
			indexList.setM3Title(h_market3.get(0).text());
			indexList.setM3Head(m3Head);
			indexList.setM3Value(m3Value);
			indexList.setM3Change(m3Change);
			indexList.setM3Fluctuation(m3Fluctuation);
			indexList.setM3Img(m3Img);*/
			
		}
	
		
		return indexList;
		
		
		
	}
	
	
}
