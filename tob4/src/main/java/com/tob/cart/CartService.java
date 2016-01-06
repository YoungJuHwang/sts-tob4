package com.tob.cart;

import java.util.List;

public interface CartService {
	// C
	public int put(CartVO o);
	
	//R
	public List<CartVO> getList();
	
	//U
	public int changeCount(int count);
	
	//D
	public int remove(String bookid);
}
