package com.emusicstore.dao.implementation;


import com.emusicstore.dao.CartDao;
import com.emusicstore.model.Cart;
import com.emusicstore.service.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

@Repository
@Transactional
public class CartDaoImplementation  implements CartDao {



    @Autowired
    SessionFactory sessionFactory;

    @Autowired
    CustomerOrderService customerOrderService;

    public Cart getCartById(int cartId) {

        Session session=sessionFactory.getCurrentSession();

        return (Cart) session.get(Cart.class, cartId);

    }

    public Cart validate(int cartId) throws IOException {
        Cart cart=getCartById(cartId);
        if(cart==null||cart.getCartItems().size()==0)
        {
            throw new IOException(cartId+"");
        }

        updateCart(cart);
        return cart;
    }

    public void updateCart(Cart cart) {
        int cartId=cart.getCartId();
        double grandTodal=customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGrandTotal(grandTodal);
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
    }
}
