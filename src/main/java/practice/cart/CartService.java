package practice.cart;

import java.util.ArrayList;

public class CartService {
	
	private CartDao cartDao;
	
	public CartService() throws Exception {
		cartDao = new CartDao();
	}
	
	//카트에 해당 상품이 존재한다면 수량만 추가 그렇지 않다면 카트에 새롭게 추가
	public int insertCart(int c_qty, int p_no, String m_id) throws Exception {
		
		if(cartDao.isExistProduct(m_id, p_no)) {
			
			return cartDao.updateQty(c_qty, p_no, m_id);
			
		} else {
			
			return cartDao.insertCart(c_qty, p_no, m_id);
			
		}
		
	}
	
	//회원 1명 장바구니 목록 
	public ArrayList<Cart> selectById(String m_id) throws Exception {
		return cartDao.selectById(m_id);
	}
	
	//장바구니 전체 삭제(FK(m_id) 받아서 삭제)
	public int deleteAll(String m_id) throws Exception {
		return cartDao.deleteAll(m_id);
	}
	
	//장바구니 물품 1개 삭제(FK(p_no),FK(m_id) 받아서 삭제)
	//public static final String DELETE_NO = "delete cart where p_no = ? and m_id = ?";
	public int deleteByPno(int p_no, String m_id) throws Exception {
		return cartDao.deleteByPno(p_no, m_id);
	}
	
	//회원 1명 장바구니 상품 갯수
	//public static final String SELECT_COUNT = "select count(*) p_cnt from cart where m_id = ?";
	public int productCount(String m_id) throws Exception {
		return cartDao.productCount(m_id);
	}
	
	

}
