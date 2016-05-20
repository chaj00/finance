package product.dao;

import static fw.JdbcTemplate.close;
import static fw.Query.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.apache.tomcat.util.digester.RuleSet;

import product.dto.ProductDTO;

public class ProductDAOImpl implements ProductDAO{

	@Override
	public ArrayList<String> opNameselect(Connection con) throws SQLException {
		ArrayList<String> opNamelist = new ArrayList<String>();
		String opname;
		System.out.println("dao");
		PreparedStatement ptmt = con.prepareStatement(PRD_SELECT_OpName);
		ResultSet rs = ptmt.executeQuery();
		while(rs.next()){
			opNamelist.add(rs.getString(1));
		}
		close(rs);
		close(ptmt);
		return opNamelist;
	}

	@Override
	public ArrayList<ProductDTO> select(Connection con) throws SQLException {
		ArrayList<ProductDTO> prdlist = new ArrayList<ProductDTO>();
		ProductDTO prd = null;
		System.out.println("dao");
		PreparedStatement ptmt = con.prepareStatement(PRD_SELECTALL);
		ResultSet rs = ptmt.executeQuery();
		while(rs.next()){
			prd = new ProductDTO(rs.getString(1),
				rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)
				, rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),rs.getString(12));
			prdlist.add(prd);
		}
			/*int length = prdlist.size();
			for(int i=0; i<length; i++){
				ProductDTO prd2 = prdlist.get(i);
				System.out.println(prd2.getOpname()+prd2.getTitle()+prd2.getPrdate()+prd2.getClassify()+prd2.getType()
				+prd2.getScale()+prd2.getCharge()+prd2.getOneprofit()+prd2.getThreeprofit()+
				prd2.getSixprofit()+prd2.getTwelveprofit()+prd2.getStd());
			

			}*/
		close(rs);
		close(ptmt);
		return prdlist;
	}

	@Override
	public ArrayList<ProductDTO> search(Connection con, ProductDTO prd)
			throws SQLException {
		System.out.println("dao¿¡ ³Ñ¾î¿È");
		ArrayList<ProductDTO> prdlist = new ArrayList<ProductDTO>();
		ProductDTO product = null;
		String classify=prd.getClassify();
		String type =prd.getType();
		String scale = prd.getScale();
		String charge = prd.getCharge();
		String profit = prd.getProfit();
		String std = prd.getStd();
		String opname = prd.getOpname();
		StringBuffer sql = new StringBuffer();
		String query ="select o.opname,p.title,p.prdate,p.classify,p.type,p.scale,p.charge,p.oneprofit, "
					 +"p.threeprofit, p.sixprofit, p.twelveprofit, p.std "
					 +"from PRODUCTS p, OPERATORS o "
					 +"where o.OPCODE = p.OPCODE "
					 +"and "
					 +classify+" and "+type+" and "+scale+" and "+charge+" and "+profit+" and "+std+" and "+opname;
		
		sql.append(query);
		System.out.println(sql.toString());
		
		Statement stmt = con.createStatement();
		ResultSet rs =stmt.executeQuery(sql.toString());
		
		while(rs.next()){
			product = new ProductDTO(rs.getString(1),
				rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)
				, rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),rs.getString(12));
			prdlist.add(product);
		}
		int length = prdlist.size();
	/*	for(int i=0; i<length; i++){
			ProductDTO prd2 = prdlist.get(i);
			System.out.println(prd2.getOpname()+prd2.getTitle()+prd2.getPrdate()+prd2.getClassify()+prd2.getType()
			+prd2.getScale()+prd2.getCharge()+prd2.getOneprofit()+prd2.getThreeprofit()+
			prd2.getSixprofit()+prd2.getTwelveprofit()+prd2.getStd());
		
		}*/
		
		close(rs);
		close(stmt);
		
		return prdlist;
	}

	@Override
	public ArrayList<ProductDTO> searchOpname(Connection con, String opname)
			throws SQLException {
		System.out.println("dao µé¾î¿È====>"+opname);
		ArrayList<ProductDTO> prdlist = new ArrayList<ProductDTO>();
		ProductDTO prd = null;
		PreparedStatement ptmt = con.prepareStatement(PRD_SEARCH_OpName);
		ptmt.setString(1, "%"+opname+"%");
		ResultSet rs = ptmt.executeQuery();
		
		while(rs.next()){
			prd = new ProductDTO(rs.getString(1),
				rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6)
				, rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),rs.getString(12));
			prdlist.add(prd);
		}
		int length = prdlist.size();
		for(int i=0; i<length; i++){
			ProductDTO prd2 = prdlist.get(i);
			System.out.println(prd2.getOpname()+prd2.getTitle()+prd2.getPrdate()+prd2.getClassify()+prd2.getType()
			+prd2.getScale()+prd2.getCharge()+prd2.getOneprofit()+prd2.getThreeprofit()+
			prd2.getSixprofit()+prd2.getTwelveprofit()+prd2.getStd());
		

		}
		close(rs);
		close(ptmt);
		return prdlist;
	}

}
