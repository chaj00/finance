package analysis.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import analysis.dto.BpsepsDTO;
import analysis.dto.EnterpriseDTO;
import analysis.dto.StockinfoDTO;


public interface ProductService {
	
	// ��� ���� ��ȸ�ϱ�
	ArrayList<EnterpriseDTO> select_ent(String encode);
	
	// �ְ� ���� ��ȸ�ϱ�
	ArrayList<StockinfoDTO> select_sto(String encode);
	
	//PER, PBR��忡 �ʿ��� �� ���
	ArrayList<BpsepsDTO> bps(ArrayList<EnterpriseDTO> list);






}
