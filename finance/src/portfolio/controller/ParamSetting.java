package portfolio.controller;

import java.util.ArrayList;

import portfolio.dto.PortfolioDTO;
import portfolio.service.PortfolioService;
import portfolio.service.PortfolioServiceImpl;

public class ParamSetting {
	public ArrayList<PortfolioDTO> ParamSetting(String type, String std, String rownum){
		PortfolioService service = new PortfolioServiceImpl();
		String str_type = type;
		String str_std = std;
		String str_rownum = rownum;
		ArrayList<PortfolioDTO> pf_stock_list = service.getPlist(str_type, str_std, str_rownum);
		
		return pf_stock_list;
		
	}
	

	public String removeChar(String str) {
	    return str.replaceAll("[^0-9]", "");
	}
}
