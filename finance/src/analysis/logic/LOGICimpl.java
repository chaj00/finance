package analysis.logic;

import java.util.ArrayList;

import analysis.dto.BpsepsDTO;
import analysis.dto.EnterpriseinfoDTO;



public class LOGICimpl implements LOGIC {
	
	
	@Override
	public ArrayList<BpsepsDTO> bps(ArrayList<EnterpriseinfoDTO> list) {
		EnterpriseinfoDTO info = new EnterpriseinfoDTO();
		//return�� �� ����(bpsEpsList) ����
		ArrayList<BpsepsDTO> bpsEpsList = new ArrayList<BpsepsDTO>();
		
		for(int i =0 ; i<list.size();i++){
			info = list.get(i);
//			<enterpriseinfo���� �� �̾ƿͼ� ���>
			//1�б� ����, �Ѽ�, �ڻ�, ��ä
			double fiNetProfit = info.getFinetprofit();	
			int fiCapitalStock = info.getFicapitalstock();
			int fiAsset = info.getFiasset();
			int fiDebt = info.getFidept();
			
			//2�б� ����, �Ѽ�, �ڻ�, ��ä
			double seNetProfit = info.getSenetprofit();	
			int seCapitalStock = info.getSecapitalstock();
			int seAsset = info.getSeasset();
			int seDebt = info.getSedept();
			
			//3�б� ����, �Ѽ�, �ڻ�, ��ä
			double thNetProfit = info.getThnetprofit();	
			int thCapitalStock = info.getThcapitalstock();
			int thAsset = info.getThasset();
			int thDebt = info.getThdept();
			
			//4�б� ����, �Ѽ�, �ڻ�, ��ä
			double foNetProfit = info.getFonetprofit();	
			int foCapitalStock = info.getFocapitalstock();
			int foAsset = info.getFoasset();
			int foDebt = info.getFodept();
			
//			<�б⺰ EPS, BPS���>
			//1�б� EPS, BPS ���
			double fiEps = (fiNetProfit/fiCapitalStock)*1000000 ;
			double abc1 = fiAsset-fiDebt;
			double abcc1 = abc1*1000000;
			double fiBps = abcc1/fiCapitalStock;
			
			//2�б� EPS, BPS ���
			double seEps = (seNetProfit/seCapitalStock)*1000000 ;
			double abc2 = seAsset-seDebt;
			double abcc2 = abc2*1000000;
			double seBps = abcc2/seCapitalStock;
			
			//3�б� EPS, BPS ���
			double thEps = (thNetProfit/thCapitalStock)*1000000 ;
			double abc3 = thAsset-thDebt;
			double abcc3 = abc3*1000000;
			double thBps = abcc3/thCapitalStock;
			
			//4�б� EPS, BPS ���
			double foEps = (foNetProfit/foCapitalStock)*1000000 ;
			double abc4 = foAsset-foDebt;
			double abcc4 = abc4*1000000;
			double foBps = abcc4/foCapitalStock;
			
			
			
//			<1�б� EPS, BPS��  PER, PBR��忡 ������ �� ��� > 
//			PER��� => EPS*6 9 12 16, PBR��� => BPS*1 2 3 4 
//			1�б� ��忡 �� EPS, BPS ��
			//DTO_BPSEPS bpsEps������ ���� �����ؼ� �� ����
			BpsepsDTO bpsEps = new BpsepsDTO();
			bpsEps.setFiEps6(fiEps*6); 
			bpsEps.setFiEps9(fiEps*9);
			bpsEps.setFiEps12(fiEps*12);
			bpsEps.setFiEps16(fiEps*16);
			bpsEps.setFiBps(fiBps*0.8);   //1��� �̹Ƿ� ��ٷ� ���
			bpsEps.setFiBps2(fiBps*1.2);
			bpsEps.setFiBps3(fiBps*1.6);
			bpsEps.setFiBps4(fiBps*2.0);
			
//			2�б� ��忡 �� EPS, BPS ��
			bpsEps.setSeEps6(seEps*6);
			bpsEps.setSeEps9(seEps*9);
			bpsEps.setSeEps12(seEps*12);
			bpsEps.setSeEps16(seEps*16);
			bpsEps.setSeBps(seBps*0.8);   //1��� �̹Ƿ� ��ٷ� ���
			bpsEps.setSeBps2(seBps*1.2);
			bpsEps.setSeBps3(seBps*1.6);
			bpsEps.setSeBps4(seBps*2.0);
			
//			3�б� ��忡 �� EPS, BPS ��
			bpsEps.setThEps6(thEps*6);
			bpsEps.setThEps9(thEps*9);
			bpsEps.setThEps12(thEps*12);
			bpsEps.setThEps16(thEps*16);
			bpsEps.setThBps(thBps*0.8);   //1��� �̹Ƿ� ��ٷ� ���
			bpsEps.setThBps2(thBps*1.2);
			bpsEps.setThBps3(thBps*1.6);
			bpsEps.setThBps4(thBps*2.0);
			
			
//			4�б� ��忡 �� EPS, BPS ��
			bpsEps.setFoEps6(foEps*6);
			bpsEps.setFoEps9(foEps*9);
			bpsEps.setFoEps12(foEps*12);
			bpsEps.setFoEps16(foEps*16);
			bpsEps.setFoBps(foBps*0.8);   //1��� �̹Ƿ� ��ٷ� ���
			bpsEps.setFoBps2(foBps*1.2);
			bpsEps.setFoBps3(foBps*1.6);
			bpsEps.setFoBps4(foBps*2.0);
			
//			System.out.println(fiEps+seEps+ thEps+foEps);
//			System.out.println(fiEps12);
			
			bpsEpsList.add(bpsEps);
			
		}
//		System.out.println("logic>>"+bpsEpsList);
		return bpsEpsList;
	}
}
