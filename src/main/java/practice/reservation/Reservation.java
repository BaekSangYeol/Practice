package practice.reservation;
/*
이름       널?       유형           
-------- -------- ------------ 
R_NO     NOT NULL NUMBER(10)   
R_DATE            DATE         
R_METHOD          VARCHAR2(20) 
R_PRICE           NUMBER(10)   
M_ID              VARCHAR2(12) 
 */

import java.util.ArrayList;
import java.util.Date;

import practice.member.Member;

public class Reservation {

	private int r_no;
	private Date r_date;
	private String r_method;
	private int p_price;
	private Member member;
	private ArrayList<ReservationItem> reservationItemList = new ArrayList<ReservationItem>();
	
	
	public Reservation() {
		
	}


	public Reservation(int r_no, Date r_date, String r_method, int p_price, Member member,
			ArrayList<ReservationItem> reservationItemList) {
		super();
		this.r_no = r_no;
		this.r_date = r_date;
		this.r_method = r_method;
		this.p_price = p_price;
		this.member = member;
		this.reservationItemList = reservationItemList;
	}


	public int getR_no() {
		return r_no;
	}


	public void setR_no(int r_no) {
		this.r_no = r_no;
	}


	public Date getR_date() {
		return r_date;
	}


	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}


	public String getR_method() {
		return r_method;
	}


	public void setR_method(String r_method) {
		this.r_method = r_method;
	}


	public int getP_price() {
		return p_price;
	}


	public void setP_price(int p_price) {
		this.p_price = p_price;
	}


	public Member getMember() {
		return member;
	}


	public void setMember(Member member) {
		this.member = member;
	}


	public ArrayList<ReservationItem> getReservationItemList() {
		return reservationItemList;
	}


	public void setReservationItemList(ArrayList<ReservationItem> reservationItemList) {
		this.reservationItemList = reservationItemList;
	}


	@Override
	public String toString() {
		return "Reservation [r_no=" + r_no + ", r_date=" + r_date + ", r_method=" + r_method + ", p_price=" + p_price
				+ ", member=" + member + ", reservationItemList=" + reservationItemList + "]";
	}
	
	
	
}
