package product.etc;

public class type {
	public static void main(String[] args){
		//String test = "주식형, 주식혼합형, 채권혼합형, 채권형, 인덱스, MMF, 파생상품, 기타";
		String test = "주식형,채권혼합형,채권형,인덱스,MMF,파생상품,기타";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String type="";
		
		System.out.println(length);
		System.out.println(splitcom[0].toString());
		if (splitcom.length == 8) {
			type = "p.type like= %";
		} else {
			for (int i = 0; i < length; i++) {
				if(type.length()==0){
					type+= "p.type ='"+splitcom[i].toString()+"'";
				}else{
					type+=" or p.type ='"+splitcom[i].toString()+"'";
				}
				
			}
			
		}
		type +=" ";
		System.out.println(type);
	}
		
	

}
