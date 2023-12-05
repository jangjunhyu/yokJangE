package model;

public class foodDTO {
	int F_NUM;
	String F_NAME;
	int F_PRICE;
	String F_MONTH;
	public foodDTO(int F_NUM, String F_NAME, int F_PRICE, String F_MONTH) {
		this.F_NUM = F_NUM;
		this.F_NAME = F_NAME;
		this.F_PRICE = F_PRICE;
		this.F_MONTH = F_MONTH;
	}
	public foodDTO() {
		
	}
	public int getF_NUM() {
		return F_NUM;
	}
	public String getF_NAME() {
		return F_NAME;
	}
	public int getF_PRICE() {
		return F_PRICE;
	}
	public String getF_MONTH() {
		return F_MONTH;
	}
}
