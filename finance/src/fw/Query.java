package fw;
//SQL�� �����ϴ� Ŭ���� �����ӿ�ũ ������� �۾��� �ϸ� ��������(XML)�� �����
public class Query {

	public static String PRD_SELECTALL
	="select o.opname, p.title, p.prdate, p.classify, p.type, p.scale, p.charge,p.oneprofit, p.threeprofit, p.sixprofit, p.twelveprofit, p.std from PRODUCTS p, OPERATORS o where p.opcode = o.opcode order by p.PRDATE desc";
	public static String PRD_SELECT_OpName
	="select opname from operators";
	public static String PRD_SEARCH_OpName
	="select o.opname, p.title, p.prdate, p.classify, p.type, p.scale, p.charge,p.oneprofit, p.threeprofit, p.sixprofit, p.twelveprofit, p.std from PRODUCTS p, OPERATORS o where p.opcode = o.opcode and p.title like ? order by p.PRDATE desc";
	
	
	

}
