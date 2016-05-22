package fw;
//SQL만 정의하는 클래스 프레임워크 기반으로 작업을 하면 설정파일(XML)로 변경됨
public class Query {
	

//	public static String ENTERPRISEINFO = "select i.*, e.ename from ENTERPRISEINFO i,ENTERPRISE e where encode=? order by year asc";
	public static String ENTERPRISEINFO = "select *from ENTERPRISEINFO where encode=? order by year asc";
	
	
	public static String STOCKINFO = "select *from STOCKINFO where encode=? order by year asc";
	public static String ENTERPRISE = "select DISTINCT e.encode, e.enname "
												+"from ENTERPRISE e, ENTERPRISEINFO i "
												+"where e.ENCODE = i.ENCODE";
	
}
