package product.etc;

public class opname {
	public static void main(String[] args){
		//String test = "주식형, 주식혼합형, 채권혼합형, 채권형, 인덱스, MMF, 파생상품, 기타";
		String test = "KB,KTB,LS,교보악사,대신,도이치";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String opname="";
		
		System.out.println(length);
		System.out.println(splitcom[0].toString());
		if (splitcom.length == 7) {//변경예정 
			opname = "o.opname like= %";
		} else {
			for (int i = 0; i < length; i++) {
				if(opname.length()==0){
					opname+= "o.opname ='"+splitcom[i].toString()+"'";
				}else{
					opname+=" or o.opname ='"+splitcom[i].toString()+"'";
				}
				
			}
			
		}
		opname +=" ";
		System.out.println(opname);
	}
		
	

}
