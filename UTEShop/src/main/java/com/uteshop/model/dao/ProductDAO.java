package com.uteshop.model.dao;

import com.uteshop.model.entity.Product;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;

public class ProductDAO extends AbstractDAO<Product> implements GenericDAO<Product> {
    
    public Product detailProductById(Integer productId) {
        Transaction transaction = null;
	Product product = null;
	try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            product = session.get(Product.class, productId);
            transaction.commit();
	} catch (Exception e) {
            if (transaction != null) {
		transaction.rollback();
            }
            e.printStackTrace();
	}
        
	return product;
    }

    @Override
    public Product create(Product product) {return super.create(product);}

    @Override
    public Product update(Product product) {return super.update(product);}

    @Override
    public int count() {return super.countWithNamedQuery("Product.countAll");}
    public int getNumberPage(){
        int total = count();
        int countPage = 0;
        countPage = total / 12;
        if(total % 12 != 0){
            countPage++;
        }
        return countPage;
    }
    @Override
    public void delete(Object productId) {super.delete(Product.class, productId);}

    public List<Product> getAllProduct(int indexPage) {
        return super.findWithNamedQuery("Product.getAll", indexPage, 12);
    }

    public List<Product> listCheapProducts() {
        return super.findWithNamedQuery("Product.listCheapProducts", 3);
    }

    public List<Product> listNewProducts() {
        return super.findWithNamedQuery("Product.listNewProducts", 3);
    }
    public List<Product> listOldProducts() {
        return super.findWithNamedQuery("Product.listOldProducts", 3);
    }

    public List<Product> listDiscountProducts(Date from1, Date to1, long from2, long to2) {
        return super.findWithNamedQuery("Product.listDiscountProducts", "from1", from1, "to1", to1, "from2", from2, "to2", to2);
    }

    public List<Product> getProductsByPrice(long from, long to) {
        return super.findWithNamedQuery("Product.getProductsByPrice", "from", from, "to", to);
    }
    public List<Product> listByCategory(int categoryId) {
        return super.findWithNamedQuery("Product.findByCategory", "categoryId", categoryId);
    }

    public List<Product> listByBrand(int brandId) {
        return super.findWithNamedQuery("Product.findByBrand", "brandId", brandId);
    }

    public List<Product> searchHeader(String keyword) {
        return super.findWithNamedQuery("Product.searchHeader", "keyword", keyword);
    }
    public List<Product> search(String keyword) {
        return super.findWithNamedQuery("Product.search", "keyword", keyword);
    }

    public List<Product> sortByPriceDesc(int indexPage) {
        return super.findWithNamedQuery("Product.sortByPriceDesc", indexPage, 12);
    }

    public List<Product> sortByPriceAsc(int indexPage) {
        return super.findWithNamedQuery("Product.sortByPriceAsc", indexPage, 12);
    }

    public List<Product> sortByNameDesc(int indexPage) {
        return super.findWithNamedQuery("Product.sortByNameDesc", indexPage, 12);
    }

    public List<Product> sortByNameAsc(int indexPage) {
        return super.findWithNamedQuery("Product.sortByNameAsc", indexPage, 12);
    }
    public List<Product> randomProduct() {
        return super.findWithNamedQuery("Product.randomProduct", 8);
    }

    public List<Product> searchByCheck(int[] cid) {
        String sql = "SELECT p FROM Product p";
        if (cid != null) {
            sql += " WHERE p.brandId in(";
            for (int i = 0; i < cid.length; i++) {
                sql += cid[i] + ",";
            }
            if (sql.endsWith(",")) {
                sql = sql.substring(0, sql.length() - 1);
            }
            sql += ")";
        }
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("phoneWeb");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        Query query = entityManager.createQuery(sql);
        List<Product> result = query.getResultList();
        entityManager.close();
        return result;
    }

    Product get(Integer productId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
