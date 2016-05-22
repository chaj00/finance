package market.service;

import java.io.IOException;

import market.dto.MarketIndexDTO;
import market.logic.MarketLogic;
import market.logic.MarketLogicImpl;

public class MarketSrviceImpl implements MarketService{

	@Override
	public MarketIndexDTO marketindex() {
		MarketIndexDTO indexList = new MarketIndexDTO();
		MarketLogic logic = new MarketLogicImpl();
		
		try {
			
			indexList = logic.marketindex();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return indexList;
	}

}
