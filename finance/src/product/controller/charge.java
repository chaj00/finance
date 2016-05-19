package product.controller;

public class charge {

	/*and ((p.CHARGE BETWEEN 0 and 0.01)
			or (p.CHARGE BETWEEN 0.01 and 0.02)
			or (p.CHARGE BETWEEN 0.02 and 0.03)
			or (p.CHARGE <0)
*/
	public static void main(String[] args) {
		String test = "1-,1-2,2-3,3-";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
		String charge;
		System.out.println(length);
		if (splitcom.length == 4 | splitcom.length ==0) {
			charge = "p.charge like %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("1")) {
							query += "(p.CHARGE <"
									+ Float.parseFloat(words[0]) /100 + ")";
							System.out.println(query);
						} else {
							query += "(p.CHARGE >"
									+ Float.parseFloat(words[0]) / 100 + ")";
						}

					} else {
						if (words[0].toString().equals("1")) {
							query += " or p.CHARGE <"
									+ Float.parseFloat(words[0]) + ")";
						} else {
							query += " or (p.CHARGE >"
									+ Float.parseFloat(words[0]) / 100 + ")";
						}
					}
				} else {
					if (query.length() == 0) {
						query += "(p.CHARGE BETWEEN ("
								+ Float.parseFloat(words[0]) / 100 + ")"
								+ " and (" + Float.parseFloat(words[1]) / 100
								+ "))";

					} else {
						query += " or (p.CHARGE BETWEEN ("
								+ Float.parseFloat(words[0]) / 100 + ")"
								+ " and (" + Float.parseFloat(words[1]) / 100
								+ "))";

						System.out.println("test2" + query);
					}

				}

			}

			charge = "(" + query + ")";

		}
		System.out.println("profit : " + charge);

	}

}
