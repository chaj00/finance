package product.etc;

public class std {
	
	public static void main(String[] args){
		String test = "0.5-,0.5-5,5-10,10-15,15-25,25-";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
		String std;
		System.out.println(length);
		if (splitcom.length == 5 | splitcom.length ==0) {
			std = "p.std like %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("0.5")) {
							query += "(p.std <"
									+ Float.parseFloat(words[0]) /100 + ")";
							System.out.println(query);
						} else {
							query += "(p.std >"
									+ Float.parseFloat(words[0]) / 100 + ")";
						}

					} else {
						if (words[0].toString().equals("1")) {
							query += " or p.std <"
									+ Float.parseFloat(words[0]) + ")";
						} else {
							query += " or (p.std >"
									+ Float.parseFloat(words[0]) / 100 + ")";
						}
					}
				} else {
					if (query.length() == 0) {
						query += "(p.std BETWEEN ("
								+ Float.parseFloat(words[0]) / 100 + ")"
								+ " and (" + Float.parseFloat(words[1]) / 100
								+ "))";

					} else {
						query += " or (p.std BETWEEN ("
								+ Float.parseFloat(words[0]) / 100 + ")"
								+ " and (" + Float.parseFloat(words[1]) / 100
								+ "))";

						System.out.println("test2" + query);
					}

				}

			}

			std = "(" + query + ")";

		}
		System.out.println("std : " + std);

	}

}
