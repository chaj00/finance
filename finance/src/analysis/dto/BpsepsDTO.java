package analysis.dto;

public class BpsepsDTO {

//	<1분기 EPS, BPS를  PER, PBR밴드에 대입할 값 계산 > 
//	PER밴드 => EPS*6 9 12 16, PBR밴드 => BPS*1 2 3 4 
//	1분기 밴드에 들어갈 EPS, BPS 값
	double fiEps;
	double fiEps6;
	double fiEps9;
	double fiEps12; 
	double fiEps16 ;
	double fiBps;
	double fiBps2 ;
	double fiBps3 ;
	double fiBps4;
//	2분기 밴드에 들어갈 EPS, BPS 값
	double seEps;
	double seEps6; 
	double seEps9 ;
	double seEps12; 
	double seEps16 ;
	double seBps;
	double seBps2 ;
	double seBps3 ;
	double seBps4 ;
//	3분기 밴드에 들어갈 EPS, BPS 값
	double thEps;
	double thEps6 ;
	double thEps9 ;
	double thEps12; 
	double thEps16 ;
	double thBps;
	double thBps2 ;
	double thBps3 ;
	double thBps4;
//	4분기 밴드에 들어갈 EPS, BPS 값
	double foEps;
	double foEps6 ;
	double foEps9 ;
	double foEps12 ;
	double foEps16 ;
	double foBps;
	double foBps2 ;
	double foBps3 ;
	double foBps4;
	
	public BpsepsDTO(){
		
	}

	public BpsepsDTO(double fiEps, double fiEps6, double fiEps9,
			double fiEps12, double fiEps16, double fiBps, double fiBps2,
			double fiBps3, double fiBps4, double seEps, double seEps6,
			double seEps9, double seEps12, double seEps16, double seBps,
			double seBps2, double seBps3, double seBps4, double thEps,
			double thEps6, double thEps9, double thEps12, double thEps16,
			double thBps, double thBps2, double thBps3, double thBps4,
			double foEps, double foEps6, double foEps9, double foEps12,
			double foEps16, double foBps, double foBps2, double foBps3,
			double foBps4) {
		super();
		this.fiEps = fiEps;
		this.fiEps6 = fiEps6;
		this.fiEps9 = fiEps9;
		this.fiEps12 = fiEps12;
		this.fiEps16 = fiEps16;
		this.fiBps = fiBps;
		this.fiBps2 = fiBps2;
		this.fiBps3 = fiBps3;
		this.fiBps4 = fiBps4;
		this.seEps = seEps;
		this.seEps6 = seEps6;
		this.seEps9 = seEps9;
		this.seEps12 = seEps12;
		this.seEps16 = seEps16;
		this.seBps = seBps;
		this.seBps2 = seBps2;
		this.seBps3 = seBps3;
		this.seBps4 = seBps4;
		this.thEps = thEps;
		this.thEps6 = thEps6;
		this.thEps9 = thEps9;
		this.thEps12 = thEps12;
		this.thEps16 = thEps16;
		this.thBps = thBps;
		this.thBps2 = thBps2;
		this.thBps3 = thBps3;
		this.thBps4 = thBps4;
		this.foEps = foEps;
		this.foEps6 = foEps6;
		this.foEps9 = foEps9;
		this.foEps12 = foEps12;
		this.foEps16 = foEps16;
		this.foBps = foBps;
		this.foBps2 = foBps2;
		this.foBps3 = foBps3;
		this.foBps4 = foBps4;
	}

	@Override
	public String toString() {
		return "DTO_BPSEPS [fiEps=" + fiEps + ", fiEps6=" + fiEps6
				+ ", fiEps9=" + fiEps9 + ", fiEps12=" + fiEps12 + ", fiEps16="
				+ fiEps16 + ", fiBps=" + fiBps + ", fiBps2=" + fiBps2
				+ ", fiBps3=" + fiBps3 + ", fiBps4=" + fiBps4 + ", seEps="
				+ seEps + ", seEps6=" + seEps6 + ", seEps9=" + seEps9
				+ ", seEps12=" + seEps12 + ", seEps16=" + seEps16 + ", seBps="
				+ seBps + ", seBps2=" + seBps2 + ", seBps3=" + seBps3
				+ ", seBps4=" + seBps4 + ", thEps=" + thEps + ", thEps6="
				+ thEps6 + ", thEps9=" + thEps9 + ", thEps12=" + thEps12
				+ ", thEps16=" + thEps16 + ", thBps=" + thBps + ", thBps2="
				+ thBps2 + ", thBps3=" + thBps3 + ", thBps4=" + thBps4
				+ ", foEps=" + foEps + ", foEps6=" + foEps6 + ", foEps9="
				+ foEps9 + ", foEps12=" + foEps12 + ", foEps16=" + foEps16
				+ ", foBps=" + foBps + ", foBps2=" + foBps2 + ", foBps3="
				+ foBps3 + ", foBps4=" + foBps4 + "]";
	}

	public double getFiEps() {
		return fiEps;
	}

	public void setFiEps(double fiEps) {
		this.fiEps = fiEps;
	}

