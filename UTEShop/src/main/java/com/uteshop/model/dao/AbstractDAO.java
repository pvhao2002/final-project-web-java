package com.uteshop.model.dao;

import com.uteshop.model.entity.Information;
import com.uteshop.model.entity.Product;
import com.uteshop.model.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AbstractDAO<T> {
    private static final EntityManagerFactory entityManagerFactory;
    StandardServiceRegistry ssr =new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();

    static {
        entityManagerFactory = Persistence.createEntityManagerFactory("phoneWeb");
    }

    public AbstractDAO(){
    }

    public T create(T entity) {
        Metadata meta = new MetadataSources(ssr).getMetadataBuilder().build();
        SessionFactory factory = meta.getSessionFactoryBuilder().build();
        Session session = factory.openSession();
        Transaction transaction = session.beginTransaction();
        session.persist(entity);
        transaction.commit();
        session.close();

        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.flush();
        entityManager.refresh(entity);
        entityManager.getTransaction().commit();
        entityManager.close();
        return entity;
    }

    public T update(T entity) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        entity = entityManager.merge(entity);
        entityManager.getTransaction().commit();
        entityManager.close();
        return entity;
    }

    public void delete(Class<T> type, Object id) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        entityManager.getTransaction().begin();
        Object reference = entityManager.getReference(type, id);
        entityManager.remove(reference);
        entityManager.getTransaction().commit();
        entityManager.close();
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName, int maxResult) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setMaxResults(maxResult);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName, int firstResult, int maxResult) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setFirstResult(firstResult);
        query.setMaxResults(maxResult);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName, String paramName1, Object paramValue1, String paramName2, Object paramValue2) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setParameter(paramName1, paramValue1);
        query.setParameter(paramName2, paramValue2);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName, String paramName1, Object paramValue1, String paramName2, Object paramValue2, String paramName3, Object paramValue3) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setParameter(paramName1, paramValue1);
        query.setParameter(paramName2, paramValue2);
        query.setParameter(paramName3, paramValue3);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName, String paramName1, Object paramValue1, String paramName2, Object paramValue2, String paramName3, Object paramValue3, String paramName4, Object paramValue4) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setParameter(paramName1, paramValue1);
        query.setParameter(paramName2, paramValue2);
        query.setParameter(paramName3, paramValue3);
        query.setParameter(paramName4, paramValue4);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public List<T> findWithNamedQuery(String queryName, String paramName, Object paramValue) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setParameter(paramName, paramValue);
        List<T> result = query.getResultList();
        entityManager.close();
        return result;
    }

    public Product findWithNamedQuery1(String queryName, String paramName, Object paramValue) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setParameter(paramName, paramValue);
        Product result = (Product) query.getSingleResult();
        entityManager.close();
        return result;
    }

    public Information findWithNamedQuery2(String queryName, String paramName, Object paramValue) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        query.setParameter(paramName, paramValue);
        Information result = (Information) query.getSingleResult();
        entityManager.close();
        return result;
    }

    @SuppressWarnings("unchecked")
    public User findWithNamedQuery(String queryName, Map<String, Object> parameters) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        Set<Entry<String, Object>> setParameters = parameters.entrySet();
        for (Entry<String, Object> entry : setParameters) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        User result = (User) query.getResultList();
        entityManager.close();
        return result;
    }

    public int countWithNamedQuery(String queryName) {
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createNamedQuery(queryName);
        int result = Integer.parseInt(query.getSingleResult().toString());
        entityManager.close();
        return result;
    }

    public void close() {
        if (entityManagerFactory != null) {
            entityManagerFactory.close();
        }
    }
    
}
