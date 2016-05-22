package analysis.dto;

public class StockinfoDTO {	//������ DB�� �Ȱ���
	 String encode;
	 String year;
	 int janPrice;
	 int febPrice;
	 int marPrice;
	 int aprPrice;
	 int mayPrice;
	 int junPrice;
	 int julyPrice;
	 int augPrice;
	
	 int sepPrice;
	 int octPrice;
	 int novPrice;
	 int decPrice;
	
	public StockinfoDTO(){
		super();
	}

	public StockinfoDTO(String encode, String year, int janPrice, int febPrice,
			int marPrice, int aprPrice, int mayPrice, int junPrice,
			int julyPrice, int augPrice, int sepPrice, int octPrice,
			int novPrice, int decPrice) {
		super();
		this.encode = encode;
		this.year = year;
		this.janPrice = janPrice;
		this.febPrice = febPrice;
		this.marPrice = marPrice;
		this.aprPrice = aprPrice;
		this.mayPrice = mayPrice;
		this.junPrice = junPrice;
		this.julyPrice = julyPrice;
		this.augPrice = augPrice;
		this.sepPrice = sepPrice;
		this.octPrice = octPrice;
		this.novPrice = novPrice;
		this.decPrice = decPrice;
	}

	@Override
	public String toString() {
		return "StockinfoDTO [encode=" + encode + ", year=" + year
				+ ", janPrice=" + janPrice + ", febPrice=" + febPrice
				+ ", marPrice=" + marPrice + ", aprPrice=" + aprPrice
				+ ", mayPrice=" + mayPrice + ", junPrice=" + junPrice
				+ ", julyPrice=" + julyPrice + ", augPrice=" + augPrice
				+ ", sepPrice=" + sepPrice + ", octPrice=" + octPrice
				+ ", novPrice=" + novPrice + ", decPrice=" + decPrice + "]";
	}

	public String getEncode() {
		return encode;
	}

	public void setEncode(String encode) {
		this.encode = encode;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public int getJanPrice() {
		return janPrice;
	}

	public void setJanPrice(int janPrice) {
		this.janPrice = janPrice;
	}

	public int getFebPrice() {
		return febPrice;
	}

	public void setFebPrice(int febPrice) {
		this.febPrice = febPrice;
	}

	public int getMarPrice() {
		return marPrice;
	}

	public void setMarPrice(int marPrice) {
		this.marPrice = marPrice;
	}

	public int getAprPrice() {
		return aprPrice;
	}

	public void setAprPrice(int aprPrice) {
		this.aprPrice = aprPrice;
	}

	public int getMayPrice() {
		return mayPrice;
	}

	public void setMayPrice(int mayPrice) {
		this.mayPrice = mayPrice;
	}

	public int getJunPrice() {
		return junPrice;
	}

	public void setJunPrice(int junPrice) {
		this.junPrice = junPrice;
	}

	public int getJulyPrice() {
		return julyPrice;
	}

	public void setJulyPrice(int julyPrice) {
		this.julyPrice = julyPrice;
	}

	public int getAugPrice() {
		return augPrice;
	}

	public void setAugPrice(int augPrice) {
		this.augPrice = augPrice;
	}

	public int getSepPrice() {
		return sepPrice;
	}

	public void setSepPrice(int sepPrice) {
		this.sepPrice = sepPrice;
	}

	public int getOctPrice() {
		return octPrice;
	}

	public void setOctPrice(int octPrice) {
		this.octPrice = octPrice;
	}

	public int getNovPrice() {
		return novPrice;
	}

	public void setNovPrice(int novPrice) {
		this.novPrice = novPrice;
	}

	public int getDecPrice() {
		return decPrice;
	}

	public void setDecPrice(int decPrice) {
		this.decPrice = decPrice;
	}

	
	
	
	
}
