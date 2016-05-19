package analysis.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import analysis.dto.BpsepsDTO;
import analysis.dto.EnterpriseDTO;
import analysis.dto.StockinfoDTO;


public interface ProductService {
	
	// 기업 정보 조회하기
	ArrayList<EnterpriseDTO> select_ent(String encode);
	
	// 주가 정보 조회하기
	ArrayList<StockinfoDTO> select_sto(String encode);
	
	//PER, PBR밴드에 필요한 값 계산
	ArrayList<BpsepsDTO> bps(ArrayList<EnterpriseDTO> list);






}
