package com.uteshop.model.dao;

import com.uteshop.model.entity.Brand;
import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Information;
import com.uteshop.model.entity.Product;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;

public class InformationDAO extends AbstractDAO<Information> implements GenericDAO<Information>{

    @Override
    public Information create(Information information) {
        return super.create(information);
    }

    @Override
    public void delete(Object infoId) {
        super.delete(Information.class, infoId);
    }

    @Override
    public Information update(Information information) {return super.update(information);}

    @Override
    public int count() {
        return super.countWithNamedQuery("Information.countAll");
    }

    @Override
    public Information find(Object informationId) {
        return super.find(Information.class, informationId);
    }

    public List<Information> getAll() {
        return super.findWithNamedQuery("Information.getAll");
    }
}
