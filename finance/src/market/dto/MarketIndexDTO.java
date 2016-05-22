package market.dto;

import java.util.ArrayList;

public class MarketIndexDTO {
	private String m1Title;
	private ArrayList<String> m1Head;
	private ArrayList<String> m1Value;
	private ArrayList<String> m1Change;
	private ArrayList<String> m1Fluctuation;
	private ArrayList<String> m1Img;
	
	private String m2Title;  
	private ArrayList<String> m2Head;
	private ArrayList<String> m2Value;
	private ArrayList<String> m2Change;
	private ArrayList<String> m2Fluctuation;
	private ArrayList<String> m2Img;
	
	private String m3Title;  
	private ArrayList<String> m3Head;
	private ArrayList<String> m3Value;
	private ArrayList<String> m3Change;
	private ArrayList<String> m3Fluctuation;
	private ArrayList<String> m3Img;
	
	
	public MarketIndexDTO(){
		
	}
	
	public MarketIndexDTO(String m1Title, ArrayList<String> m1Head,
			ArrayList<String> m1Value, ArrayList<String> m1Change,
			ArrayList<String> m1Fluctuation, ArrayList<String> m1Img,
			String m2Title, ArrayList<String> m2Head,
			ArrayList<String> m2Value, ArrayList<String> m2Change,
			ArrayList<String> m2Fluctuation, ArrayList<String> m2Img,
			String m3Title, ArrayList<String> m3Head,
			ArrayList<String> m3Value, ArrayList<String> m3Change,
			ArrayList<String> m3Fluctuation, ArrayList<String> m3Img) {
		super();
		this.m1Title = m1Title;
		this.m1Head = m1Head;
		this.m1Value = m1Value;
		this.m1Change = m1Change;
		this.m1Fluctuation = m1Fluctuation;
		this.m1Img = m1Img;
		this.m2Title = m2Title;
		this.m2Head = m2Head;
		this.m2Value = m2Value;
		this.m2Change = m2Change;
		this.m2Fluctuation = m2Fluctuation;
		this.m2Img = m2Img;
		this.m3Title = m3Title;
		this.m3Head = m3Head;
		this.m3Value = m3Value;
		this.m3Change = m3Change;
		this.m3Fluctuation = m3Fluctuation;
		this.m3Img = m3Img;
	}

	@Override
	public String toString() {
		return "MarketIndexDTO [m1Title=" + m1Title + ", m1Head=" + m1Head
				+ ", m1Value=" + m1Value + ", m1Change=" + m1Change
				+ ", m1Fluctuation=" + m1Fluctuation + ", m1Img=" + m1Img
				+ ", m2Title=" + m2Title + ", m2Head=" + m2Head + ", m2Value="
				+ m2Value + ", m2Change=" + m2Change + ", m2Fluctuation="
				+ m2Fluctuation + ", m2Img=" + m2Img + ", m3Title=" + m3Title
				+ ", m3Head=" + m3Head + ", m3Value=" + m3Value + ", m3Change="
				+ m3Change + ", m3Fluctuation=" + m3Fluctuation + ", m3Img="
				+ m3Img + "]";
	}
	
	public String getM1Title() {
		return m1Title;
	}
	public void setM1Title(String m1Title) {
		this.m1Title = m1Title;
	}
	public ArrayList<String> getM1Head() {
		return m1Head;
	}
	public void setM1Head(ArrayList<String> m1Head) {
		this.m1Head = m1Head;
	}
	public ArrayList<String> getM1Value() {
		return m1Value;
	}
	public void setM1Value(ArrayList<String> m1Value) {
		this.m1Value = m1Value;
	}
	public ArrayList<String> getM1Change() {
		return m1Change;
	}
	public void setM1Change(ArrayList<String> m1Change) {
		this.m1Change = m1Change;
	}
	public ArrayList<String> getM1Fluctuation() {
		return m1Fluctuation;
	}
	public void setM1Fluctuation(ArrayList<String> m1Fluctuation) {
		this.m1Fluctuation = m1Fluctuation;
	}
	public ArrayList<String> getM1Img() {
		return m1Img;
	}
	public void setM1Img(ArrayList<String> m1Img) {
		this.m1Img = m1Img;
	}
	public String getM2Title() {
		return m2Title;
	}
	public void setM2Title(String m2Title) {
		this.m2Title = m2Title;
	}
	public ArrayList<String> getM2Head() {
		return m2Head;
	}
	public void setM2Head(ArrayList<String> m2Head) {
		this.m2Head = m2Head;
	}
	public ArrayList<String> getM2Value() {
		return m2Value;
	}
	public void setM2Value(ArrayList<String> m2Value) {
		this.m2Value = m2Value;
	}
	public ArrayList<String> getM2Change() {
		return m2Change;
	}
	public void setM2Change(ArrayList<String> m2Change) {
		this.m2Change = m2Change;
	}
	public ArrayList<String> getM2Fluctuation() {
		return m2Fluctuation;
	}
	public void setM2Fluctuation(ArrayList<String> m2Fluctuation) {
		this.m2Fluctuation = m2Fluctuation;
	}
	public ArrayList<String> getM2Img() {
		return m2Img;
	}
	public void setM2Img(ArrayList<String> m2Img) {
		this.m2Img = m2Img;
	}
	public String getM3Title() {
		return m3Title;
	}
	public void setM3Title(String m3Title) {
		this.m3Title = m3Title;
	}
	public ArrayList<String> getM3Head() {
		return m3Head;
	}
	public void setM3Head(ArrayList<String> m3Head) {
		this.m3Head = m3Head;
	}
	public ArrayList<String> getM3Value() {
		return m3Value;
	}
	public void setM3Value(ArrayList<String> m3Value) {
		this.m3Value = m3Value;
	}
	public ArrayList<String> getM3Change() {
		return m3Change;
	}
	public void setM3Change(ArrayList<String> m3Change) {
		this.m3Change = m3Change;
	}
	public ArrayList<String> getM3Fluctuation() {
		return m3Fluctuation;
	}
	public void setM3Fluctuation(ArrayList<String> m3Fluctuation) {
		this.m3Fluctuation = m3Fluctuation;
	}
	public ArrayList<String> getM3Img() {
		return m3Img;
	}
	public void setM3Img(ArrayList<String> m3Img) {
		this.m3Img = m3Img;
	}
	
	
	
	
	
	

}
