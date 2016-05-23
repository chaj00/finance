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
	public ArrayList<PortfolioDTO> getPlist(String type, String std, String riskpoint) {
		ArrayList<PortfolioDTO> pf_plist = new ArrayList<PortfolioDTO>();
		
		System.out.println(type + std + riskpoint);
		Connection con = getConnect();
		PortfolioDAO dao = new PortfolioDAOImpl();
		
		try{
			pf_plist = dao.getPlist(type, std, riskpoint, con);
		}catch(SQLException e){
			e.printStackTrace();
		}
		return pf_plist;
	
	}


	
	public static void main(String[] args) {
		PortfolioServiceImpl obj = new PortfolioServiceImpl();
		//String str = " type \\= \'파생상품\'"; //" '주식형' or type = '파생상품' ";
		//System.out.println(str);
		
		//초고위험
		obj.getPlist(" type='주식형' and ", " and std >= 25 ", "10");
		obj.getPlist(" type='파생상품' and ", " and std >= 25 ", "10");
		obj.getPlist(" type='채권형' and ", " ", "10");
		obj.getPlist(" type<>'파생상품' and type<>'주식형' and type<>'채권형' and ", " ", "10");
		//고위험
		obj.getPlist(" type='주식형' and ", " and std > 15 and std < 25 ", "10");
		obj.getPlist(" type='파생상품' and ", " and std > 15 and std < 25 ", "10");
		//중위험
		obj.getPlist(" type='주식형' and ", " and std > 10 and std < 15", "10");
		obj.getPlist(" type='파생상품' and ", " and std > 10 and std < 15", "10");
		//저위험
		obj.getPlist(" type='주식형' and ", " and std > 5 and std < 10", "10");
		obj.getPlist(" type='파생상품' and ", " and std > 5 and std < 10", "10");
		//초저위험
		obj.getPlist(" type='주식형' and ", " and std > 5 and std < 10", "10");
		obj.getPlist(" type='파생상품' and ", " ", "10");


		
		System.out.println("good");
	}




}
