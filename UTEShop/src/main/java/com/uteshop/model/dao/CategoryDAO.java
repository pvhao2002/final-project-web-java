package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Category;

import java.util.List;


public class CategoryDAO extends AbstractDAO<Category> implements GenericDAO<Category> {

    @Override
    public Category create(Category category) {
        return super.create(category);
    }

    @Override
    public Category update(Category category) {return super.update(category);}

    @Override
    public void delete(Object categoryId) {
        super.delete(Category.class, categoryId);
    }

    public List<Category> getAll() {
        return super.findWithNamedQuery("Category.getAll");
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("Category.countAll");
    }

    @Override
    public Category find(Object categoryId) {
        return super.find(Category.class, categoryId);
    }

}
