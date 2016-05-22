package product.etc;

//select * from PRODUCTS where SYSDATE-180<prdate;
public class prdates {

	/*
	 * select o.opname, p.title, p.prdate, p.classify, p.type, p.scale,
	 * p.charge,p.oneprofit, p.threeprofit, p.sixprofit, p.twelveprofit, p.std
	 * from PRODUCTS p, OPERATORS o where o.OPCODE = p.OPCODE and ( (p.PRDATE
	 * BETWEEN (sysdate-360) and (sysdate-180)) or (p.PRDATE BETWEEN
	 * (sysdate-180) and (sysdate-90)) or (p.PRDATE BETWEEN (sysdate-90) and
	 * (sysdate-30)) or (sysdate-30<p.PRDATE)) ;
	 * 
	 * select * from PRODUCTS where SYSDATE-720>prdate
	 */
	public static void main(String[] args) {

		String test = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		String query = "";
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
							query += "(sysdate - " + Integer.parseInt(words[0])
									* 30 + "<p.prdate)";
							System.out.println(query);
						} else {
							query += "(sysdate - " + Integer.parseInt(words[0])
									* 30 + ">p.prdate)";
						}

					} else {
						if (words[0].toString().equals("1")) {
							query += " or (sysdate - "
									+ Integer.parseInt(words[0]) * 30
									+ "<p.prdate)";
						} else {
							query += " or (sysdate - "
									+ Integer.parseInt(words[0]) * 30
									+ ">p.prdate)";
						}
					}
				} else {
					if (query.length() == 0) {
						query += "(p.prdate between (sysdate-"
								+ Integer.parseInt(words[1]) * 30 + ")"
								+ " and (sysdate-" + Integer.parseInt(words[0])
								* 30 + "))";

					} else {
						query += " or (p.prdate between (sysdate-"
								+ Integer.parseInt(words[1]) * 30 + ")"
								+ " and (sysdate-" + Integer.parseInt(words[0])
								* 30 + "))";

						System.out.println("test2" + query);
					}

				}

			}

			prdate = "(" + query + ")";

		}
		System.out.println("prdate : " + prdate);

	}

}
