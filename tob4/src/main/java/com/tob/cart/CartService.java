package com.tob.cart;

import java.util.List;

public interface CartService {
	
	// 장바구니 담기
	public int put(String bookid);
	
	// 장바구니 목록 확인
	public List<CartVO> getList();
	
	// 장바구니 수량 변경
	public int changeCount(int count);
	
	// 장바구니 삭제
	public int remove(String bookid);
}
