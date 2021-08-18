package practice.faq;

public class FaqSQL {
	
	//FAQ 등록
	public static final String INSERT_FAQ = "insert into faq(f_no, f_question, f_answer, m_id) values(faq_f_no_seq.nextval, ?, ?, ?)";
	
	//FAQ수정
	public static final String UPDATE_FAQ = "update faq set f_question = ?, f_answer = ? where f_no = ?";
	
	//FAQ삭제
	public static final String DELETE_FAQ = "delete faq where f_no = ?";
	
	//FAQ 1개정보
	public static final String SELECT_BY_NO = "select * from faq f join member m on f.m_id = m.m_id where f.f_no = ?";
	
	//FAQ 페이징리스트(인라인뷰, rownum사용)
	public static final String SELECT_PAGING = "select * from (select rownum rn, f_no, f_question, f_answer, m_id from(select * from faq order by f_no desc)) where rn between ? and ?";
	
	//FAQ 게시물 총 갯수
	public static final String SELECT_COUNT = "select count(*) cnt from faq";

}
