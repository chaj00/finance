package fw;
//SQL�� �����ϴ� Ŭ���� �����ӿ�ũ ������� �۾��� �ϸ� ��������(XML)�� �����
public class PortfolioQuery {
	
/*	public static String PLIST
		= "select * from pf_products where ?";

*/

/*	public static String PLIST_TYPE_A
	= "select * "
	+"from (select type,CLASSIFY, opcode, THREEPROFIT,std, regexp_replace(title,'[-]\\w+','') " 
	       +"from PF_PRODUCTS " 
	       +"where ? "				//type = '�ֽ���' and 
	              +"std is not null and " 
	              +"threeprofit is not null " 
	              +"? "				//and std >= 25 
	              +"order by threeprofit desc) "                                             
	+"where rowid in (select max(rowid) from (select type,CLASSIFY, opcode, THREEPROFIT,std, substr(regexp_replace(title,'[-]\\w+',''),1,8) t " 
	                  +"from PF_PRODUCTS " 
	                  +"where ? " 				//type = '�ֽ���' and 
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
	  +"from (select TYPE, CLASSIFY, OPCODE, regexp_replace(title,'[-]\\w+',''), THREEPROFIT, STD " 
	  		+"from PF_PRODUCTS " 
	        +"where ";				
   			//type = '�ֽ���' and 
	public static String PLIST2              
			= "STD is not null and " 
			 +"THREEPROFIT is not null "; 
			//and std >= 25
	public static String PLIST3               
			= "order by THREEPROFIT desc) "                                             
					    +"where ROWID in (select max(rowid) from (select TYPE, CLASSIFY, OPCODE, THREEPROFIT, STD, substr(regexp_replace(title,'[-]\\w+',''),1,8) t " 
	   					+"from PF_PRODUCTS "
	   					+"where ";
						//type = '�ֽ���' and 
	public static String PLIST4           
	 				="STD is not null and " 
	                  +"THREEPROFIT is not null " ;
						//and std >= 25 
	                               
	 public static String PLIST5 ="order by THREEPROFIT desc) group by t) ";
	 public static String PLIST6 ="and ROWNUM <= ";
	 											   //10

}
