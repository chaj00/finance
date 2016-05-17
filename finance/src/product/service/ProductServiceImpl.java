package product.service;

import static fw.JdbcTemplate.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dao.ProductDAO;
import product.dao.ProductDAOImpl;
import product.dto.ProductDTO;

public class ProductServiceImpl implements ProductService{

	@Override
	public ArrayList<String> opNameSelect() {
		ArrayList<String> opNamelist = new ArrayList<String>();
		System.out.println("서비스");
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		try{
			opNamelist = dao.opNameselect(con);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return opNamelist;
		
	}

	@Override
	public ArrayList<ProductDTO> select() {
		ArrayList<ProductDTO> productlist = new ArrayList<ProductDTO>();
		System.out.println("서비스");
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		try{
			productlist = dao.select(con);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return productlist;
	}

	@Override
	public ArrayList<ProductDTO> search(ProductDTO prd) {
		ArrayList<ProductDTO> productlist = null;
		
		return productlist;
	}
	
	
}
