package product.service;

import static fw.JdbcTemplate.getConnect;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import product.dao.ProductDAO;
import product.dao.ProductDAOImpl;
import product.dto.ProductDTO;
import product.logic.ProductLogic;
import product.logic.ProductLogicImpl;

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
		System.out.println("dto로 넘어옴");
		ArrayList<ProductDTO> productlist = null;
		ProductLogic logic = new ProductLogicImpl();
		ProductDAO dao = new ProductDAOImpl();
		ProductDTO drdTodao = null;
		Connection con = getConnect();
		drdTodao =logic.convert(prd);
		
		try {
			productlist = dao.search(con, drdTodao);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return productlist;
	}

	@Override
	public ArrayList<ProductDTO> searchOpname(String opname) {
		System.out.println("opname 서비스 들어옴==>"+ opname);
		ArrayList<ProductDTO> productlist = null;
		Connection con = getConnect();
		ProductDAO dao = new ProductDAOImpl();
		try {
			productlist = dao.searchOpname(con, opname);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return productlist;
	}
	
	
}
