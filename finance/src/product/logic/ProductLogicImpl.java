package product.logic;

/*
 *classify = �ݵ屸�� class = chk1 name=ForgnSectCd 2��
 *type= �ݵ�����  class = chk2 name="FundInvstTypeCd" 8��
 *prdate= �����Ⱓ  class = chk3 name="SetPeriodMM" 6��
 *scale= �Ѽ�����  class = chk4 name=kfrEstabAmUk 6��
 *profit = ���ͷ� class = chk5 name="Yield" 7��
 *charge = �Ѻ���  class = chk6 name="TotRwrt" 4��
 *std= ������   class = chk7 name="StdGrade" 6��
 *opname = ����    class = chk8 name="OperCoCdList" 38��
 */


import product.dto.ProductDTO;

public class ProductLogicImpl implements ProductLogic {

	@Override
	public ProductDTO convert(ProductDTO prd) {

		//System.out.println("Logic ����");
		prd.setClassify(classify(prd.getClassify()));
		prd.setType(type(prd.getType()));
		prd.setPrdate(prdate(prd.getPrdate()));
		prd.setScale(scale(prd.getScale()));
		prd.setProfit(profit(prd.getProfit()));
		prd.setCharge(charge(prd.getCharge()));
		prd.setStd(std(prd.getStd()));
		prd.setOpname(opname(prd.getOpname()));

		return prd;
	}

	@Override
	public String classify(String classify) {
		//System.out.println("**********************************************************************");
		//System.out.println("classify ����");
		String test = classify;
		String classToQuery ="";
		String[] splitcom = test.split(",");
		int length = splitcom.length;

		//System.out.println(length);
		//System.out.println(splitcom[0].toString());
		if (splitcom.length == 2 | splitcom[0]=="") {
			classToQuery = "(p.classify like '%')";
		} else {
			classToQuery = "(p.classify = '" + splitcom[0].toString() + "')";
		}

		//System.out.println(classToQuery);
		//System.out.println("**********************************************************************");
		return classToQuery;
	}

	@Override
	public String type(String type) {
		//System.out.println("**********************************************************************");
		//System.out.println("type ����");
		//System.out.println("type ����");
		String test = type;
		String query = "";
		String typeToQuery = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;

		//System.out.println(length);
		//System.out.println(splitcom[0].toString());
		if (splitcom.length == 8 | splitcom[0]=="") {
			query = "p.type like '%'";
		} else {
			for (int i = 0; i < length; i++) {
				if (query.length() == 0) {
					query += "p.type ='" + splitcom[i].toString() + "'";
				} else {
					query += " or p.type ='" + splitcom[i].toString()
							+ "'";
				}
			
			}

		}
		typeToQuery = "("+query+")";
		
		//System.out.println(typeToQuery);
		//System.out.println("**********************************************************************");

		return typeToQuery;
	}

	@Override
	public String prdate(String prdate) {
		/*System.out.println("**********************************************************************");
		System.out.println("prdate ����");*/
		String test = prdate;
		//System.out.println("test : "+test.length());
		String prdateToQuery = "";
		String query = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;
		

		//System.out.println(length);

		if (splitcom.length == 6 | splitcom[0]=="") {

			prdateToQuery = "p.prdate like '%'";
		} else {
			for (int i = 0; i < length; i++) {
				//System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("1")) {
							query += "(sysdate - " + Integer.parseInt(words[0])
									* 30 + "<p.prdate)";
							//System.out.println(query);
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

						//System.out.println("test2" + query);
					}

				}

			}

