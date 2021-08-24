package practice.reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;

public class ReservationDao {

	private DataSource dataSource;
	
	public ReservationDao() throws Exception{
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/practice/jdbc.properties"));
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("user"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource = basicDataSource;
	}
	
	//예약삭제
	public int deleteReservation(int r_no) throws Exception{
		
		int deleteRowCount = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(ReservationSQL.RESERVATION_DELETE);
			pstmt.setInt(1, r_no);
			pstmt.executeUpdate();
			
		} finally {
			
			if(pstmt != null) {
				pstmt.close();
			}
			
			if(con != null) {
				con.close();
			}
			
		}
		
		return deleteRowCount;
	}
	
	
	//예약하기
	public int insertReservation(Reservation reservation) throws Exception{
		
		int insertRowCount = 0;
		Connection con = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		
		try {
			/*
				예약 insert
				public static final String RESERVATION_INSERT = "insert into reservation(r_no, r_desc, r_date, r_method, r_price, m_id) values(reservation_r_no_seq.nextval, ?, sysdate, ?, ?, ?)";
				예약상품 insert
				public static final String RESERVATION_INSERT_ITEM = "insert into reservation_item(ri_no, ri_qty, r_no, p_no) values(reservation_item_ri_no_seq.nextval, ?, reservation_r_no_seq.currval, ?)"; 
			 */
			con = dataSource.getConnection();
			pstmt1 = con.prepareStatement(ReservationSQL.SELECT_RESERVATION_ORDER);
			pstmt1.setString(1, reservation.getR_desc());
			pstmt1.setString(2, reservation.getR_method());
			pstmt1.setInt(3, reservation.getP_price());
			pstmt1.setString(4, reservation.getM_id());
			pstmt1.executeUpdate();
			
			pstmt2 = con.prepareStatement(ReservationSQL.SELECT_RESERVATION_PRODUCT);
			for(ReservationItem reservationItem : reservation.getReservationItemList()) {
				pstmt2.setInt(1, reservationItem.getRi_qty());
				pstmt2.setInt(2, reservationItem.getProduct().getP_no());
				pstmt2.executeUpdate();
			}
			
		} finally {
			
			if(pstmt1 != null) {
				pstmt1.close();
			}
			
			if(pstmt2 != null) {
				pstmt2.close();
			}
			
			if(con != null) {
				con.close();
			}
			
		}
		
		return insertRowCount;
	}
	
	//회원1명 주문전체목록
	public ArrayList<Reservation> reservationList() throws Exception {
		
		ArrayList<Reservation> reservationList = new ArrayList<Reservation>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
		} finally {
			
			if(rs != null) {
				rs.close();
			}
			
			if(pstmt != null) {
				pstmt.close();
			}
			
			if(con != null) {
				con.close();
			}
			
		}
		
		return reservationList;
	}
	
}
