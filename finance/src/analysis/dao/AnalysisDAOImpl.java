package analysis.dao;

import static fw.Query.*;
import static fw.JdbcTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import analysis.dto.EnterpriseDTO;
import analysis.dto.EnterpriseinfoDTO;
import analysis.dto.StockinfoDTO;

public class AnalysisDAOImpl implements AnalysisDAO{
	@Override
	public ArrayList<EnterpriseDTO> select_ent(Connection con, String encode) throws SQLException{
	EnterpriseDTO ent = null; // 항상 객체로 넘겨
	PreparedStatement ptmt = con.prepareStatement(ENTERPRISE);
	ptmt.setString(1, encode);
	ResultSet rs = ptmt.executeQuery();
	ArrayList<EnterpriseDTO> dlist = new ArrayList<EnterpriseDTO>();
	
	while (rs.next()) {
		ent = new EnterpriseDTO (rs.getString(1), rs.getString(2));				
		dlist.add(ent);
		System.out.println("DAO >> "+ent);								
	}
	close(rs);
	close(ptmt);
	return dlist;
	}
	
	@Override
	public ArrayList<EnterpriseinfoDTO> select_entinfo(Connection con, String encode) throws SQLException {
		EnterpriseinfoDTO entinfo = null; // 항상 객체로 넘겨
		PreparedStatement ptmt = con.prepareStatement(ENTERPRISEINFO);
		ptmt.setString(1, encode);
		ResultSet rs = ptmt.executeQuery();
		ArrayList<EnterpriseinfoDTO> dlist = new ArrayList<EnterpriseinfoDTO>();
		
		while (rs.next()) {
			entinfo = new EnterpriseinfoDTO (rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),			
														rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10),
															rs.getInt(11), rs.getInt(12), rs.getInt(13), rs.getInt(14), rs.getInt(15),
																rs.getInt(16), rs.getInt(17), rs.getInt(18), rs.getInt(18) ,rs.getInt(20),
																	rs.getInt(21), rs.getInt(22), rs.getInt(23), rs.getInt(24), rs.getInt(25), rs.getInt(26));
//				System.out.println(stoinfo);												
			dlist.add(entinfo);
		}
		
		close(rs);
		close(ptmt);
		return dlist;
	}

	@Override
	public ArrayList<StockinfoDTO> select_sto(Connection con) throws SQLException {
		StockinfoDTO stoinfo = null; // 항상 객체로 넘겨
		PreparedStatement ptmt = con.prepareStatement(STOCKINFO);
		ResultSet rs = ptmt.executeQuery();
		ArrayList<StockinfoDTO> dlist = new ArrayList<StockinfoDTO>();
		
		while (rs.next()) {
			stoinfo = new StockinfoDTO (rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5),			
														rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10),
															rs.getInt(11), rs.getInt(12), rs.getInt(13), rs.getInt(14));
																
			dlist.add(stoinfo);
		}
		
		close(rs);
		close(ptmt);
		return dlist;
	}

	
}
