package com.uteshop.model.dao;

import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Product;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class ProductDAOTest {

    private static ProductDAO productDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        productDAO = new ProductDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
        productDAO.close();
    }

    @Test
    void testCreateProduct() throws ParseException, IOException {
        Product newProduct = new Product();

        newProduct.setProductName("Effective Java (2nd Edition)");
        newProduct.setDescription("New coverage of generics, enums, annotations, autoboxing");
        newProduct.setPrice(1500000L);
        newProduct.setImage("../ProductStoreWebsite/products/Effective Java.jpg");

        DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        Date releaseDate = dateFormat.parse("05/28/2008");
        newProduct.setReleaseDate(releaseDate);

        Product createdProduct = productDAO.create(newProduct);

        Assertions.assertTrue(createdProduct.getProductId() > 0);
    }

//    @Test
//    void testDeleteProductFail() {
//        Integer productId = 34;
//        productDAO.delete(productId);
//    }

//    @Test
//    void testListAll() {
//        List<Product> listProduct = productDAO.listByCategory(2);
//        for (Product product : listProduct) {
//            System.out.println(product.getProductName() + " - " + product.getProductName());
//        }
//        Assertions.assertFalse(listProduct.isEmpty());
//    }

//    @Test
//    void number() {
//        int a = productDAO.getNumberPage();
//        System.out.println(a);
//    }

//    @Test
//    public void testSearchProductInAuthor() {
//        List<Product> listProduct = productDAO.searchHeader("oppo");
//        listProduct.forEach(p -> System.out.println(p.getProductName()));
//
//        Assertions.assertEquals(2, listProduct.size());
//    }

//    @Test
//    public void testdiscountProduct() {
//        String from ="2015-01-01";
//        String to ="2018-01-01";
//        Date date1 = null;
//        try {
//            date1 = new SimpleDateFormat("yyyy-MM-dd").parse(from);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        Date date2 = null;
//        try {
//            date2 = new SimpleDateFormat("yyyy-MM-dd").parse(to);
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
//        List<Product> listProduct = productDAO.listDiscountProducts(date1, date2, 3000000, 8000000);
//        listProduct.forEach(p -> System.out.println(p.getProductName()));
//    }

    @Test
    public void testrandomProduct() {
        List<Product> listProduct = productDAO.randomProduct();
        listProduct.forEach(p -> System.out.println(p.getProductName()));
    }


}