			prdateToQuery = "(" + query + ")";

		}
	/*	System.out.println("prdateToQuery : " + prdateToQuery);
		System.out.println("**********************************************************************");
*/
		return prdateToQuery;
	}

	@Override
	public String scale(String scale) {
		/*System.out.println("**********************************************************************");
		System.out.println("scale ����");*/
		String test = scale;
		String query = "";
		String scaleToQuery = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;

		System.out.println(length);
		if (splitcom.length == 6 | splitcom[0]=="") {
			scaleToQuery = "p.scale like '%'";
		} else {
			for (int i = 0; i < length; i++) {
				//System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("10")) {
							query += "(p.scale <" + Integer.parseInt(words[0])
									+ ")";
							//System.out.println(query);
						} else {
							query += "(p.scale >" + Integer.parseInt(words[0])
									+ ")";
						}

					} else {
						if (words[0].toString().equals("10")) {
							query += " or p.scale <"
									+ Integer.parseInt(words[0]) + ")";
						} else {
							query += " or (p.scale >"
									+ Integer.parseInt(words[0]) + ")";
						}
					}
				} else {
					if (query.length() == 0) {
						query += "(p.scale BETWEEN ("
								+ Integer.parseInt(words[0]) + ")" + " and ("
								+ Integer.parseInt(words[1]) + "))";

					} else {
						query += " or (p.scale BETWEEN ("
								+ Integer.parseInt(words[0]) + ")" + " and ("
								+ Integer.parseInt(words[1]) + "))";

						System.out.println("test2" + query);
					}

				}

			}

			scaleToQuery = "(" + query + ")";

		}
	/*	System.out.println("scale : " + scaleToQuery);
		System.out.println("**********************************************************************");
*/
		return scaleToQuery;
	}

	@Override
	public String profit(String profit) {
/*		System.out.println("**********************************************************************");
		System.out.println("profit ����");
*/		String test = profit;
		String query = "";
		String profitToQuery = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;

//		System.out.println(length);
		if (splitcom.length == 7 | splitcom[0]=="") {
			profitToQuery = "p.THREEPROFIT like '%'";
		} else {
			for (int i = 0; i < length; i++) {
	//			System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("0")) {
							query += "(p.THREEPROFIT <"
									+ Float.parseFloat(words[0]) + ")";
		//					System.out.println(query);
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

			//			System.out.println("test2" + query);
					}

				}

			}

			profitToQuery = "(" + query + ")";

		}
	/*	System.out.println("profit : " + profitToQuery);
		System.out.println("**********************************************************************");*/
		return profitToQuery;
	}

	@Override
	public String charge(String charge) {
	/*	System.out.println("**********************************************************************");
		System.out.println("charge ����");*/
		String test = charge;
		String query = "";
		String chargeToQuery = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;

		//System.out.println(length);
		if (splitcom.length == 4 | splitcom[0]=="") {
			chargeToQuery = "p.charge like '%'";
		} else {
			for (int i = 0; i < length; i++) {
				//System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("1")) {
							query += "(p.CHARGE <" + Float.parseFloat(words[0])
									/ 100 + ")";
							//System.out.println(query);
						} else {
							query += "(p.CHARGE >" + Float.parseFloat(words[0])
									/ 100 + ")";
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

						//System.out.println("test2" + query);
					}

				}

			}

			chargeToQuery = "(" + query + ")";

		}
		/*System.out.println("chargeToQuery : " + chargeToQuery);
		System.out.println("**********************************************************************");
*/		return chargeToQuery;
	}

	@Override
	public String std(String std) {
/*		System.out.println("**********************************************************************");
		System.out.println("std ����");
*/		String test = std;
		String query = "";
		String stdToQuery = "";
		String[] splitcom = test.split(",");
		int length = splitcom.length;

//		System.out.println(length);
		if (splitcom.length == 6 | splitcom[0]=="") {
			stdToQuery = "p.std like '%'";
		} else {
			for (int i = 0; i < length; i++) {
		//		System.out.println(splitcom[i]);
				String[] words = splitcom[i].split("-");

				if (words.length == 1) {
					if (query.length() == 0) {
						if (words[0].toString().equals("0.5")) {
							query += "(p.std <" + Float.parseFloat(words[0])
									/ 100 + ")";
	//						System.out.println(query);
						} else {
							query += "(p.std >" + Float.parseFloat(words[0])
									/ 100 + ")";
						}

					} else {
						if (words[0].toString().equals("1")) {
							query += " or p.std <" + Float.parseFloat(words[0])
									+ ")";
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

			//			System.out.println("test2" + query);
					}

				}

			}

			stdToQuery = "(" + query + ")";

		}
		/*System.out.println("stdToQuery : " + stdToQuery);
		System.out.println("**********************************************************************");*/
		return stdToQuery;
	}

	@Override
	public String opname(String opname) {
		/*System.out.println("**********************************************************************");
		System.out.println("opname ����");*/
		String test = opname;
		String opnameToQuery = "";
		String query = "";

		String[] splitcom = test.split(",");
		int length = splitcom.length;

/*		System.out.println(length);
		System.out.println(splitcom[0].toString());*/
		if (splitcom.length == 38 | splitcom[0]=="") {// ���濹��
			query = "o.opname like '%'";
		} else {
			for (int i = 0; i < length; i++) {
				if (query.length() == 0) {
					query += "o.opname ='" + splitcom[i].toString()
							+ "'";
				} else {
					query += " or o.opname ='" + splitcom[i].toString()
							+ "'";
				}

			}

		}
		
		opnameToQuery = "("+query+")";
	/*	System.out.println(opnameToQuery);
		System.out.println("************************************************************************");*/
		return opnameToQuery;
	}

}
