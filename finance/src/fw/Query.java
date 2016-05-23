package fw;
//SQL만 정의하는 클래스 프레임워크 기반으로 작업을 하면 설정파일(XML)로 변경됨
public class Query {
	
/*	public static String PLIST
		= "select * from pf_products where ?";

*/

/*	public static String PLIST_TYPE_A
	= "select * "
	+"from (select type,CLASSIFY, opcode, THREEPROFIT,std, regexp_replace(title,'[-]\\w+','') " 
	       +"from PF_PRODUCTS " 
	       +"where ? "				//type = '주식형' and 
	              +"std is not null and " 
	              +"threeprofit is not null " 
	              +"? "				//and std >= 25 
	              +"order by threeprofit desc) "                                             
	+"where rowid in (select max(rowid) from (select type,CLASSIFY, opcode, THREEPROFIT,std, substr(regexp_replace(title,'[-]\\w+',''),1,8) t " 
	                  +"from PF_PRODUCTS " 
	                  +"where ? " 				//type = '주식형' and 
	                  +"std is not null and " 
	                  +"threeprofit is not null " 
	                  +"? "             //and std >= 25 
	                  +"order by threeprofit desc) group by t) ";
	+"where rownum >= ?"    // 10
}*/

	
/*	
 * TESTING*/
   public static String PLIST1
	= "select * "
	  +"from (select type,CLASSIFY, opcode, regexp_replace(title,'[-]\\w+',''), THREEPROFIT, std  " 
	  		+"from PF_PRODUCTS " 
	        +"where ";				
   			//type = '주식형' and 
	public static String PLIST2              
			= "std is not null and " 
			 +"threeprofit is not null "; 
			//and std >= 25
	public static String PLIST3               
			= "order by threeprofit desc) "                                             
	   +"where rowid in (select max(rowid) from (select type,CLASSIFY, opcode, THREEPROFIT,std, substr(regexp_replace(title,'[-]\\w+',''),1,8) t " 
	   					+"from PF_PRODUCTS "
	   					+"where ";
						//type = '주식형' and 
	public static String PLIST4           
	 				="std is not null and " 
	                  +"threeprofit is not null " ;
						//and std >= 25 
	                               
	 public static String PLIST5 ="order by threeprofit desc) group by t) ";
	 public static String PLIST6 ="and rownum <= ";
	 											   //10

}
