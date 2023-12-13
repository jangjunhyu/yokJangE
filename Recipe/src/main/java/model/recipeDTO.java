package model;

public class recipeDTO {
	int R_NUM;
	String R_NAME;
	int F_NUM;
	String R_CONTENT;
	String R_PIC;
	public recipeDTO(int r_NUM, String r_NAME, int f_NUM, String r_CONTENT, String r_PIC) {
		super();
		R_NUM = r_NUM;
		R_NAME = r_NAME;
		F_NUM = f_NUM;
		R_CONTENT = r_CONTENT;
		R_PIC = r_PIC;
	}
	public recipeDTO() {
		
	}
	public int getR_NUM() {
		return R_NUM;
	}
	public String getR_NAME() {
		return R_NAME;
	}
	public int getF_NUM() {
		return F_NUM;
	}
	public String getR_CONTENT() {
		return R_CONTENT;
	}
	public String getR_PIC() {
		return R_PIC;
	}
	
}
