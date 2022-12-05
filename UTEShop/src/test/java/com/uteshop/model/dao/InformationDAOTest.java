package com.uteshop.model.dao;

import com.uteshop.model.entity.Category;
import com.uteshop.model.entity.Information;
import com.uteshop.model.entity.Product;
import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class InformationDAOTest {

    private static InformationDAO informationDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        informationDAO = new InformationDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
//        categoryDAO.close();
    }

    @Test
    void testCreateCategory() {
        InformationDAO information = new InformationDAO();
        Product product = information.getProductById(0);

        System.out.println(product.getProductName() + " - " + product.getProductName());
    }
}