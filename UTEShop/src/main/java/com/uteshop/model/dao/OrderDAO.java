package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Orders;
import com.uteshop.model.entity.Role;
import com.uteshop.model.entity.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderDAO extends AbstractDAO<Orders> implements GenericDAO<Orders> {
    @Override
    public Orders create(Orders orders) {return super.create(orders);}

    @Override
    public Orders update(Orders orders) {return super.update(orders);}

    @Override
    public void delete(Object orderId) {
        super.delete(Orders.class, orderId);
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("Orders.countAll");
    }

    @Override
    public Orders find(Object orderId) {
        return super.find(Orders.class, orderId);
    }

    public List<Orders> getAll() {
        return super.findWithNamedQuery("Orders.getAll");
    }

}
