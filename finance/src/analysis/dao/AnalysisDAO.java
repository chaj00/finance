package analysis.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import analysis.dto.EnterpriseDTO;
import analysis.dto.EnterpriseinfoDTO;
import analysis.dto.StockinfoDTO;

public interface AnalysisDAO {
	//전체 기업 정보 조회하기
	ArrayList<EnterpriseDTO> select_entname(Connection con) throws SQLException;
	
	ArrayList<EnterpriseinfoDTO> select_entinfo(Connection con, String encode) throws SQLException;
	
	ArrayList<StockinfoDTO> select_sto(Connection con,String encode) throws SQLException;
	
}