	public double getFiEps6() {
		return fiEps6;
	}

	public void setFiEps6(double fiEps6) {
		this.fiEps6 = fiEps6;
	}

	public double getFiEps9() {
		return fiEps9;
	}

	public void setFiEps9(double fiEps9) {
		this.fiEps9 = fiEps9;
	}

	public double getFiEps12() {
		return fiEps12;
	}

	public void setFiEps12(double fiEps12) {
		this.fiEps12 = fiEps12;
	}

	public double getFiEps16() {
		return fiEps16;
	}

	public void setFiEps16(double fiEps16) {
		this.fiEps16 = fiEps16;
	}

	public double getFiBps() {
		return fiBps;
	}

	public void setFiBps(double fiBps) {
		this.fiBps = fiBps;
	}

	public double getFiBps2() {
		return fiBps2;
	}

	public void setFiBps2(double fiBps2) {
		this.fiBps2 = fiBps2;
	}

	public double getFiBps3() {
		return fiBps3;
	}

	public void setFiBps3(double fiBps3) {
		this.fiBps3 = fiBps3;
	}

	public double getFiBps4() {
		return fiBps4;
	}

	public void setFiBps4(double fiBps4) {
		this.fiBps4 = fiBps4;
	}

	public double getSeEps() {
		return seEps;
	}

	public void setSeEps(double seEps) {
		this.seEps = seEps;
	}

	public double getSeEps6() {
		return seEps6;
	}

	public void setSeEps6(double seEps6) {
		this.seEps6 = seEps6;
	}

	public double getSeEps9() {
		return seEps9;
	}

	public void setSeEps9(double seEps9) {
		this.seEps9 = seEps9;
	}

	public double getSeEps12() {
		return seEps12;
	}

	public void setSeEps12(double seEps12) {
		this.seEps12 = seEps12;
	}

	public double getSeEps16() {
		return seEps16;
	}

	public void setSeEps16(double seEps16) {
		this.seEps16 = seEps16;
	}

	public double getSeBps() {
		return seBps;
	}

	public void setSeBps(double seBps) {
		this.seBps = seBps;
	}

	public double getSeBps2() {
		return seBps2;
	}

	public void setSeBps2(double seBps2) {
		this.seBps2 = seBps2;
	}

	public double getSeBps3() {
		return seBps3;
	}

	public void setSeBps3(double seBps3) {
		this.seBps3 = seBps3;
	}

	public double getSeBps4() {
		return seBps4;
	}

	public void setSeBps4(double seBps4) {
		this.seBps4 = seBps4;
	}

	public double getThEps() {
		return thEps;
	}

	public void setThEps(double thEps) {
		this.thEps = thEps;
	}

	public double getThEps6() {
		return thEps6;
	}

	public void setThEps6(double thEps6) {
		this.thEps6 = thEps6;
	}

	public double getThEps9() {
		return thEps9;
	}

	public void setThEps9(double thEps9) {
		this.thEps9 = thEps9;
	}

	public double getThEps12() {
		return thEps12;
	}

	public void setThEps12(double thEps12) {
		this.thEps12 = thEps12;
	}

	public double getThEps16() {
		return thEps16;
	}

	public void setThEps16(double thEps16) {
		this.thEps16 = thEps16;
	}

	public double getThBps() {
		return thBps;
	}

	public void setThBps(double thBps) {
		this.thBps = thBps;
	}

	public double getThBps2() {
		return thBps2;
	}

	public void setThBps2(double thBps2) {
		this.thBps2 = thBps2;
	}

	public double getThBps3() {
		return thBps3;
	}

	public void setThBps3(double thBps3) {
		this.thBps3 = thBps3;
	}

	public double getThBps4() {
		return thBps4;
	}

	public void setThBps4(double thBps4) {
		this.thBps4 = thBps4;
	}

	public double getFoEps() {
		return foEps;
	}

	public void setFoEps(double foEps) {
		this.foEps = foEps;
	}

	public double getFoEps6() {
		return foEps6;
	}

	public void setFoEps6(double foEps6) {
		this.foEps6 = foEps6;
	}

	public double getFoEps9() {
		return foEps9;
	}

	public void setFoEps9(double foEps9) {
		this.foEps9 = foEps9;
	}

	public double getFoEps12() {
		return foEps12;
	}

	public void setFoEps12(double foEps12) {
		this.foEps12 = foEps12;
	}

	public double getFoEps16() {
		return foEps16;
	}

	public void setFoEps16(double foEps16) {
		this.foEps16 = foEps16;
	}

	public double getFoBps() {
		return foBps;
	}

	public void setFoBps(double foBps) {
		this.foBps = foBps;
	}

	public double getFoBps2() {
		return foBps2;
	}

	public void setFoBps2(double foBps2) {
		this.foBps2 = foBps2;
	}

	public double getFoBps3() {
		return foBps3;
	}

	public void setFoBps3(double foBps3) {
		this.foBps3 = foBps3;
	}

	public double getFoBps4() {
		return foBps4;
	}

	public void setFoBps4(double foBps4) {
		this.foBps4 = foBps4;
	}
	

	
	
}
