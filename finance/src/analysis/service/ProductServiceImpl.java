package analysis.service;

import java.sql.*;

import static fw.JdbcTemplate.*;

import java.util.ArrayList;

import analysis.dao.AnalysisDAO;
import analysis.dao.AnalysisDAOImpl;
import analysis.dto.BpsepsDTO;
import analysis.dto.EnterpriseDTO;
import analysis.dto.EnterpriseinfoDTO;
import analysis.dto.StockinfoDTO;
import analysis.logic.LOGIC;
import analysis.logic.LOGICimpl;



public class ProductServiceImpl implements ProductService{
	
	@Override
	public ArrayList<EnterpriseDTO> select_ent(String encode) {
		ArrayList<EnterpriseDTO> list = new ArrayList<EnterpriseDTO>();
		Connection con = getConnect();
		AnalysisDAO dao = new AnalysisDAOImpl();
		try {
			list = dao.select_ent(con, encode);
			System.out.println("service=>" + list.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public ArrayList<EnterpriseinfoDTO> select_entinfo(String encode) {
		ArrayList<EnterpriseinfoDTO> list = new ArrayList<EnterpriseinfoDTO>();
		Connection con = getConnect();
		AnalysisDAO dao = new AnalysisDAOImpl();
		try {
			list = dao.select_entinfo(con, encode);
//			System.out.println("service=>" + list.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public ArrayList<StockinfoDTO> select_sto(String encode) {
		ArrayList<StockinfoDTO> list = new ArrayList<StockinfoDTO>();
		Connection con = getConnect();
		AnalysisDAO dao = new AnalysisDAOImpl();
		try {
			list = dao.select_sto(con);
//			System.out.println("service=>" + list.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@Override
	public ArrayList<BpsepsDTO> bps(ArrayList<EnterpriseinfoDTO> list) {
		LOGIC logic = new LOGICimpl();
		
		ArrayList<BpsepsDTO> bpsEpsList = logic.bps(list);
//		System.out.println("service>>"+bpsEpsList);
		return bpsEpsList;
	}


}
