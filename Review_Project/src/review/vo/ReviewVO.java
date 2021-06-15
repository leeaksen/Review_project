package review.vo;

public class ReviewVO {
	
	private String name;
	private String id;
	private String pwd;
	private String phonenumber;
	private String date;
	private String title;
	private String content;
	private String category;
	private String number;
	public ReviewVO() { }
	public ReviewVO(String id2, String title2, String category2, String content2) {
		this.id = id2;
		this.title = title2;
		this.category = category2;
		this.content = content2;
	}
		
	public ReviewVO(String name2, String number2, String id2, String pwd2, String phonenumber2) {
		this.name = name2;
		this.number = number2;
		this.id = id2;
		this.pwd = pwd2;
		this.phonenumber = phonenumber2;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name2) {
		this.name = name2;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id2) {
		this.id = id2;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd2) {
		this.pwd = pwd2;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber2) {
		this.phonenumber = phonenumber2;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	public String getNumber() {
		return number;
	}

	public void setNumber(String number2) {
		this.number = number2;
	}


}
