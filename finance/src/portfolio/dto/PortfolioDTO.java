package portfolio.dto;

public class PortfolioDTO {


	private String type;
	private String classify;
	private String opcode;
	private String title;
	private double threeprofit;
	private String std;
	
	public PortfolioDTO(){}

	public PortfolioDTO(String type, String classify, String opcode, String title, double threeprofit,
			String std) {
		super();

		this.type = type;
		this.classify = classify;
		this.opcode = opcode;
		this.title = title;
		this.threeprofit = threeprofit;
		this.std = std;
	}


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
	}

	public String getOpcode() {
		return opcode;
	}

	public void setOpcode(String opcode) {
		this.opcode = opcode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getThreeprofit() {
		return threeprofit;
	}

	public void setThreeprofit(double threeprofit) {
		this.threeprofit = threeprofit;
	}

	public String getStd() {
		return std;
	}

	public void setStd(String std) {
		this.std = std;
	}

	@Override
	public String toString() {
		return "PortfolioDTO [type=" + type + ", classify=" + classify + ", opcode=" + opcode
				+ ", title=" + title + ", threeprofit=" + threeprofit + ", std=" + std + "]";
	}
	

	
}
