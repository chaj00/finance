package product.etc;

public class scale {
	/*and ((p.scale BETWEEN (10) and (30))
			or (p.scale BETWEEN (30) and (50))
			or (p.SCALE > 500))*/

	public static void main(String[] args) {

		String test = "10-,10-30,30-50,50-100,500-";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
		String scale;
		System.out.println(length);
		if (splitcom.length == 5 | splitcom.length ==0) {
			scale = "p.scale like %";
		} else {
			for (int i = 0; i < length; i++) {
				System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("10")) {
							query += "(p.scale <"
									+ Integer.parseInt(words[0])+ ")";
							System.out.println(query);
						} else {
							query += "(p.scale >"
									+ Integer.parseInt(words[0])+ ")";
						}

					} else {
						if (words[0].toString().equals("10")) {
							query += " or p.scale <"
									+ Integer.parseInt(words[0]) + ")";
						} else {
							query += " or (p.scale >"
									+ Integer.parseInt(words[0])+ ")";
						}
					}
				} else {
					if (query.length() == 0) {
						query += "(p.scale BETWEEN ("
								+ Integer.parseInt(words[0])+ ")"
								+ " and (" + Integer.parseInt(words[1])
								+ "))";

					} else {
						query += " or (p.scale BETWEEN ("
								+ Integer.parseInt(words[0])+ ")"
								+ " and (" + Integer.parseInt(words[1])
								+ "))";

						System.out.println("test2" + query);
					}

				}

			}

			scale = "(" + query + ")";

		}
		System.out.println("profit : " + scale);

	}

}
