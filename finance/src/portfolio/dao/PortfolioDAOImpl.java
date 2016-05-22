package portfolio.dao;

import static fw.PortfolioQuery.*;
import static fw.JdbcTemplate.*;
import java.sql.*;
import java.util.ArrayList;

import portfolio.dto.PortfolioDTO;

public class PortfolioDAOImpl implements PortfolioDAO{

	@Override
	public ArrayList<PortfolioDTO> getPlist(String type, String std, String rownum, Connection con) throws SQLException {
		ArrayList<PortfolioDTO> pf_plist = new ArrayList<PortfolioDTO>();
		PortfolioDTO dto = null;
		System.out.println("--DAO-- checked!");
		
		Statement stmt = con.createStatement();
		StringBuffer test = new StringBuffer();
		test.append(PLIST1);
		test.append(type);//" type='ÁÖ½ÄÇü' and "
		test.append(PLIST2);
		test.append(std); //" and std >= 25 "
		test.append(PLIST3);
		test.append(type);
		test.append(PLIST4);
		test.append(std);
		test.append(PLIST5);
		test.append(PLIST6);
		test.append(rownum);
		//test.append(PLIST7);
		System.out.println(test.toString());

		 
		ResultSet rs = stmt.executeQuery(test.toString());

		while(rs.next()){
			dto = new PortfolioDTO
					(
					rs.getString(1), 
					rs.getString(2), 
					rs.getString(3), 
					rs.getString(4),
					rs.getDouble(5)*100, 
					rs.getString(6));
			pf_plist.add(dto);
		}
		System.out.println(pf_plist.size());
		close(rs);
		close(stmt);
		
		return pf_plist;
	}
}
