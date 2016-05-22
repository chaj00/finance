package market.logic;

import java.io.IOException;

import market.dto.MarketIndexDTO;

public interface MarketLogic {
	public MarketIndexDTO marketindex() throws IOException;
}
