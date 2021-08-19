package practice.review;
/*
이름         널?       유형            
---------- -------- ------------- 
RV_NO      NOT NULL NUMBER(10)    
RV_TITLE            VARCHAR2(100) 
RV_CONTENT          VARCHAR2(500) 
RV_DATE             DATE          
RV_GRADE            NUMBER(10)    
M_ID                VARCHAR2(12)  
P_NO                NUMBER(10)    
 */

import java.util.Date;

import practice.member.Member;
import practice.product.Product;

public class Review {
	
	private int rv_no;
	private String rv_title;
	private String rv_content;
	private Date rv_date;
	private int rv_grade;
	private Member member;
	private Product product;
	
	public Review() {
		
	}

	public Review(int rv_no, String rv_title, String rv_content, Date rv_date, int rv_grade, Member member,
			Product product) {
		super();
		this.rv_no = rv_no;
		this.rv_title = rv_title;
		this.rv_content = rv_content;
		this.rv_date = rv_date;
		this.rv_grade = rv_grade;
		this.member = member;
		this.product = product;
	}

	public int getRv_no() {
		return rv_no;
	}

	public void setRv_no(int rv_no) {
		this.rv_no = rv_no;
	}

	public String getRv_title() {
		return rv_title;
	}

	public void setRv_title(String rv_title) {
		this.rv_title = rv_title;
	}

	public String getRv_content() {
		return rv_content;
	}

	public void setRv_content(String rv_content) {
		this.rv_content = rv_content;
	}

	public Date getRv_date() {
		return rv_date;
	}

	public void setRv_date(Date rv_date) {
		this.rv_date = rv_date;
	}

	public int getRv_grade() {
		return rv_grade;
	}

	public void setRv_grade(int rv_grade) {
		this.rv_grade = rv_grade;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "Review [rv_no=" + rv_no + ", rv_title=" + rv_title + ", rv_content=" + rv_content + ", rv_date="
				+ rv_date + ", rv_grade=" + rv_grade + ", member=" + member + ", product=" + product + "]";
	}
	
	

}
