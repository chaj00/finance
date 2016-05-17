package product.dao;

import static fw.JdbcTemplate.close;
import static fw.Query.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

}
