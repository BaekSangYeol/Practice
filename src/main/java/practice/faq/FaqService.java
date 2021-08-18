package practice.faq;

import java.util.ArrayList;

public class FaqService {
	
	private FaqDao faqDao;
	
	public FaqService() throws Exception{
		faqDao = new FaqDao();
	}
	
	//f_board_list.jsp에 보여줄 로직(페이징 처리)
	public ArrayList<Faq> getList(int startRow, int endRow) throws Exception{
		return faqDao.getList(startRow, endRow);
	}
	
	//총 게시물 수 구하는 로직 ex)총 게시물 : 147건
	public int getCount() throws Exception{
		return faqDao.getCount();
	}
	
	//자주찾는 질문(FAQ) 등록
	public int insertFaq(Faq faq) throws Exception {
		return faqDao.insertFaq(faq);
	}
	
	//자주찾는 질문(FAQ) 수정
	public int updateFaq(Faq faq) throws Exception {
		return faqDao.updateFaq(faq);
	}
	
	//자주찾는 질문(FAQ) 삭제
	public int deleteFaq(int f_no) throws Exception{
		return faqDao.deleteFaq(f_no);
	}
	
	//자주찾는 질문(FAQ) 1개 객체 저장
	public Faq selectByNo(int f_no) throws Exception {
		return faqDao.selectByNo(f_no);
	}

}
