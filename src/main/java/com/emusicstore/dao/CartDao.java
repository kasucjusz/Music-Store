package com.emusicstore.dao;


import com.emusicstore.model.Cart;

import java.io.IOException;

////////data accessing object
public interface CartDao {


    Cart getCartById(int cartId);
    void updateCart(Cart cart);
    Cart validate(int cartId) throws IOException;

}
