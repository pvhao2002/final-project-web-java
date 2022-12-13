package com.uteshop.model.dao;

import com.uteshop.model.entity.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OrderDetailDAO extends AbstractDAO<OrderDetail> implements GenericDAO<OrderDetail> {
    @Override
    public OrderDetail create(OrderDetail orderDetail) {return super.create(orderDetail);}

    @Override
    public OrderDetail update(OrderDetail orderDetail) {return super.update(orderDetail);}

    @Override
    public void delete(Object orderDetailId) {
        super.delete(OrderDetail.class, orderDetailId);
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("OrderDetail.countAll");
    }

    @Override
    public OrderDetail find(Object orderDetailId) {
        return super.find(OrderDetail.class, orderDetailId);
    }

    public List<OrderDetail> getAll() {
        return super.findWithNamedQuery("OrderDetail.getAll");
    }

}
