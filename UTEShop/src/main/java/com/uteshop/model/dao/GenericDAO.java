package com.uteshop.model.dao;

import java.util.List;

public interface GenericDAO<T> {
    public T create(T e);

    T update(T e);

    T find(Object id);

    void delete(Object id);

    int count();
}
