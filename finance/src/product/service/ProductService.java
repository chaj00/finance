package product.service;

import java.util.ArrayList;

import product.dto.ProductDTO;

public interface ProductService {

	ArrayList<String> opNameSelect();
	ArrayList<ProductDTO> select(); 
	ArrayList<ProductDTO> search(ProductDTO prd);
	ArrayList<ProductDTO> searchOpname(String opname);
	
}
