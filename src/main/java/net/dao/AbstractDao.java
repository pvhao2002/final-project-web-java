/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package net.dao;

import java.util.*;
import net.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.Criteria;
import org.hibernate.criterion.*;

/**
 *
 * @author haodeptrai
 * @param <T>
 */
public abstract class AbstractDao<T> {

    private final Class<T> entityClass;

    public AbstractDao(Class<T> entity) {
	this.entityClass = entity;
    }

    public void insert(T item) {
	Transaction transaction = null;
	try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
	    // start a transaction
	    transaction = session.beginTransaction();
	    // save the student object
	    session.save(item);
	    // commit transaction
	    transaction.commit();
	} catch (Exception e) {
	    if (transaction != null) {
		transaction.rollback();
	    }
	    e.printStackTrace();
	}
    }

    public void update(T item) {
	Transaction transaction = null;
	try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
	    // start a transaction
	    transaction = session.beginTransaction();
	    // save the student object
	    session.update(item);
	    // commit transaction
	    transaction.commit();
	} catch (Exception e) {
	    if (transaction != null) {
		transaction.rollback();
	    }
	    e.printStackTrace();
	}
    }

    public void delete(Integer id) {
	Transaction transaction = null;
	try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
	    // start a transaction
	    transaction = session.beginTransaction();

	    // Delete a user object
	    T entity = session.get(entityClass, id);
	    if (entity != null) {
		session.delete(entity);
		System.out.println("Delete success");
	    }

	    // commit transaction
	    transaction.commit();
	} catch (Exception e) {
	    if (transaction != null) {
		transaction.rollback();
	    }
	    e.printStackTrace();
	}
    }

    public T getItem(Integer id) {
	Transaction transaction = null;
	T entity = null;
	try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
	    // start a transaction
	    transaction = session.beginTransaction();
	    // get an user object
	    entity = session.load(entityClass, id);
	    // commit transaction
	    transaction.commit();
	} catch (Exception e) {
	    if (transaction != null) {
		transaction.rollback();
	    }
	    e.printStackTrace();
	}
	return entity;
    }

    @SuppressWarnings("unchecked")
    public List<T> findAll() {
	Transaction transaction = null;
	List<T> list = null;
	try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
	    // start a transaction
	    transaction = session.beginTransaction();
	    // get an user object
	    @SuppressWarnings("deprecation")
	    Criteria cr = session.createCriteria(entityClass);
	    list = cr.list();

	    // commit transaction
	    transaction.commit();
	} catch (Exception e) {
	    if (transaction != null) {
		transaction.rollback();
	    }
	    e.printStackTrace();
	}
	return list;
    }

    @SuppressWarnings("unchecked")
    public Long countAll() {
	Transaction transaction = null;
	Long count = null;
	try ( Session session = HibernateUtil.getSessionFactory().openSession()) {
	    // start a transaction
	    transaction = session.beginTransaction();
	    // get an user object
	    @SuppressWarnings("deprecation")
	    Criteria cr = session.createCriteria(entityClass);
	    cr.setProjection(Projections.rowCount());
	    count = (Long) cr.list().get(0);
	    transaction.commit();
	} catch (Exception e) {
	    if (transaction != null) {
		transaction.rollback();
	    }
	    e.printStackTrace();
	}
	return count;
    }
}
