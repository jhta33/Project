package akinator;

public class DataDto {

	private String goodsName;
	private String quantity;
	private String price;
	private String contents;
	private String tag;
	private String chk1;
	private String chk2;
	private String chk3;
	private String dataPath;
	public String getDataPath() {
		return dataPath;
	}
	public void setDataPath(String dataPath) {
		this.dataPath = dataPath;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getChk1() {
		return chk1;
	}
	public void setChk1(String chk1) {
		this.chk1 = chk1;
	}
	public String getChk2() {
		return chk2;
	}
	public void setChk2(String chk2) {
		this.chk2 = chk2;
	}
	public String getChk3() {
		return chk3;
	}
	public void setChk3(String chk3) {
		this.chk3 = chk3;
	}
	
	/*
	 * String goodsName = request.getParameter("goodsName");	//��ǰ��
	String quantity = request.getParameter("quantity");		//��ǰ����
	String price = request.getParameter("price");			//��ǰ����
	String contents = request.getParameter("contents");		//��ǰ�󼼳���
	String tag = request.getParameter("tag");				//��ǰ�±�
	String chk1 = request.getParameter("chk1");				//������������(checkbox)
	String chk2 = request.getParameter("chk2");				//�ù�񿩺�(checkbox)
	String chk3 = request.getParameter("chk3");				//��ȯ���ɿ���(checkbox)
	 */
}
