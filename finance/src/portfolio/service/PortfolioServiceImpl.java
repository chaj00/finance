package portfolio.service;

import static fw.JdbcTemplate.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;


import portfolio.dao.PortfolioDAO;
import portfolio.dao.PortfolioDAOImpl;
import portfolio.dto.PortfolioDTO;


public class PortfolioServiceImpl implements PortfolioService{

	//초고위험
	@Override
	public ArrayList<PortfolioDTO> getPlist(String type, String std, String rownum) {
		ArrayList<PortfolioDTO> pf_plist = new ArrayList<PortfolioDTO>();
		
//		System.out.println(type + std + rownum);
		Connection con = getConnect();
		PortfolioDAO dao = new PortfolioDAOImpl();
		
		try{
			pf_plist = dao.getPlist(type, std, rownum, con);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return pf_plist;
	
	}







}
