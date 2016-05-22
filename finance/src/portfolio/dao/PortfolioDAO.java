package portfolio.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import portfolio.dto.PortfolioDTO;

public interface PortfolioDAO {

	ArrayList<PortfolioDTO> getPlist(String type, String std, String riskpoint, 
					Connection con) throws SQLException;
}
