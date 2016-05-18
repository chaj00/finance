package product.controller;

public class scale {

	public static void main(String[] args) {

		String test = "10-30,30-50,50-100,500-";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
		String query2 = "";
		String scale;
		System.out.println(length);
		if (splitcom.length == 5) {
			scale = "p.scale like= %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("10")) {
							query += "p.scale<" + words[0];
						} else {
							query += "p.scale>" + words[0];
						}

					} else {
						if (words[0].toString().equals("10")) {
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

			scale = query;
			System.out.println("scale : " + scale);
		}
		System.out.println(scale);
	}

}
