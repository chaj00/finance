package analysis.dto;

public class EnterpriseDTO {

	String encode;
	String ename;
	
	
	public EnterpriseDTO() {
	}
	public EnterpriseDTO(String ename) {
		this.ename = ename;
	}
	public EnterpriseDTO(String encode, String ename) {
		super();
		this.encode = encode;
		this.ename = ename;
	}
	
	@Override
	public String toString() {
		return "EnterpriseDTO [encode=" + encode + ", ename=" + ename + "]";
	}
	public String getEncode() {
		return encode;
	}
	public void setEncode(String encode) {
		this.encode = encode;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
	
}
