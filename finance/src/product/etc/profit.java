package product.etc;

public class profit {

	/*
	 * and ((p.THREEPROFIT BETWEEN 0 and 0.1) or (p.THREEPROFIT BETWEEN 0.1 and
	 * 0.2) or (p.THREEPROFIT BETWEEN 0.2 and 0.3) or (p.THREEPROFIT <0)
	 */

	public static void main(String[] args) {
		String test = "0-,0-10,10-20,20-30,30-40,40-50,50-";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
		String profit;
		System.out.println(length);
		if (splitcom.length == 6 | splitcom.length ==0) {
			profit = "p.profit like %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("0")) {
							query += "(p.THREEPROFIT <"
									+ Float.parseFloat(words[0]) + ")";
							System.out.println(query);
						} else {
							query += "(p.THREEPROFIT >"
									+ Float.parseFloat(words[0]) / 100 + ")";
						}

					} else {
						if (words[0].toString().equals("0")) {
							query += " or p.THREEPROFIT <"
									+ Float.parseFloat(words[0]) + ")";
						} else {
							query += " or (p.THREEPROFIT >"
									+ Float.parseFloat(words[0]) / 100 + ")";
						}
					}
				} else {
					if (query.length() == 0) {
						query += "(p.THREEPROFIT BETWEEN ("
								+ Float.parseFloat(words[0]) / 100 + ")"
								+ " and (" + Float.parseFloat(words[1]) / 100
								+ "))";

					} else {
						query += " or (p.THREEPROFIT BETWEEN ("
								+ Float.parseFloat(words[0]) / 100 + ")"
								+ " and (" + Float.parseFloat(words[1]) / 100
								+ "))";

						System.out.println("test2" + query);
					}

				}

			}

			profit = "(" + query + ")";

		}
		System.out.println("profit : " + profit);

	}

}
