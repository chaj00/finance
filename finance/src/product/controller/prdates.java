package product.controller;
//select * from PRODUCTS where SYSDATE-180<prdate;
public class prdates {

	public static void main(String[] args) {

		String test = "1-,1-3,3-6,6-12,12-24,24-";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
		String query2 = "";
		String prdate;
		System.out.println(length);
		if (splitcom.length == 5) {
			prdate = "p.prdate like %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("1")) {
							query += "p.scale<" + Integer.parseInt(words[0])*30;
							System.out.println(query);
						} else {
							
							query += "p.scale>" + words[0];
						}

					} else {
						if (words[0].toString().equals("1")) {
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
		System.out.println(prdate);

	}

}
