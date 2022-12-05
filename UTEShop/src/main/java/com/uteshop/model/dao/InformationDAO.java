package com.uteshop.model.dao;

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

    public Product getProductById(int infoId) {
        return super.findWithNamedQuery1("Information.getProductById", "infoId", infoId);
    }

    public Information getInfoById(int infoId) {
        return super.findWithNamedQuery2("Information.test", "infoId", infoId);
    }
}
