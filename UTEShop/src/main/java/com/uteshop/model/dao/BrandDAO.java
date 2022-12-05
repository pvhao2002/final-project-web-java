package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Product;

import java.util.List;

public class BrandDAO extends AbstractDAO<Brand> implements GenericDAO<Brand>{

    @Override
    public Brand create(Brand brand) {
        return super.create(brand);
    }

    @Override
    public Brand update(Brand brand) {return super.update(brand);}

    @Override
    public void delete(Object brandId) {
        super.delete(Brand.class, brandId);
    }

    @Override
    public int count() {
        return super.countWithNamedQuery("Brand.countAll");
    }

    public List<Brand> getAll() {
        return super.findWithNamedQuery("Brand.getAll");
    }
}
