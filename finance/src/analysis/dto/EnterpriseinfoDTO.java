package analysis.dto;

public class EnterpriseinfoDTO {

	String encode;
	String year;
	int focapitalstock;
	int foasset;
	int fodept;
	int foqsales;
	int foprofit;
	int fonetprofit;
	int thcapitalstock;
	int thasset;
	int thdept;
	int thqsales;
	int thprofit;
	int thnetprofit;
	int secapitalstock;
	int seasset;
	int sedept;
	int seqsales;
	int seprofit;
	int senetprofit;
	int ficapitalstock;
	int fiasset;
	int fidept;
	int fiqsales;
	int fiprofit;
	int finetprofit;
	
	public EnterpriseinfoDTO() {
	}
	
	public EnterpriseinfoDTO(String encode, String year, int focapitalstock,
			int foasset, int fodept, int foqsales, int foprofit,
			int fonetprofit, int thcapitalstock, int thasset, int thdept,
			int thqsales, int thprofit, int thnetprofit, int secapitalstock,
			int seasset, int sedept, int seqsales, int seprofit,
			int senetprofit, int ficapitalstock, int fiasset, int fidept,
			int fiqsales, int fiprofit, int finetprofit) {
		super();
		this.encode = encode;
		this.year = year;
		this.focapitalstock = focapitalstock;
		this.foasset = foasset;
		this.fodept = fodept;
		this.foqsales = foqsales;
		this.foprofit = foprofit;
		this.fonetprofit = fonetprofit;
		this.thcapitalstock = thcapitalstock;
		this.thasset = thasset;
		this.thdept = thdept;
		this.thqsales = thqsales;
		this.thprofit = thprofit;
		this.thnetprofit = thnetprofit;
		this.secapitalstock = secapitalstock;
		this.seasset = seasset;
		this.sedept = sedept;
		this.seqsales = seqsales;
		this.seprofit = seprofit;
		this.senetprofit = senetprofit;
		this.ficapitalstock = ficapitalstock;
		this.fiasset = fiasset;
		this.fidept = fidept;
		this.fiqsales = fiqsales;
		this.fiprofit = fiprofit;
		this.finetprofit = finetprofit;
	}
	@Override
	public String toString() {
		return "DTO_ENTERPRISEINFO [encode=" + encode + ", year=" + year
				+ ", focapitalstock=" + focapitalstock + ", foasset=" + foasset
				+ ", fodept=" + fodept + ", foqsales=" + foqsales
				+ ", foprofit=" + foprofit + ", fonetprofit=" + fonetprofit
				+ ", thcapitalstock=" + thcapitalstock + ", thasset=" + thasset
				+ ", thdept=" + thdept + ", thqsales=" + thqsales
				+ ", thprofit=" + thprofit + ", thnetprofit=" + thnetprofit
				+ ", secapitalstock=" + secapitalstock + ", seasset=" + seasset
				+ ", sedept=" + sedept + ", seqsales=" + seqsales
				+ ", seprofit=" + seprofit + ", senetprofit=" + senetprofit
				+ ", ficapitalstock=" + ficapitalstock + ", fiasset=" + fiasset
				+ ", fidept=" + fidept + ", fiqsales=" + fiqsales
				+ ", fiprofit=" + fiprofit + ", finetprofit=" + finetprofit
				+ "]";
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
	public int getFocapitalstock() {
		return focapitalstock;
	}
	public void setFocapitalstock(int focapitalstock) {
		this.focapitalstock = focapitalstock;
	}
	public int getFoasset() {
		return foasset;
	}
	public void setFoasset(int foasset) {
		this.foasset = foasset;
	}
	public int getFodept() {
		return fodept;
	}
	public void setFodept(int fodept) {
		this.fodept = fodept;
	}
	public int getFoqsales() {
		return foqsales;
	}
	public void setFoqsales(int foqsales) {
		this.foqsales = foqsales;
	}
	public int getFoprofit() {
		return foprofit;
	}
	public void setFoprofit(int foprofit) {
		this.foprofit = foprofit;
	}
	public int getFonetprofit() {
		return fonetprofit;
	}
	public void setFonetprofit(int fonetprofit) {
		this.fonetprofit = fonetprofit;
	}
	public int getThcapitalstock() {
		return thcapitalstock;
	}
	public void setThcapitalstock(int thcapitalstock) {
		this.thcapitalstock = thcapitalstock;
	}
	public int getThasset() {
		return thasset;
	}
	public void setThasset(int thasset) {
		this.thasset = thasset;
	}
	public int getThdept() {
		return thdept;
	}
	public void setThdept(int thdept) {
		this.thdept = thdept;
	}
	public int getThqsales() {
		return thqsales;
	}
	public void setThqsales(int thqsales) {
		this.thqsales = thqsales;
	}
	public int getThprofit() {
		return thprofit;
	}
	public void setThprofit(int thprofit) {
		this.thprofit = thprofit;
	}
	public int getThnetprofit() {
		return thnetprofit;
	}
	public void setThnetprofit(int thnetprofit) {
		this.thnetprofit = thnetprofit;
	}
	public int getSecapitalstock() {
		return secapitalstock;
	}
	public void setSecapitalstock(int secapitalstock) {
		this.secapitalstock = secapitalstock;
	}
	public int getSeasset() {
		return seasset;
	}
	public void setSeasset(int seasset) {
		this.seasset = seasset;
	}
	public int getSedept() {
		return sedept;
	}
	public void setSedept(int sedept) {
		this.sedept = sedept;
	}
	public int getSeqsales() {
		return seqsales;
	}
	public void setSeqsales(int seqsales) {
		this.seqsales = seqsales;
	}
	public int getSeprofit() {
		return seprofit;
	}
	public void setSeprofit(int seprofit) {
		this.seprofit = seprofit;
	}
	public int getSenetprofit() {
		return senetprofit;
	}
	public void setSenetprofit(int senetprofit) {
		this.senetprofit = senetprofit;
	}
	public int getFicapitalstock() {
		return ficapitalstock;
	}
	public void setFicapitalstock(int ficapitalstock) {
		this.ficapitalstock = ficapitalstock;
	}
	public int getFiasset() {
		return fiasset;
	}
	public void setFiasset(int fiasset) {
		this.fiasset = fiasset;
	}
	public int getFidept() {
		return fidept;
	}
	public void setFidept(int fidept) {
		this.fidept = fidept;
	}
	public int getFiqsales() {
		return fiqsales;
	}
	public void setFiqsales(int fiqsales) {
		this.fiqsales = fiqsales;
	}
	public int getFiprofit() {
		return fiprofit;
	}
	public void setFiprofit(int fiprofit) {
		this.fiprofit = fiprofit;
	}
	public int getFinetprofit() {
		return finetprofit;
	}
	public void setFinetprofit(int finetprofit) {
		this.finetprofit = finetprofit;
	}
	
	
	
	
}
