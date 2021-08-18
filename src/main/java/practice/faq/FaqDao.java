package practice.faq;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;


import practice.member.Member;


public class FaqDao {
	
	private DataSource dataSource;
	
	public FaqDao() throws Exception{
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("/practice/jdbc.properties"));
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		basicDataSource.setUrl(properties.getProperty("url"));
		basicDataSource.setUsername(properties.getProperty("user"));
		basicDataSource.setPassword(properties.getProperty("password"));
		this.dataSource = basicDataSource;
	}
	
	//f_board_list.jsp에 보여줄 로직(페이징 처리)
	public ArrayList<Faq> getList(int startRow, int endRow) throws Exception{
		ArrayList<Faq> faqList = new ArrayList<Faq>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(FaqSQL.SELECT_PAGING);
			pstmt.setInt(1, startRow);   //startRow = 한 페이지에서 보여질 첫번째 게시글
			pstmt.setInt(2, endRow);     //endRow = 한 페이지에서 보여질 마지막 게시글
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				faqList.add(new Faq(rs.getInt("f_no"),
									rs.getString("f_question"),
									rs.getString("f_answer"),
									new Member(rs.getString("m_id"),
											   null,
											   null,
											   null,
											   null,
											   null)));
			}
			
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
		
		return faqList;
	}
	
	//총 게시물 수 구하는 로직 ex)총 게시물 : 147건
	public int getCount() throws Exception{
		int count = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(FaqSQL.SELECT_COUNT);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt("cnt");
			}
			
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
		
		return count;
	}
	
	/*
	 자주찾는 질문(FAQ) 등록
	 */
	public int insertFaq(Faq faq) throws Exception {
		int insertRowCount = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(FaqSQL.INSERT_FAQ);
			pstmt.setString(1, faq.getF_question());
			pstmt.setString(2, faq.getF_answer());
			pstmt.setString(3, faq.getMember().getM_id());
			insertRowCount = pstmt.executeUpdate();
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			if(con != null) {
				con.close();
			}
		}
		
		return insertRowCount;
	}
	
	/*
	 자주찾는 질문(FAQ) 수정
	 */
	public int updateFaq(Faq faq) throws Exception{
		int updateRowCount = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(FaqSQL.UPDATE_FAQ);
			pstmt.setString(1, faq.getF_question());
			pstmt.setString(2, faq.getF_answer());
			pstmt.setInt(3, faq.getF_no());
			updateRowCount = pstmt.executeUpdate();
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			if(con != null) {
				con.close();
			}
		}
		
		return updateRowCount;
	}
	
	/*
	 자주찾는 질문(FAQ) 삭제
	 */
	public int deleteFaq(int f_no) throws Exception{
		int deleteRowCount = 0;
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(FaqSQL.DELETE_FAQ);
			pstmt.setInt(1, f_no);
			deleteRowCount = pstmt.executeUpdate();
			
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
	
	public Faq selectByNo(int f_no) throws Exception{
		Faq faq = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(FaqSQL.SELECT_BY_NO);
			pstmt.setInt(1, f_no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				faq = new Faq(rs.getInt("f_no"), rs.getString("f_question"), rs.getString("f_answer"), new Member(rs.getString("m_id"), null, null, null, null, null));
			}
			
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
		
		return faq;
	}

}
