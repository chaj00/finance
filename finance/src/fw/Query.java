package fw;
//SQL�� �����ϴ� Ŭ���� �����ӿ�ũ ������� �۾��� �ϸ� ��������(XML)�� �����
public class Query {
	

//	public static String ENTERPRISEINFO = "select i.*, e.ename from ENTERPRISEINFO i,ENTERPRISE e where encode=? order by year asc";
	public static String ENTERPRISEINFO = "select *from ENTERPRISEINFO where encode=? order by year asc";
	
	
	public static String STOCKINFO = "select *from STOCKINFO where encode=? order by year asc";
	public static String ENTERPRISE = "select DISTINCT e.encode, e.enname "
												+"from ENTERPRISE e, ENTERPRISEINFO i "
												+"where e.ENCODE = i.ENCODE";
	
}
