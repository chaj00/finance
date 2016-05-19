package product.logic;

import product.dto.ProductDTO;

public interface ProductLogic {
	public ProductDTO convert(ProductDTO prd);
	public String classify(String classify);
	public String type(String type);
	public String prdate(String prdate);
	public String scale(String scale);
	public String profit(String profit);
	public String charge(String charge);
	public String std(String std);
	public String opname(String opname);
		
}
