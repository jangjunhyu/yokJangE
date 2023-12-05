package model;

public class foodDTO {
	int F_NUM;
	String F_NAME;
	int F_PRICE;
	String F_MONTH;
	public foodDTO(int f_NUM, String f_NAME, int f_PRICE, String f_MONTH) {
		F_NUM = f_NUM;
		F_NAME = f_NAME;
		F_PRICE = f_PRICE;
		F_MONTH = f_MONTH;
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
