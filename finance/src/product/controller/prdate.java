package product.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class prdate {
	
	public static String dateToConvert(int a) {
		String dates ="";
		Date day = new Date();
		SimpleDateFormat format = new SimpleDateFormat("YYYYMMdd");
		String today=format.format(day);
		System.out.println("현재날짜: "+today);
		int year  = Integer.parseInt(today.substring(0, 4));
	    int month = Integer.parseInt(today.substring(4, 6));
	    int date  = Integer.parseInt(today.substring(6, 8));
	    Calendar cal = Calendar.getInstance();
	    cal.set(year, month - 1, date);
	    
	    if(a<12){
	    	a=-a;
		    cal.add(Calendar.YEAR, 0);     // 1년 전
		    cal.add(Calendar.MONTH, a);    // 한달 전
		    cal.add(Calendar.DATE, 0);     // 하루 전
	    }else{
	    	 a=-(a/12);
	    	 cal.add(Calendar.YEAR, a);     // 1년 전
			 cal.add(Calendar.MONTH, 0);    // 한달 전
			 cal.add(Calendar.DATE, 0);     // 하루 전
	    	
	    }
	       
	    SimpleDateFormat dateFormatter = new SimpleDateFormat("yyyyMMdd");
		String cvtDate = dateFormatter.format(cal.getTime());
		System.out.println(cvtDate);
		return cvtDate;
	}

	public static void main(String[] args) {
				
		String prdate;
		String query = "";
		String query2 = "";
		int a =3;
		int b =6;
			
	    //"1-"1개월 미만", 1-3 "1~3개월" ,3-6 ,6-12,12-24,24-"
	    String test = "1-,1-3,3-6,6-12,12-24,24-";
		String[] splitcom = test.split(",");
		
		
		String convertDate =dateToConvert(a);
		String convertDate2 =dateToConvert(b);
		
		System.out.println("convertDate :"+convertDate+"\n"
				+"convertDate2 :"+convertDate2);
	  //  System.out.println(r);
		/*int length = splitcom.length;
		
		
		System.out.println(length);
		if (splitcom.length == 5) {
			prdate = "p.scale like= %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("10")) {
							query += "p.scale<" + words[0];
						} else {
							query += "p.scale>" + words[0];
						}

					} else {
						if (words[0].toString().equals("10")) {
							query += " and p.scale<" + words[0];
						} else {
							query += " and p.scale>" + words[0];
						}
					}
				} else {
					if (query.length() == 0) {
						query += "p.scale>" + words[0] + " and p.scale<"
								+ words[1];

					} else {
						query += " and p.scale>" + words[0] + " and p.scale<"
								+ words[1];
						System.out.println("test2" + query);
					}

				}

			}
			System.out.println("query: " + query);
			System.out.println("query2: " + query2);

			prdate = query;
			System.out.println("scale : " + prdate);
		}
		System.out.println(prdate);*/
	}

	

}
