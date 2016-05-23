package portfolio.service;

import static fw.JdbcTemplate.*;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;


import portfolio.dao.PortfolioDAO;
import portfolio.dao.PortfolioDAOImpl;
import portfolio.dto.PortfolioDTO;

public class PortfolioServiceImpl implements PortfolioService{

	//�ʰ�����
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
		//String str = " type \\= \'�Ļ���ǰ\'"; //" '�ֽ���' or type = '�Ļ���ǰ' ";
		//System.out.println(str);
		
		//�ʰ�����
		obj.getPlist(" type='�ֽ���' and ", " and std >= 25 ", "10");
		obj.getPlist(" type='�Ļ���ǰ' and ", " and std >= 25 ", "10");
		obj.getPlist(" type='ä����' and ", " ", "10");
		obj.getPlist(" type<>'�Ļ���ǰ' and type<>'�ֽ���' and type<>'ä����' and ", " ", "10");
		//������
		obj.getPlist(" type='�ֽ���' and ", " and std > 15 and std < 25 ", "10");
		obj.getPlist(" type='�Ļ���ǰ' and ", " and std > 15 and std < 25 ", "10");
		//������
		obj.getPlist(" type='�ֽ���' and ", " and std > 10 and std < 15", "10");
		obj.getPlist(" type='�Ļ���ǰ' and ", " and std > 10 and std < 15", "10");
		//������
		obj.getPlist(" type='�ֽ���' and ", " and std > 5 and std < 10", "10");
		obj.getPlist(" type='�Ļ���ǰ' and ", " and std > 5 and std < 10", "10");
		//��������
		obj.getPlist(" type='�ֽ���' and ", " and std > 5 and std < 10", "10");
		obj.getPlist(" type='�Ļ���ǰ' and ", " ", "10");


		
		System.out.println("good");
	}




}
