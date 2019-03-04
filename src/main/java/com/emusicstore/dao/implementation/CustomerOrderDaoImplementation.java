package com.emusicstore.dao.implementation;

import com.emusicstore.dao.CustomerOrderDao;
import com.emusicstore.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class CustomerOrderDaoImplementation implements CustomerOrderDao {


    @Autowired
    SessionFactory sessionFactory;



    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session=sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();

    }


}
