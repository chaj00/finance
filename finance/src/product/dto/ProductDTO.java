package product.dto;

public class ProductDTO {

	private String title;	//
	private String prdate;
	private String classify;
	private String type;
	private String scale;
	private String charge;
	private String oneprofit;
	private String threeprofit;
	private String sixprofit;
	private String twelveprofit;
	private String std;
	private String opname;
	
	
	public ProductDTO() {
		super();
	}

	public ProductDTO(String opname,String title, String prdate, String classify, String type, String scale, String charge,
			String oneprofit, String threeprofit, String sixprofit, String twelveprofit, String std) {
		super();
		this.opname = opname;
		this.title = title;
		this.prdate = prdate;
		this.classify = classify;
		this.type = type;
		this.scale = scale;
		this.charge = charge;
		this.oneprofit = oneprofit;
		this.threeprofit = threeprofit;
		this.sixprofit = sixprofit;
		this.twelveprofit = twelveprofit;
		this.std = std;
	}

	public ProductDTO(String opname) {
		super();
		this.opname = opname;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPrdate() {
		return prdate;
	}

	public void setPrdate(String prdate) {
		this.prdate = prdate;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public String getCharge() {
		return charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}

	public String getOneprofit() {
		return oneprofit;
	}

	public void setOneprofit(String oneprofit) {
		this.oneprofit = oneprofit;
	}

	public String getThreeprofit() {
		return threeprofit;
	}

	public void setThreeprofit(String threeprofit) {
		this.threeprofit = threeprofit;
	}

	public String getSixprofit() {
		return sixprofit;
	}

	public void setSixprofit(String sixprofit) {
		this.sixprofit = sixprofit;
	}

	public String getTwelveprofit() {
		return twelveprofit;
	}

	public void setTwelveprofit(String twelveprofit) {
		this.twelveprofit = twelveprofit;
	}

	public String getStd() {
		return std;
	}

	public void setStd(String std) {
		this.std = std;
	}

	public String getOpname() {
		return opname;
	}

	public void setOpname(String opname) {
		this.opname = opname;
	}
		
}
