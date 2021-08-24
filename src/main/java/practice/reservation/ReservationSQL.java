package practice.reservation;

public class ReservationSQL {
	
	//예약 insert
	public static final String RESERVATION_INSERT = "insert into reservation(r_no, r_desc, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, ?, sysdate, ?, ?, ?)";
	//예약상품 insert
	public static final String RESERVATION_INSERT_ITEM = "insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, ?, reservation_r_no_seq.currval, ?)";
	
	//주문내역 삭제(on delete cascade)
	public static final String RESERVATION_DELETE = "delete reservation where r_no = ?";
	
	//회원 1명 주문 전체 목록
	public static final String SELECT_RESERVATION_ORDER = "select * from reservation where m_id = ?";
	
	//회원 1명 주문1개의 상품목록(주문1개 상세정보)
	public static final String SELECT_RESERVATION_PRODUCT = "select * from reservation r join reservation_item ri on r.r_no = ri.r_no join product p on ri.p_no = p.p_no where r.m_id = ? and r.r_no = ?";
}
