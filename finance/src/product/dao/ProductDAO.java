package product.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dto.ProductDTO;

public interface ProductDAO {

	//운용사 조회
	ArrayList<String> opNameselect(Connection con) throws SQLException;
	
	//전회 펀드상품 조회
	ArrayList<ProductDTO> select(Connection con) throws SQLException;
	
	//전회 펀드상품 조회
	ArrayList<ProductDTO> search(Connection con, ProductDTO prd) throws SQLException;
	
	//전회 펀드상품 조회
		ArrayList<ProductDTO> searchOpname(Connection con, String opname) throws SQLException;
	
}
