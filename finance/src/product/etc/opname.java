package product.etc;

public class opname {
	public static void main(String[] args){
		//String test = "�ֽ���, �ֽ�ȥ����, ä��ȥ����, ä����, �ε���, MMF, �Ļ���ǰ, ��Ÿ";
		String test = "KB,KTB,LS,�����ǻ�,���,����ġ";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String opname="";
		
		System.out.println(length);
		System.out.println(splitcom[0].toString());
		if (splitcom.length == 7) {//���濹�� 
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
