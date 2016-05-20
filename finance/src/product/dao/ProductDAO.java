package product.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dto.ProductDTO;

public interface ProductDAO {

	//���� ��ȸ
	ArrayList<String> opNameselect(Connection con) throws SQLException;
	
	//��ȸ �ݵ��ǰ ��ȸ
	ArrayList<ProductDTO> select(Connection con) throws SQLException;
	
	//��ȸ �ݵ��ǰ ��ȸ
	ArrayList<ProductDTO> search(Connection con, ProductDTO prd) throws SQLException;
	
	//��ȸ �ݵ��ǰ ��ȸ
		ArrayList<ProductDTO> searchOpname(Connection con, String opname) throws SQLException;
	
}
