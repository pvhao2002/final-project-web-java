package com.uteshop.model.dao;

import com.uteshop.model.entity.Contact;
import com.uteshop.model.entity.Role;
import org.junit.jupiter.api.*;

import javax.servlet.http.HttpSession;
import java.util.Random;
import  javax.servlet.http.HttpSession;

class ContactDAOTest {
    private static ContactDAO contactDAO;

    @BeforeAll
    static void setUpBeforeClass() {
        contactDAO = new ContactDAO();
    }

    @AfterAll
    static void tearDownAfterClass() {
        contactDAO.close();
    }

//    @Test
//    void testCreateConatact() {
//        Contact contact = new Contact();
//        contact.setEmail("tranquoctuantqd2002@gmail.com");
//        contact.setSubject("Chất lượng");
//        contact.setPhoneNumber("0337981963");
//        contact.setMessage("Chất lượng sản phẩm tốt");
//        contact = contactDAO.create(contact);
//
//        Assertions.assertTrue(contact.getId() > 0);
//    }
}