package portfolio.service;

import java.util.ArrayList;

import portfolio.dto.PortfolioDTO;


public interface PortfolioService {

	ArrayList<PortfolioDTO> getPlist(String type, String std, String riskpoint);

	
}
