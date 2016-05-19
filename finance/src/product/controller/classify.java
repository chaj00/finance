package product.controller;

public class classify {

	public static void main(String[] args) {
		String test = "±¹³»";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String classify;
		
		System.out.println(length);
		System.out.println(splitcom[0].toString());
		if (splitcom.length == 2) {
			classify = "p.classify like= %";
		} else {
			classify = "p.type = '"+splitcom[0].toString()+"'";
		}
		
		System.out.println(classify);
	}

}
