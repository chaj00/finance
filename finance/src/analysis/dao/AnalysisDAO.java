package analysis.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import analysis.dto.EnterpriseDTO;
import analysis.dto.StockinfoDTO;

public interface AnalysisDAO {
	//��ü ��� ���� ��ȸ�ϱ�
	ArrayList<EnterpriseDTO> select_ent(Connection con, String encode) throws SQLException;
	ArrayList<StockinfoDTO> select_sto(Connection con) throws SQLException;

}
